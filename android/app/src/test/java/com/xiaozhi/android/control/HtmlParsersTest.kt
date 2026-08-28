package com.xiaozhi.android.control

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 搜索/视频解析器单元测试（JVM 纯逻辑，无 Android 依赖）。
 * 覆盖本次修复的两个核心解析路径：
 * - 必应中国搜索结果解析（新增的国内可达主搜索源）
 * - B 站视频搜索结果解析（含 bvid 提取，供视频播放界面使用）
 */
class HtmlParsersTest {

    // ==================== 必应搜索解析 ====================

    @Test
    fun `必应正常结果解析出标题和摘要`() {
        val html = """
            <html><body><ol id="b_results">
            <li class="b_algo"><h2><a href="https://example.com/1">人工智能的发展历史</a></h2>
                <div class="b_caption"><p>人工智能是计算机科学的一个分支，它企图了解智能的实质。</p></div></li>
            <li class="b_algo"><h2><a href="https://example.com/2">机器学习入门教程</a></h2>
                <div class="b_caption"><p>机器学习是人工智能的核心研究领域之一。</p></div></li>
            </ol></body></html>
        """.trimIndent()

        val result = HtmlParsers.parseBingResults(html)
        assertTrue("应包含第一条标题", result.contains("人工智能的发展历史"))
        assertTrue("应包含第一条摘要", result.contains("人工智能是计算机科学"))
        assertTrue("应包含第二条标题", result.contains("机器学习入门教程"))
    }

    @Test
    fun `必应无结果返回空串`() {
        val html = "<html><body><div>没有匹配的结果</div></body></html>"
        assertEquals("", HtmlParsers.parseBingResults(html))
    }

    @Test
    fun `必应空HTML返回空串`() {
        assertEquals("", HtmlParsers.parseBingResults(""))
    }

    @Test
    fun `必应短标题被过滤`() {
        // 标题 < 4 字符的条目应被跳过（垃圾结果过滤）
        val html = """
            <html><body><ol>
            <li class="b_algo"><h2><a href="#">ab</a></h2><div class="b_caption"><p>摘要内容</p></div></li>
            <li class="b_algo"><h2><a href="#">正常长度标题</a></h2><div class="b_caption"><p>正常摘要</p></div></li>
            </ol></body></html>
        """.trimIndent()
        val result = HtmlParsers.parseBingResults(html)
        assertTrue("短标题应被过滤", !result.contains("ab："))
        assertTrue("正常标题保留", result.contains("正常长度标题"))
    }

    @Test
    fun `必应超过5条只取前5条`() {
        val items = (1..8).joinToString("") { i ->
            """<li class="b_algo"><h2><a href="#">搜索结果标题第${i}条</a></h2></li>"""
        }
        val html = "<html><body><ol>$items</ol></body></html>"
        val result = HtmlParsers.parseBingResults(html)
        assertTrue("第1条在", result.contains("第1条"))
        assertTrue("第5条在", result.contains("第5条"))
        assertTrue("第6条应被截断", !result.contains("第6条"))
    }

    // ==================== B 站视频解析 ====================

    @Test
    fun `B站正常结果解析出标题UP主和bvid`() {
        // 模拟 B 站搜索 API 返回结构（data.result 数组）
        val body = """
            {"code":0,"message":"ok","data":{"result":[
            {"title":"三体动画全集","author":"艺画开天","bvid":"BV1xx411c7mD","play":12000000},
            {"title":"<em class=\"keyword\">流浪地球</em>解说","author":"电影笔记","bvid":"BV2yy411d8nE","play":5000000}
            ]}}
        """.trimIndent()

        val items = HtmlParsers.parseBilibiliResults(body)
        assertEquals(2, items.size)
        assertEquals("三体动画全集", items[0].title)
        assertEquals("艺画开天", items[0].author)
        assertEquals("BV1xx411c7mD", items[0].bvid)
        // <em> 高亮标签应被清除
        assertEquals("流浪地球解说", items[1].title)
        assertEquals("BV2yy411d8nE", items[1].bvid)
    }

    @Test
    fun `B站无bvid条目被过滤`() {
        val body = """
            {"data":{"result":[
            {"title":"有bvid的视频","author":"UP1","bvid":"BV1ab411c7mD"},
            {"title":"没有bvid的视频","author":"UP2"}
            ]}}
        """.trimIndent()
        val items = HtmlParsers.parseBilibiliResults(body)
        assertEquals(1, items.size)
        assertEquals("有bvid的视频", items[0].title)
    }

    @Test
    fun `B站空返回空列表`() {
        assertTrue(HtmlParsers.parseBilibiliResults("").isEmpty())
        assertTrue(HtmlParsers.parseBilibiliResults("""{"code":-400,"message":"error"}""").isEmpty())
    }

    @Test
    fun `B站超过5条只取前5条`() {
        val results = (1..8).joinToString(",") { i ->
            """{"title":"视频标题${i}","author":"UP${i}","bvid":"BV${i}xxxx411c7mD"}"""
        }
        val body = """{"data":{"result":[$results]}}"""
        val items = HtmlParsers.parseBilibiliResults(body)
        assertEquals(5, items.size)
        assertEquals("视频标题1", items[0].title)
        assertEquals("视频标题5", items[4].title)
    }

    @Test
    fun `B站标题内引号转义正确还原`() {
        val body = """
            {"data":{"result":[
            {"title":"所谓的\"绝绝子\"是什么意思","author":"科普君","bvid":"BV1qQ4y1B7mE"}
            ]}}
        """.trimIndent()
        val items = HtmlParsers.parseBilibiliResults(body)
        assertEquals(1, items.size)
        assertTrue("转义引号应还原", items[0].title.contains("\"绝绝子\""))
    }
}
