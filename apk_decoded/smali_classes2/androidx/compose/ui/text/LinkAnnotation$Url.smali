.class public final Landroidx/compose/ui/text/LinkAnnotation$Url;
.super Landroidx/compose/ui/text/LinkAnnotation;
.source "LinkAnnotation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/LinkAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Url"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0003H\u0016R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/ui/text/LinkAnnotation$Url;",
        "Landroidx/compose/ui/text/LinkAnnotation;",
        "url",
        "",
        "styles",
        "Landroidx/compose/ui/text/TextLinkStyles;",
        "linkInteractionListener",
        "Landroidx/compose/ui/text/LinkInteractionListener;",
        "(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V",
        "getLinkInteractionListener",
        "()Landroidx/compose/ui/text/LinkInteractionListener;",
        "getStyles",
        "()Landroidx/compose/ui/text/TextLinkStyles;",
        "getUrl",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

.field private final styles:Landroidx/compose/ui/text/TextLinkStyles;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/LinkAnnotation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    iput-object p1, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 39
    iput-object p3, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 36
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 45
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object v3, p1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 47
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

    return-object v0
.end method

.method public getStyles()Landroidx/compose/ui/text/TextLinkStyles;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 53
    iget-object v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLinkStyles;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;->getLinkInteractionListener()Landroidx/compose/ui/text/LinkInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkAnnotation.Url(url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
