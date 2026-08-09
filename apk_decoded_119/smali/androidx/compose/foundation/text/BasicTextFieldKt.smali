.class public final Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "BasicTextField.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTextField.kt\nandroidx/compose/foundation/text/BasicTextFieldKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,867:1\n77#2:868\n77#2:869\n77#2:870\n77#2:896\n77#2:897\n77#2:898\n1225#3,6:871\n1225#3,3:877\n1228#3,3:881\n1225#3,6:884\n1225#3,6:890\n1225#3,6:899\n1225#3,6:905\n1225#3,6:951\n1225#3,6:957\n1225#3,6:963\n1225#3,6:969\n1225#3,6:975\n1225#3,6:981\n1225#3,6:987\n1225#3,6:993\n1225#3,6:999\n1225#3,6:1005\n1225#3,6:1011\n1225#3,6:1017\n1225#3,6:1023\n1225#3,6:1029\n1225#3,6:1035\n1225#3,6:1041\n1#4:880\n71#5:911\n68#5,6:912\n74#5:946\n78#5:950\n79#6,6:918\n86#6,4:933\n90#6,2:943\n94#6:949\n368#7,9:924\n377#7:945\n378#7,2:947\n4034#8,6:937\n81#9:1047\n81#9:1048\n81#9:1049\n81#9:1050\n107#9,2:1051\n81#9:1053\n107#9,2:1054\n149#10:1056\n*S KotlinDebug\n*F\n+ 1 BasicTextField.kt\nandroidx/compose/foundation/text/BasicTextFieldKt\n*L\n240#1:868\n241#1:869\n242#1:870\n285#1:896\n286#1:897\n287#1:898\n246#1:871,6\n252#1:877,3\n252#1:881,3\n272#1:884,6\n274#1:890,6\n288#1:899,6\n304#1:905,6\n418#1:951,6\n423#1:957,6\n429#1:963,6\n442#1:969,6\n449#1:975,6\n457#1:981,6\n465#1:987,6\n472#1:993,6\n480#1:999,6\n614#1:1005,6\n620#1:1011,6\n629#1:1017,6\n633#1:1023,6\n766#1:1029,6\n803#1:1035,6\n843#1:1041,6\n343#1:911\n343#1:912,6\n343#1:946\n343#1:950\n343#1:918,6\n343#1:933,4\n343#1:943,2\n343#1:949\n343#1:924,9\n343#1:945\n343#1:947,2\n343#1:937,6\n418#1:1047\n442#1:1048\n465#1:1049\n614#1:1050\n614#1:1051,2\n629#1:1053\n629#1:1054,2\n499#1:1056\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u00db\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u001728\u0008\u0002\u0010\u0018\u001a2\u0012\u0004\u0012\u00020\u001a\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0019\u00a2\u0006\u0002\u0008 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020$2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010(\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0010*\u001a\u00f1\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u001728\u0008\u0002\u0010\u0018\u001a2\u0012\u0004\u0012\u00020\u001a\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0019\u00a2\u0006\u0002\u0008 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020$2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010(\u001a\u00020)2\u0008\u0008\u0002\u0010-\u001a\u00020\u000cH\u0001\u00a2\u0006\u0002\u0010.\u001a\u00e2\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010/\u001a\u0002002\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0006022\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u00020\u000c2\u0008\u0008\u0002\u00106\u001a\u0002072\u0008\u0008\u0002\u00108\u001a\u0002092\u0014\u0008\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0006022\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$23\u0008\u0002\u0010:\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00060\u001b\u00a2\u0006\u0002\u0008;\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u000602\u00a2\u0006\u0002\u0008;H\u0007\u00a2\u0006\u0002\u0010=\u001a\u00ee\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010/\u001a\u0002002\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0006022\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u00020\u000c2\u0008\u0008\u0002\u00106\u001a\u0002072\u0008\u0008\u0002\u0010>\u001a\u0002072\u0008\u0008\u0002\u00108\u001a\u0002092\u0014\u0008\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0006022\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020$23\u0008\u0002\u0010:\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00060\u001b\u00a2\u0006\u0002\u0008;\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u000602\u00a2\u0006\u0002\u0008;H\u0007\u00a2\u0006\u0002\u0010?\u001a\u00e2\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010/\u001a\u00020@2\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u0006022\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u00020\u000c2\u0008\u0008\u0002\u00106\u001a\u0002072\u0008\u0008\u0002\u00108\u001a\u0002092\u0014\u0008\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0006022\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$23\u0008\u0002\u0010:\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00060\u001b\u00a2\u0006\u0002\u0008;\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u000602\u00a2\u0006\u0002\u0008;H\u0007\u00a2\u0006\u0002\u0010A\u001a\u00ee\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010/\u001a\u00020@2\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u0006022\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u00020\u000c2\u0008\u0008\u0002\u00106\u001a\u0002072\u0008\u0008\u0002\u0010>\u001a\u0002072\u0008\u0008\u0002\u00108\u001a\u0002092\u0014\u0008\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0006022\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020$23\u0008\u0002\u0010:\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00060\u001b\u00a2\u0006\u0002\u0008;\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(<\u0012\u0004\u0012\u00020\u000602\u00a2\u0006\u0002\u0008;H\u0007\u00a2\u0006\u0002\u0010B\u001a\u0015\u0010C\u001a\u00020\u00062\u0006\u0010D\u001a\u00020EH\u0001\u00a2\u0006\u0002\u0010F\u001a\u0015\u0010G\u001a\u00020\u00062\u0006\u0010D\u001a\u00020EH\u0001\u00a2\u0006\u0002\u0010F\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\u00a8\u0006H\u00b2\u0006\n\u0010I\u001a\u00020JX\u008a\u0084\u0002\u00b2\u0006\n\u0010K\u001a\u00020JX\u008a\u0084\u0002\u00b2\u0006\n\u0010L\u001a\u00020JX\u008a\u0084\u0002\u00b2\u0006\n\u0010M\u001a\u000200X\u008a\u008e\u0002\u00b2\u0006\n\u0010N\u001a\u00020@X\u008a\u008e\u0002"
    }
    d2 = {
        "DefaultTextFieldDecorator",
        "Landroidx/compose/foundation/text/input/TextFieldDecorator;",
        "MinTouchTargetSizeForHandles",
        "Landroidx/compose/ui/unit/DpSize;",
        "J",
        "BasicTextField",
        "",
        "state",
        "Landroidx/compose/foundation/text/input/TextFieldState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "",
        "readOnly",
        "inputTransformation",
        "Landroidx/compose/foundation/text/input/InputTransformation;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "keyboardOptions",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "onKeyboardAction",
        "Landroidx/compose/foundation/text/input/KeyboardActionHandler;",
        "lineLimits",
        "Landroidx/compose/foundation/text/input/TextFieldLineLimits;",
        "onTextLayout",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "Lkotlin/ParameterName;",
        "name",
        "getResult",
        "Lkotlin/ExtensionFunctionType;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "outputTransformation",
        "Landroidx/compose/foundation/text/input/OutputTransformation;",
        "decorator",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V",
        "codepointTransformation",
        "Landroidx/compose/foundation/text/input/internal/CodepointTransformation;",
        "isPassword",
        "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/runtime/Composer;III)V",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "onValueChange",
        "Lkotlin/Function1;",
        "keyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "singleLine",
        "maxLines",
        "",
        "visualTransformation",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "decorationBox",
        "Landroidx/compose/runtime/Composable;",
        "innerTextField",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "minLines",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "TextFieldCursorHandle",
        "selectionState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
        "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V",
        "TextFieldSelectionHandles",
        "foundation_release",
        "cursorHandleState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;",
        "startHandleState",
        "endHandleState",
        "textFieldValueState",
        "lastTextValue"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DefaultTextFieldDecorator:Landroidx/compose/foundation/text/input/TextFieldDecorator;

.field private static final MinTouchTargetSizeForHandles:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 488
    sget-object v0, Landroidx/compose/foundation/text/BasicTextFieldKt$DefaultTextFieldDecorator$1;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$DefaultTextFieldDecorator$1;

    check-cast v0, Landroidx/compose/foundation/text/input/TextFieldDecorator;

    sput-object v0, Landroidx/compose/foundation/text/BasicTextFieldKt;->DefaultTextFieldDecorator:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    const/16 v0, 0x28

    int-to-float v0, v0

    .line 1056
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 499
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/text/BasicTextFieldKt;->MinTouchTargetSizeForHandles:J

    return-void
.end method

.method public static final BasicTextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/foundation/text/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/input/KeyboardActionHandler;",
            "Landroidx/compose/foundation/text/input/TextFieldLineLimits;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/foundation/text/input/OutputTransformation;",
            "Landroidx/compose/foundation/text/input/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v0, p13

    move/from16 v15, p16

    move/from16 v14, p17

    move/from16 v13, p18

    const v1, 0x1bfb15b1

    move-object/from16 v2, p15

    .line 188
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(BasicTextField)P(13,7,2,11,3,14,5,8,6,9,4!1,10)184@10988L21,188@11134L610:BasicTextField.kt#423gt5"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    move v6, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v15

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v6, v15

    :goto_1
    and-int/lit8 v7, v13, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v10, v15, 0x30

    if-nez v10, :cond_5

    move-object/from16 v10, p1

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x20

    goto :goto_2

    :cond_4
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v6, v11

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v10, p1

    :goto_4
    and-int/lit8 v11, v13, 0x4

    const/16 v16, 0x80

    if-eqz v11, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v4, v15, 0x180

    if-nez v4, :cond_8

    move/from16 v4, p2

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_5

    :cond_7
    move/from16 v17, v16

    :goto_5
    or-int v6, v6, v17

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v4, p2

    :goto_7
    and-int/lit8 v17, v13, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v6, v6, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v5, v15, 0xc00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v18

    goto :goto_8

    :cond_a
    move/from16 v21, v19

    :goto_8
    or-int v6, v6, v21

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v5, p3

    :goto_a
    and-int/lit8 v21, v13, 0x10

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v21, :cond_c

    or-int/lit16 v6, v6, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_e

    move-object/from16 v8, p4

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v23

    goto :goto_b

    :cond_d
    move/from16 v25, v22

    :goto_b
    or-int v6, v6, v25

    goto :goto_d

    :cond_e
    :goto_c
    move-object/from16 v8, p4

    :goto_d
    and-int/lit8 v25, v13, 0x20

    const/high16 v26, 0x30000

    if-eqz v25, :cond_f

    or-int v6, v6, v26

    move-object/from16 v9, p5

    goto :goto_f

    :cond_f
    and-int v26, v15, v26

    move-object/from16 v9, p5

    if-nez v26, :cond_11

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v27, 0x10000

    :goto_e
    or-int v6, v6, v27

    :cond_11
    :goto_f
    and-int/lit8 v27, v13, 0x40

    const/high16 v28, 0x180000

    if-eqz v27, :cond_12

    or-int v6, v6, v28

    move-object/from16 v12, p6

    goto :goto_11

    :cond_12
    and-int v28, v15, v28

    move-object/from16 v12, p6

    if-nez v28, :cond_14

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v29, 0x80000

    :goto_10
    or-int v6, v6, v29

    :cond_14
    :goto_11
    and-int/lit16 v1, v13, 0x80

    const/high16 v30, 0xc00000

    if-eqz v1, :cond_15

    or-int v6, v6, v30

    move-object/from16 v3, p7

    goto :goto_13

    :cond_15
    and-int v30, v15, v30

    move-object/from16 v3, p7

    if-nez v30, :cond_17

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v30, 0x400000

    :goto_12
    or-int v6, v6, v30

    :cond_17
    :goto_13
    and-int/lit16 v3, v13, 0x100

    const/high16 v30, 0x6000000

    if-eqz v3, :cond_18

    or-int v6, v6, v30

    move-object/from16 v4, p8

    goto :goto_15

    :cond_18
    and-int v30, v15, v30

    move-object/from16 v4, p8

    if-nez v30, :cond_1a

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_14

    :cond_19
    const/high16 v30, 0x2000000

    :goto_14
    or-int v6, v6, v30

    :cond_1a
    :goto_15
    and-int/lit16 v4, v13, 0x200

    const/high16 v30, 0x30000000

    if-eqz v4, :cond_1b

    or-int v6, v6, v30

    move-object/from16 v5, p9

    goto :goto_17

    :cond_1b
    and-int v30, v15, v30

    move-object/from16 v5, p9

    if-nez v30, :cond_1d

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_16

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_16
    or-int v6, v6, v30

    :cond_1d
    :goto_17
    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v20, v14, 0x6

    move-object/from16 v8, p10

    goto :goto_19

    :cond_1e
    and-int/lit8 v30, v14, 0x6

    move-object/from16 v8, p10

    if-nez v30, :cond_20

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v20, 0x4

    goto :goto_18

    :cond_1f
    const/16 v20, 0x2

    :goto_18
    or-int v20, v14, v20

    goto :goto_19

    :cond_20
    move/from16 v20, v14

    :goto_19
    and-int/lit16 v8, v13, 0x800

    if-eqz v8, :cond_21

    or-int/lit8 v20, v20, 0x30

    goto :goto_1b

    :cond_21
    and-int/lit8 v30, v14, 0x30

    move-object/from16 v9, p11

    if-nez v30, :cond_23

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v24, 0x20

    goto :goto_1a

    :cond_22
    const/16 v24, 0x10

    :goto_1a
    or-int v20, v20, v24

    :cond_23
    :goto_1b
    move/from16 v9, v20

    and-int/lit16 v10, v13, 0x1000

    if-eqz v10, :cond_24

    or-int/lit16 v9, v9, 0x180

    goto :goto_1c

    :cond_24
    and-int/lit16 v12, v14, 0x180

    if-nez v12, :cond_26

    move-object/from16 v12, p12

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v16, 0x100

    :cond_25
    or-int v9, v9, v16

    goto :goto_1d

    :cond_26
    :goto_1c
    move-object/from16 v12, p12

    :goto_1d
    and-int/lit16 v12, v13, 0x2000

    if-eqz v12, :cond_27

    or-int/lit16 v9, v9, 0xc00

    move/from16 v16, v12

    goto :goto_20

    :cond_27
    move/from16 v16, v12

    and-int/lit16 v12, v14, 0xc00

    if-nez v12, :cond_2a

    and-int/lit16 v12, v14, 0x1000

    if-nez v12, :cond_28

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_1e

    :cond_28
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    :goto_1e
    if-eqz v12, :cond_29

    goto :goto_1f

    :cond_29
    move/from16 v18, v19

    :goto_1f
    or-int v9, v9, v18

    :cond_2a
    :goto_20
    and-int/lit16 v12, v14, 0x6000

    if-nez v12, :cond_2d

    and-int/lit16 v12, v13, 0x4000

    if-nez v12, :cond_2b

    move-object/from16 v12, p14

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2c

    move/from16 v22, v23

    goto :goto_21

    :cond_2b
    move-object/from16 v12, p14

    :cond_2c
    :goto_21
    or-int v9, v9, v22

    goto :goto_22

    :cond_2d
    move-object/from16 v12, p14

    :goto_22
    const v18, 0x12492493

    and-int v0, v6, v18

    const v12, 0x12492492

    if-ne v0, v12, :cond_2f

    and-int/lit16 v0, v9, 0x2493

    const/16 v12, 0x2492

    if-ne v0, v12, :cond_2f

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_23

    .line 207
    :cond_2e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move/from16 v11, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v37, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    goto/16 :goto_34

    .line 188
    :cond_2f
    :goto_23
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_32

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_24

    .line 185
    :cond_30
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v13, 0x4000

    if-eqz v0, :cond_31

    const v0, -0xe001

    and-int/2addr v9, v0

    :cond_31
    move-object/from16 v0, p1

    move/from16 v11, p2

    move/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v12, p11

    move-object/from16 v37, p12

    move-object/from16 v38, p13

    move-object/from16 v39, p14

    move v13, v9

    move-object/from16 v9, p9

    goto/16 :goto_33

    :cond_32
    :goto_24
    if-eqz v7, :cond_33

    .line 172
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_25

    :cond_33
    move-object/from16 v0, p1

    :goto_25
    const/4 v7, 0x1

    if-eqz v11, :cond_34

    move v11, v7

    goto :goto_26

    :cond_34
    move/from16 v11, p2

    :goto_26
    const/4 v12, 0x0

    if-eqz v17, :cond_35

    move/from16 v17, v12

    goto :goto_27

    :cond_35
    move/from16 v17, p3

    :goto_27
    const/16 v18, 0x0

    if-eqz v21, :cond_36

    move-object/from16 v19, v18

    goto :goto_28

    :cond_36
    move-object/from16 v19, p4

    :goto_28
    if-eqz v25, :cond_37

    .line 176
    sget-object v20, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    goto :goto_29

    :cond_37
    move-object/from16 v20, p5

    :goto_29
    if-eqz v27, :cond_38

    .line 177
    sget-object v21, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v21

    goto :goto_2a

    :cond_38
    move-object/from16 v21, p6

    :goto_2a
    if-eqz v1, :cond_39

    move-object/from16 v1, v18

    goto :goto_2b

    :cond_39
    move-object/from16 v1, p7

    :goto_2b
    if-eqz v3, :cond_3a

    .line 179
    sget-object v3, Landroidx/compose/foundation/text/input/TextFieldLineLimits;->Companion:Landroidx/compose/foundation/text/input/TextFieldLineLimits$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextFieldLineLimits$Companion;->getDefault()Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    move-result-object v3

    goto :goto_2c

    :cond_3a
    move-object/from16 v3, p8

    :goto_2c
    if-eqz v4, :cond_3b

    move-object/from16 v4, v18

    goto :goto_2d

    :cond_3b
    move-object/from16 v4, p9

    :goto_2d
    if-eqz v5, :cond_3c

    move-object/from16 v5, v18

    goto :goto_2e

    :cond_3c
    move-object/from16 v5, p10

    :goto_2e
    if-eqz v8, :cond_3d

    .line 182
    sget-object v8, Landroidx/compose/foundation/text/BasicTextFieldDefaults;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldDefaults;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/BasicTextFieldDefaults;->getCursorBrush()Landroidx/compose/ui/graphics/SolidColor;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/Brush;

    goto :goto_2f

    :cond_3d
    move-object/from16 v8, p11

    :goto_2f
    if-eqz v10, :cond_3e

    move-object/from16 v10, v18

    goto :goto_30

    :cond_3e
    move-object/from16 v10, p12

    :goto_30
    if-eqz v16, :cond_3f

    goto :goto_31

    :cond_3f
    move-object/from16 v18, p13

    :goto_31
    move-object/from16 p1, v0

    and-int/lit16 v0, v13, 0x4000

    if-eqz v0, :cond_40

    .line 185
    invoke-static {v12, v2, v12, v7}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v0

    const v7, -0xe001

    and-int/2addr v9, v7

    move-object/from16 v39, v0

    move-object v7, v1

    move-object v12, v8

    move v13, v9

    move-object/from16 v37, v10

    move/from16 v1, v17

    move-object/from16 v38, v18

    move-object/from16 v0, p1

    goto :goto_32

    :cond_40
    move-object/from16 v0, p1

    move-object/from16 v39, p14

    move-object v7, v1

    move-object v12, v8

    move v13, v9

    move-object/from16 v37, v10

    move/from16 v1, v17

    move-object/from16 v38, v18

    :goto_32
    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    :goto_33
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_41

    const-string/jumbo v14, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:187)"

    const v15, 0x1bfb15b1

    .line 188
    invoke-static {v15, v6, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_41
    const v14, 0x7ffffffe

    and-int v34, v6, v14

    and-int/lit8 v6, v13, 0xe

    or-int/lit16 v6, v6, 0x180

    and-int/lit8 v14, v13, 0x70

    or-int/2addr v6, v14

    shl-int/lit8 v13, v13, 0x3

    and-int/lit16 v14, v13, 0x1c00

    or-int/2addr v6, v14

    const v14, 0xe000

    and-int/2addr v14, v13

    or-int/2addr v6, v14

    const/high16 v14, 0x70000

    and-int/2addr v13, v14

    or-int v35, v6, v13

    const/high16 v36, 0x10000

    const/16 v28, 0x0

    const/16 v32, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v0

    move/from16 v18, v11

    move/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v12

    move-object/from16 v29, v37

    move-object/from16 v30, v38

    move-object/from16 v31, v39

    move-object/from16 v33, v2

    .line 189
    invoke-static/range {v16 .. v36}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_42
    move-object v6, v4

    move-object v13, v12

    move-object/from16 v14, v38

    move-object/from16 v15, v39

    move v4, v1

    move-object v12, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v0

    .line 207
    :goto_34
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_43

    new-instance v19, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v40, v2

    move-object v2, v3

    move v3, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v37

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$1;-><init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v40

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_43
    return-void
.end method

.method public static final BasicTextField(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/runtime/Composer;III)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/TextFieldState;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/foundation/text/input/InputTransformation;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/input/KeyboardActionHandler;",
            "Landroidx/compose/foundation/text/input/TextFieldLineLimits;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/foundation/text/input/internal/CodepointTransformation;",
            "Landroidx/compose/foundation/text/input/OutputTransformation;",
            "Landroidx/compose/foundation/text/input/TextFieldDecorator;",
            "Landroidx/compose/foundation/ScrollState;",
            "Z",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p14

    move/from16 v15, p18

    move/from16 v14, p19

    move/from16 v13, p20

    const v2, 0x398702f5

    move-object/from16 v3, p17

    .line 239
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(BasicTextField)P(15,9,3,13,4,16,7,10,8,11,5,1!1,12!1,14)234@12943L21,239@13149L7,240@13204L7,241@13249L7,247@13619L25,248@13693L25,251@13806L797,271@14801L48,273@14885L357,284@15295L7,285@15359L7,286@15413L7,287@15436L520,287@15425L531,303@16004L83,303@15962L125,342@17504L3096:BasicTextField.kt#423gt5"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v15, 0x30

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v9, p1

    :goto_4
    and-int/lit8 v10, v13, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v7, v15, 0x180

    if-nez v7, :cond_8

    move/from16 v7, p2

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_5

    :cond_7
    const/16 v16, 0x80

    :goto_5
    or-int v3, v3, v16

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v7, p2

    :goto_7
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v11, v15, 0xc00

    if-nez v11, :cond_b

    move/from16 v11, p3

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x800

    goto :goto_8

    :cond_a
    move/from16 v20, v17

    :goto_8
    or-int v3, v3, v20

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v11, p3

    :goto_a
    and-int/lit8 v20, v13, 0x10

    if-eqz v20, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v5, v15, 0x6000

    if-nez v5, :cond_e

    move-object/from16 v5, p4

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x4000

    goto :goto_b

    :cond_d
    const/16 v22, 0x2000

    :goto_b
    or-int v3, v3, v22

    goto :goto_d

    :cond_e
    :goto_c
    move-object/from16 v5, p4

    :goto_d
    and-int/lit8 v22, v13, 0x20

    const/high16 v23, 0x30000

    if-eqz v22, :cond_f

    or-int v3, v3, v23

    move-object/from16 v8, p5

    goto :goto_f

    :cond_f
    and-int v23, v15, v23

    move-object/from16 v8, p5

    if-nez v23, :cond_11

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v24, 0x10000

    :goto_e
    or-int v3, v3, v24

    :cond_11
    :goto_f
    and-int/lit8 v24, v13, 0x40

    const/high16 v25, 0x180000

    if-eqz v24, :cond_12

    or-int v3, v3, v25

    move-object/from16 v12, p6

    goto :goto_11

    :cond_12
    and-int v26, v15, v25

    move-object/from16 v12, p6

    if-nez v26, :cond_14

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v27, 0x80000

    :goto_10
    or-int v3, v3, v27

    :cond_14
    :goto_11
    and-int/lit16 v4, v13, 0x80

    const/high16 v28, 0xc00000

    if-eqz v4, :cond_15

    or-int v3, v3, v28

    move-object/from16 v5, p7

    goto :goto_13

    :cond_15
    and-int v28, v15, v28

    move-object/from16 v5, p7

    if-nez v28, :cond_17

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v28, 0x400000

    :goto_12
    or-int v3, v3, v28

    :cond_17
    :goto_13
    and-int/lit16 v5, v13, 0x100

    const/high16 v28, 0x6000000

    if-eqz v5, :cond_18

    or-int v3, v3, v28

    move-object/from16 v7, p8

    goto :goto_15

    :cond_18
    and-int v28, v15, v28

    move-object/from16 v7, p8

    if-nez v28, :cond_1a

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x4000000

    goto :goto_14

    :cond_19
    const/high16 v28, 0x2000000

    :goto_14
    or-int v3, v3, v28

    :cond_1a
    :goto_15
    and-int/lit16 v7, v13, 0x200

    const/high16 v28, 0x30000000

    if-eqz v7, :cond_1b

    or-int v3, v3, v28

    move-object/from16 v8, p9

    goto :goto_17

    :cond_1b
    and-int v28, v15, v28

    move-object/from16 v8, p9

    if-nez v28, :cond_1d

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_16

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_16
    or-int v3, v3, v28

    :cond_1d
    :goto_17
    and-int/lit16 v8, v13, 0x400

    if-eqz v8, :cond_1e

    or-int/lit8 v28, v14, 0x6

    move-object/from16 v9, p10

    goto :goto_19

    :cond_1e
    and-int/lit8 v28, v14, 0x6

    move-object/from16 v9, p10

    if-nez v28, :cond_20

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v28, 0x4

    goto :goto_18

    :cond_1f
    const/16 v28, 0x2

    :goto_18
    or-int v28, v14, v28

    goto :goto_19

    :cond_20
    move/from16 v28, v14

    :goto_19
    and-int/lit16 v9, v13, 0x800

    if-eqz v9, :cond_21

    or-int/lit8 v28, v28, 0x30

    goto :goto_1b

    :cond_21
    and-int/lit8 v29, v14, 0x30

    move-object/from16 v11, p11

    if-nez v29, :cond_23

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    const/16 v18, 0x20

    goto :goto_1a

    :cond_22
    const/16 v18, 0x10

    :goto_1a
    or-int v28, v28, v18

    :cond_23
    :goto_1b
    move/from16 v11, v28

    and-int/lit16 v12, v13, 0x1000

    if-eqz v12, :cond_24

    or-int/lit16 v11, v11, 0x180

    goto :goto_1d

    :cond_24
    and-int/lit16 v1, v14, 0x180

    if-nez v1, :cond_26

    move-object/from16 v1, p12

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    const/16 v19, 0x100

    goto :goto_1c

    :cond_25
    const/16 v19, 0x80

    :goto_1c
    or-int v11, v11, v19

    goto :goto_1e

    :cond_26
    :goto_1d
    move-object/from16 v1, p12

    :goto_1e
    and-int/lit16 v1, v13, 0x2000

    if-eqz v1, :cond_27

    or-int/lit16 v11, v11, 0xc00

    move/from16 v18, v1

    goto :goto_1f

    :cond_27
    move/from16 v18, v1

    and-int/lit16 v1, v14, 0xc00

    if-nez v1, :cond_29

    move-object/from16 v1, p13

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    const/16 v17, 0x800

    :cond_28
    or-int v11, v11, v17

    goto :goto_20

    :cond_29
    :goto_1f
    move-object/from16 v1, p13

    :goto_20
    and-int/lit16 v1, v13, 0x4000

    const v17, 0x8000

    if-eqz v1, :cond_2a

    or-int/lit16 v11, v11, 0x6000

    move/from16 v19, v1

    goto :goto_23

    :cond_2a
    move/from16 v19, v1

    and-int/lit16 v1, v14, 0x6000

    if-nez v1, :cond_2d

    and-int v1, v14, v17

    if-nez v1, :cond_2b

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_21

    :cond_2b
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_21
    if-eqz v1, :cond_2c

    const/16 v1, 0x4000

    goto :goto_22

    :cond_2c
    const/16 v1, 0x2000

    :goto_22
    or-int/2addr v11, v1

    :cond_2d
    :goto_23
    const/high16 v1, 0x30000

    and-int/2addr v1, v14

    if-nez v1, :cond_30

    and-int v1, v13, v17

    if-nez v1, :cond_2e

    move-object/from16 v1, p15

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2f

    const/high16 v28, 0x20000

    goto :goto_24

    :cond_2e
    move-object/from16 v1, p15

    :cond_2f
    const/high16 v28, 0x10000

    :goto_24
    or-int v11, v11, v28

    goto :goto_25

    :cond_30
    move-object/from16 v1, p15

    :goto_25
    const/high16 v28, 0x10000

    and-int v28, v13, v28

    if-eqz v28, :cond_31

    or-int v11, v11, v25

    move/from16 v0, p16

    goto :goto_27

    :cond_31
    and-int v25, v14, v25

    move/from16 v0, p16

    if-nez v25, :cond_33

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_32

    const/high16 v25, 0x100000

    goto :goto_26

    :cond_32
    const/high16 v25, 0x80000

    :goto_26
    or-int v11, v11, v25

    :cond_33
    :goto_27
    const v25, 0x12492493

    and-int v0, v3, v25

    const v1, 0x12492492

    if-ne v0, v1, :cond_35

    const v0, 0x92493

    and-int/2addr v0, v11

    const v1, 0x92492

    if-ne v0, v1, :cond_35

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_28

    .line 412
    :cond_34
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v20, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    goto/16 :goto_4b

    .line 239
    :cond_35
    :goto_28
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_29

    .line 236
    :cond_36
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int v0, v13, v17

    if-eqz v0, :cond_37

    const v0, -0x70001

    and-int/2addr v11, v0

    :cond_37
    move-object/from16 v0, p1

    move/from16 v6, p2

    move/from16 v10, p3

    move-object/from16 v4, p4

    move-object/from16 v20, p5

    move-object/from16 v22, p6

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v12, p12

    move-object/from16 v1, p13

    move-object/from16 v19, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move v13, v11

    move-object/from16 v11, p11

    goto/16 :goto_3a

    :cond_38
    :goto_29
    if-eqz v6, :cond_39

    .line 221
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_2a

    :cond_39
    move-object/from16 v0, p1

    :goto_2a
    if-eqz v10, :cond_3a

    move v6, v1

    goto :goto_2b

    :cond_3a
    move/from16 v6, p2

    :goto_2b
    if-eqz v16, :cond_3b

    const/4 v10, 0x0

    goto :goto_2c

    :cond_3b
    move/from16 v10, p3

    :goto_2c
    if-eqz v20, :cond_3c

    const/16 v16, 0x0

    goto :goto_2d

    :cond_3c
    move-object/from16 v16, p4

    :goto_2d
    if-eqz v22, :cond_3d

    .line 225
    sget-object v20, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    goto :goto_2e

    :cond_3d
    move-object/from16 v20, p5

    :goto_2e
    if-eqz v24, :cond_3e

    .line 226
    sget-object v22, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v22

    goto :goto_2f

    :cond_3e
    move-object/from16 v22, p6

    :goto_2f
    if-eqz v4, :cond_3f

    const/4 v4, 0x0

    goto :goto_30

    :cond_3f
    move-object/from16 v4, p7

    :goto_30
    if-eqz v5, :cond_40

    .line 228
    sget-object v5, Landroidx/compose/foundation/text/input/TextFieldLineLimits;->Companion:Landroidx/compose/foundation/text/input/TextFieldLineLimits$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/input/TextFieldLineLimits$Companion;->getDefault()Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    move-result-object v5

    goto :goto_31

    :cond_40
    move-object/from16 v5, p8

    :goto_31
    if-eqz v7, :cond_41

    const/4 v7, 0x0

    goto :goto_32

    :cond_41
    move-object/from16 v7, p9

    :goto_32
    if-eqz v8, :cond_42

    const/4 v8, 0x0

    goto :goto_33

    :cond_42
    move-object/from16 v8, p10

    :goto_33
    if-eqz v9, :cond_43

    .line 231
    sget-object v9, Landroidx/compose/foundation/text/BasicTextFieldDefaults;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldDefaults;

    invoke-virtual {v9}, Landroidx/compose/foundation/text/BasicTextFieldDefaults;->getCursorBrush()Landroidx/compose/ui/graphics/SolidColor;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    goto :goto_34

    :cond_43
    move-object/from16 v9, p11

    :goto_34
    if-eqz v12, :cond_44

    const/4 v12, 0x0

    goto :goto_35

    :cond_44
    move-object/from16 v12, p12

    :goto_35
    if-eqz v18, :cond_45

    const/16 v18, 0x0

    goto :goto_36

    :cond_45
    move-object/from16 v18, p13

    :goto_36
    if-eqz v19, :cond_46

    const/16 v19, 0x0

    goto :goto_37

    :cond_46
    move-object/from16 v19, p14

    :goto_37
    and-int v17, v13, v17

    move-object/from16 p1, v0

    if-eqz v17, :cond_47

    const/4 v0, 0x0

    .line 235
    invoke-static {v0, v2, v0, v1}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v17

    const v0, -0x70001

    and-int/2addr v11, v0

    goto :goto_38

    :cond_47
    move-object/from16 v17, p15

    :goto_38
    move-object/from16 v0, p1

    move v13, v11

    move-object/from16 v1, v18

    if-eqz v28, :cond_48

    const/16 v18, 0x0

    goto :goto_39

    :cond_48
    move/from16 v18, p16

    :goto_39
    move-object v11, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object/from16 v4, v16

    .line 236
    :goto_3a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v24

    if-eqz v24, :cond_49

    const v14, 0x398702f5

    const-string/jumbo v15, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:238)"

    .line 239
    invoke-static {v14, v3, v13, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 240
    :cond_49
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const v15, 0x789c5f52

    move-object/from16 p12, v8

    .line 868
    const-string v8, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v2, v15, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 240
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 241
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v24

    move-object/from16 p13, v11

    move-object/from16 v11, v24

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 869
    invoke-static {v2, v15, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 241
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 242
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalWindowInfo()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v24

    move-object/from16 p14, v11

    move-object/from16 v11, v24

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 870
    invoke-static {v2, v15, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 242
    check-cast v11, Landroidx/compose/ui/platform/WindowInfo;

    .line 243
    sget-object v15, Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;->INSTANCE:Landroidx/compose/foundation/text/input/TextFieldLineLimits$SingleLine;

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v43

    .line 246
    const-string v15, "CC(remember):BasicTextField.kt#9igjgp"

    if-nez v9, :cond_4b

    move-object/from16 p15, v9

    const v9, 0x5c72b35

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "245@13454L39"

    invoke-static {v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v9, -0x4a22dd93

    invoke-static {v2, v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 871
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .line 872
    sget-object v24, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p16, v7

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v9, v7, :cond_4a

    .line 246
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    .line 874
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    :cond_4a
    check-cast v9, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    goto :goto_3b

    :cond_4b
    move-object/from16 p16, v7

    move-object/from16 p15, v9

    const v7, -0x4a22e01e

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_3b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-eqz v43, :cond_4c

    .line 247
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_3c

    :cond_4c
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_3c
    move-object/from16 v24, v7

    .line 248
    move-object v7, v9

    check-cast v7, Landroidx/compose/foundation/interaction/InteractionSource;

    move-object/from16 v45, v0

    const/4 v0, 0x0

    invoke-static {v7, v2, v0}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    .line 249
    invoke-static {v7, v2, v0}, Landroidx/compose/foundation/interaction/HoverInteractionKt;->collectIsHoveredAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 250
    invoke-interface {v11}, Landroidx/compose/ui/platform/WindowInfo;->isWindowFocused()Z

    move-result v7

    const v11, -0x4a22ae9d

    .line 252
    invoke-static {v2, v11, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v11, v3, 0xe

    move/from16 v38, v0

    const/4 v0, 0x4

    if-ne v11, v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_3d

    :cond_4d
    const/4 v0, 0x0

    :goto_3d
    and-int/lit16 v11, v13, 0x380

    move-object/from16 v27, v9

    const/16 v9, 0x100

    if-ne v11, v9, :cond_4e

    const/4 v9, 0x1

    goto :goto_3e

    :cond_4e
    const/4 v9, 0x0

    :goto_3e
    or-int/2addr v0, v9

    and-int/lit16 v9, v13, 0x1c00

    const/16 v11, 0x800

    if-ne v9, v11, :cond_4f

    const/4 v9, 0x1

    goto :goto_3f

    :cond_4f
    const/4 v9, 0x0

    :goto_3f
    or-int/2addr v0, v9

    .line 877
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_51

    .line 878
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_50

    goto :goto_40

    :cond_50
    move-object/from16 v11, p0

    goto :goto_43

    :cond_51
    :goto_40
    if-nez v12, :cond_53

    .line 261
    sget-object v0, Landroidx/compose/foundation/text/input/internal/SingleLineCodepointTransformation;->INSTANCE:Landroidx/compose/foundation/text/input/internal/SingleLineCodepointTransformation;

    if-eqz v43, :cond_52

    goto :goto_41

    :cond_52
    const/4 v0, 0x0

    :goto_41
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CodepointTransformation;

    goto :goto_42

    :cond_53
    move-object v0, v12

    .line 262
    :goto_42
    new-instance v9, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-object/from16 v11, p0

    invoke-direct {v9, v11, v4, v0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;-><init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;)V

    .line 881
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 252
    :goto_43
    move-object v0, v9

    check-cast v0, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v9, -0x4a22352a

    .line 272
    invoke-static {v2, v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v46, v1

    .line 884
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_54

    .line 885
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v1, v9, :cond_55

    .line 272
    :cond_54
    new-instance v1, Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-direct {v1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;-><init>()V

    .line 887
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 272
    :cond_55
    check-cast v1, Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v9, -0x4a222975

    .line 274
    invoke-static {v2, v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 890
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_56

    .line 891
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v11, v9, :cond_58

    .line 275
    :cond_56
    new-instance v11, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    if-eqz v37, :cond_57

    if-eqz v7, :cond_57

    const/4 v9, 0x1

    goto :goto_44

    :cond_57
    const/4 v9, 0x0

    :goto_44
    move-object/from16 p1, v11

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v14

    move/from16 p5, v6

    move/from16 p6, v10

    move/from16 p7, v9

    move/from16 p8, v18

    invoke-direct/range {p1 .. p8}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/unit/Density;ZZZZ)V

    .line 893
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 274
    :cond_58
    check-cast v11, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 285
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    move-object/from16 v47, v12

    const v12, 0x789c5f52

    .line 896
    invoke-static {v2, v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 285
    check-cast v9, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 286
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v28

    move/from16 v39, v7

    move-object/from16 v7, v28

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .line 897
    invoke-static {v2, v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 286
    check-cast v7, Landroidx/compose/ui/platform/ClipboardManager;

    .line 287
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v28

    move-object/from16 v48, v5

    move-object/from16 v5, v28

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .line 898
    invoke-static {v2, v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 287
    check-cast v5, Landroidx/compose/ui/platform/TextToolbar;

    const v8, -0x4a21e3f2

    .line 288
    invoke-static {v2, v8, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    const v12, 0xe000

    and-int/2addr v12, v3

    move-object/from16 v40, v1

    const/16 v1, 0x4000

    if-ne v12, v1, :cond_59

    const/4 v1, 0x1

    goto :goto_45

    :cond_59
    const/4 v1, 0x0

    :goto_45
    or-int/2addr v1, v8

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    and-int/lit16 v8, v3, 0x380

    const/16 v12, 0x100

    if-ne v8, v12, :cond_5a

    const/4 v8, 0x1

    goto :goto_46

    :cond_5a
    const/4 v8, 0x0

    :goto_46
    or-int/2addr v1, v8

    and-int/lit16 v8, v3, 0x1c00

    const/16 v12, 0x800

    if-ne v8, v12, :cond_5b

    const/4 v8, 0x1

    goto :goto_47

    :cond_5b
    const/4 v8, 0x0

    :goto_47
    or-int/2addr v1, v8

    const/high16 v8, 0x380000

    and-int/2addr v8, v13

    const/high16 v12, 0x100000

    if-ne v8, v12, :cond_5c

    const/4 v8, 0x1

    goto :goto_48

    :cond_5c
    const/4 v8, 0x0

    :goto_48
    or-int/2addr v1, v8

    .line 899
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_5d

    .line 900
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v8, v1, :cond_5e

    .line 288
    :cond_5d
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$2$1;

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v4

    move-object/from16 p4, v11

    move-object/from16 p5, v9

    move-object/from16 p6, v7

    move-object/from16 p7, v5

    move-object/from16 p8, v14

    move/from16 p9, v6

    move/from16 p10, v10

    move/from16 p11, v18

    invoke-direct/range {p1 .. p11}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/ui/platform/ClipboardManager;Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/unit/Density;ZZZ)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 902
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 288
    :cond_5e
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x0

    invoke-static {v8, v2, v1}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const v1, -0x4a219ea7

    .line 304
    invoke-static {v2, v1, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 905
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_5f

    .line 906
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_60

    .line 304
    :cond_5f
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$3$1;

    invoke-direct {v1, v11}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$3$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 908
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 304
    :cond_60
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x0

    invoke-static {v11, v5, v2, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 313
    new-instance v1, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifier;

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v40

    move-object/from16 p4, v11

    move-object/from16 p5, v4

    move/from16 p6, v6

    move/from16 p7, v10

    move-object/from16 p8, v22

    move-object/from16 p9, v48

    move/from16 p10, v43

    move-object/from16 p11, v27

    invoke-direct/range {p1 .. p11}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifier;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/input/InputTransformation;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v5, v45

    .line 311
    invoke-interface {v5, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v9, v27

    .line 326
    invoke-static {v1, v6, v9}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    .line 328
    move-object/from16 v29, v17

    check-cast v29, Landroidx/compose/foundation/gestures/ScrollableState;

    if-eqz v6, :cond_61

    .line 333
    invoke-virtual {v11}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->getDirectDragGestureInitiator()Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    move-result-object v1

    sget-object v7, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;->None:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState$InputType;

    if-ne v1, v7, :cond_61

    const/16 v31, 0x1

    goto :goto_49

    :cond_61
    const/16 v31, 0x0

    .line 334
    :goto_49
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    move-object/from16 v7, p14

    move-object/from16 v8, v24

    const/4 v12, 0x0

    invoke-virtual {v1, v7, v8, v12}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v32

    const/16 v35, 0x10

    const/16 v36, 0x0

    const/16 v33, 0x0

    move-object/from16 v30, v8

    move-object/from16 v34, v9

    .line 327
    invoke-static/range {v28 .. v36}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 341
    invoke-static {}, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v7, v13, v9, v12}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v7, 0x2bb5b5d7

    .line 343
    const-string v9, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    .line 911
    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 912
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v7

    const/4 v9, 0x1

    .line 916
    invoke-static {v7, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    const v9, -0x4ee9b9da

    .line 917
    const-string v12, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 918
    invoke-static {v2, v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 919
    invoke-static {v2, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 920
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 921
    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 923
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    const v14, -0x2942ffcf

    .line 922
    const-string v15, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 924
    invoke-static {v2, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 925
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_62

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 926
    :cond_62
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 927
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_63

    .line 928
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4a

    .line 930
    :cond_63
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 932
    :goto_4a
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .line 933
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 934
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v13, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 936
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 938
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-nez v12, :cond_64

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_65

    .line 939
    :cond_64
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 940
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v9, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 943
    :cond_65
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v13, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x7ff519f7    # -1.000876E-39f

    .line 945
    const-string v7, "C73@3429L9:Box.kt#2w3rfo"

    .line 946
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    const v1, 0x49b55ccf

    const-string v7, "C343@17621L2973,343@17571L3023:BasicTextField.kt#423gt5"

    .line 344
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$4$1;

    move-object/from16 v28, v1

    move-object/from16 v29, v19

    move-object/from16 v30, p16

    move-object/from16 v31, v40

    move-object/from16 v32, v20

    move/from16 v33, v37

    move/from16 v34, v39

    move/from16 v35, v38

    move-object/from16 v36, v0

    move-object/from16 v37, v11

    move-object/from16 v38, p13

    move/from16 v39, v6

    move/from16 v40, v10

    move-object/from16 v41, v17

    move-object/from16 v42, v8

    move-object/from16 v44, p12

    invoke-direct/range {v28 .. v44}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$4$1;-><init>(Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/text/TextStyle;ZZZLandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;ZLkotlin/jvm/functions/Function2;)V

    const/16 v0, 0x36

    const v7, -0x2820d9ff

    const/4 v8, 0x1

    invoke-static {v7, v8, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/lit16 v1, v1, 0x180

    invoke-static {v11, v6, v0, v2, v1}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->ContextMenuArea(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 946
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 947
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 924
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 918
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 911
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 950
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_66
    move-object/from16 v12, p13

    move-object/from16 v11, p15

    move-object/from16 v9, p16

    move v3, v6

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v15, v19

    move-object/from16 v7, v22

    move-object/from16 v14, v46

    move-object/from16 v13, v47

    move-object/from16 v8, v48

    move-object v6, v4

    move v4, v10

    move-object/from16 v10, p12

    .line 412
    :goto_4b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_67

    new-instance v21, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v49, v2

    move-object v2, v5

    move-object v5, v6

    move-object/from16 v6, v20

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$5;-><init>(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;ZIII)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v49

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_67
    return-void
.end method

.method public static final BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZII",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p17

    move/from16 v12, p18

    move/from16 v11, p19

    const v0, 0x6b8eb362

    move-object/from16 v1, p16

    .line 763
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(BasicTextField)P(14,10,8,2,11,13,5,4,12,6,7,15,9,3)765@39981L90,763@39919L740:BasicTextField.kt#423gt5"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0x6

    if-nez v1, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x30

    if-nez v4, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v9, p2

    :goto_6
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v2, v13, 0xc00

    if-nez v2, :cond_b

    move/from16 v2, p3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v1, v1, v19

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v2, p3

    :goto_9
    and-int/lit8 v19, v11, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_b

    :cond_c
    and-int/lit16 v5, v13, 0x6000

    if-nez v5, :cond_e

    move/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v20

    goto :goto_a

    :cond_d
    move/from16 v23, v21

    :goto_a
    or-int v1, v1, v23

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v5, p4

    :goto_c
    and-int/lit8 v23, v11, 0x20

    const/high16 v24, 0x10000

    const/high16 v25, 0x30000

    if-eqz v23, :cond_f

    or-int v1, v1, v25

    move-object/from16 v7, p5

    goto :goto_e

    :cond_f
    and-int v26, v13, v25

    move-object/from16 v7, p5

    if-nez v26, :cond_11

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_d

    :cond_10
    move/from16 v27, v24

    :goto_d
    or-int v1, v1, v27

    :cond_11
    :goto_e
    and-int/lit8 v27, v11, 0x40

    const/high16 v28, 0x180000

    if-eqz v27, :cond_12

    or-int v1, v1, v28

    move-object/from16 v8, p6

    goto :goto_10

    :cond_12
    and-int v28, v13, v28

    move-object/from16 v8, p6

    if-nez v28, :cond_14

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v29, 0x80000

    :goto_f
    or-int v1, v1, v29

    :cond_14
    :goto_10
    and-int/lit16 v6, v11, 0x80

    const/high16 v30, 0xc00000

    if-eqz v6, :cond_15

    or-int v1, v1, v30

    move-object/from16 v3, p7

    goto :goto_12

    :cond_15
    and-int v30, v13, v30

    move-object/from16 v3, p7

    if-nez v30, :cond_17

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v31, 0x400000

    :goto_11
    or-int v1, v1, v31

    :cond_17
    :goto_12
    and-int/lit16 v0, v11, 0x100

    const/high16 v32, 0x6000000

    if-eqz v0, :cond_18

    or-int v1, v1, v32

    move/from16 v2, p8

    goto :goto_14

    :cond_18
    and-int v32, v13, v32

    move/from16 v2, p8

    if-nez v32, :cond_1a

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v32, 0x2000000

    :goto_13
    or-int v1, v1, v32

    :cond_1a
    :goto_14
    const/high16 v32, 0x30000000

    and-int v32, v13, v32

    if-nez v32, :cond_1d

    and-int/lit16 v2, v11, 0x200

    if-nez v2, :cond_1b

    move/from16 v2, p9

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_15

    :cond_1b
    move/from16 v2, p9

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_15
    or-int v1, v1, v32

    goto :goto_16

    :cond_1d
    move/from16 v2, p9

    :goto_16
    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_1e

    or-int/lit8 v32, v12, 0x6

    move/from16 v3, p10

    goto :goto_18

    :cond_1e
    and-int/lit8 v32, v12, 0x6

    move/from16 v3, p10

    if-nez v32, :cond_20

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v32, 0x4

    goto :goto_17

    :cond_1f
    const/16 v32, 0x2

    :goto_17
    or-int v32, v12, v32

    goto :goto_18

    :cond_20
    move/from16 v32, v12

    :goto_18
    and-int/lit16 v3, v11, 0x800

    if-eqz v3, :cond_21

    or-int/lit8 v32, v32, 0x30

    goto :goto_1a

    :cond_21
    and-int/lit8 v33, v12, 0x30

    move-object/from16 v5, p11

    if-nez v33, :cond_23

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22

    const/16 v22, 0x20

    goto :goto_19

    :cond_22
    const/16 v22, 0x10

    :goto_19
    or-int v32, v32, v22

    :cond_23
    :goto_1a
    move/from16 v5, v32

    and-int/lit16 v7, v11, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v5, v5, 0x180

    goto :goto_1c

    :cond_24
    and-int/lit16 v8, v12, 0x180

    if-nez v8, :cond_26

    move-object/from16 v8, p12

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    const/16 v28, 0x100

    goto :goto_1b

    :cond_25
    const/16 v28, 0x80

    :goto_1b
    or-int v5, v5, v28

    goto :goto_1d

    :cond_26
    :goto_1c
    move-object/from16 v8, p12

    :goto_1d
    and-int/lit16 v8, v11, 0x2000

    if-eqz v8, :cond_27

    or-int/lit16 v5, v5, 0xc00

    goto :goto_1f

    :cond_27
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_29

    move-object/from16 v9, p13

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    goto :goto_1e

    :cond_28
    move/from16 v17, v18

    :goto_1e
    or-int v5, v5, v17

    goto :goto_20

    :cond_29
    :goto_1f
    move-object/from16 v9, p13

    :goto_20
    and-int/lit16 v9, v11, 0x4000

    if-eqz v9, :cond_2a

    or-int/lit16 v5, v5, 0x6000

    goto :goto_22

    :cond_2a
    and-int/lit16 v14, v12, 0x6000

    if-nez v14, :cond_2c

    move-object/from16 v14, p14

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_21

    :cond_2b
    move/from16 v20, v21

    :goto_21
    or-int v5, v5, v20

    goto :goto_23

    :cond_2c
    :goto_22
    move-object/from16 v14, p14

    :goto_23
    const v17, 0x8000

    and-int v17, v11, v17

    if-eqz v17, :cond_2d

    or-int v5, v5, v25

    move-object/from16 v12, p15

    goto :goto_24

    :cond_2d
    and-int v18, v12, v25

    move-object/from16 v12, p15

    if-nez v18, :cond_2f

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    const/high16 v24, 0x20000

    :cond_2e
    or-int v5, v5, v24

    :cond_2f
    :goto_24
    const v18, 0x12492493

    and-int v12, v1, v18

    const v14, 0x12492492

    if-ne v12, v14, :cond_31

    const v12, 0x12493

    and-int/2addr v12, v5

    const v14, 0x12492

    if-ne v12, v14, :cond_31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_30

    goto :goto_25

    .line 786
    :cond_30
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v29, v10

    move/from16 v10, p9

    goto/16 :goto_3d

    .line 763
    :cond_31
    :goto_25
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v13, 0x1

    const/16 v18, 0x1

    if-eqz v12, :cond_34

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_32

    goto :goto_26

    .line 760
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_33

    const v0, -0x70000001

    and-int/2addr v1, v0

    :cond_33
    move-object/from16 v20, p2

    move/from16 v21, p3

    move/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v14, p6

    move-object/from16 v24, p7

    move/from16 v12, p8

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v27, p11

    move-object/from16 v28, p12

    move-object/from16 v32, p13

    move-object/from16 v33, p14

    move-object/from16 v34, p15

    move v0, v1

    goto/16 :goto_36

    :cond_34
    :goto_26
    if-eqz v4, :cond_35

    .line 748
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_27

    :cond_35
    move-object/from16 v4, p2

    :goto_27
    if-eqz v16, :cond_36

    move/from16 v12, v18

    goto :goto_28

    :cond_36
    move/from16 v12, p3

    :goto_28
    if-eqz v19, :cond_37

    const/16 v16, 0x0

    goto :goto_29

    :cond_37
    move/from16 v16, p4

    :goto_29
    if-eqz v23, :cond_38

    .line 751
    sget-object v19, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v19

    goto :goto_2a

    :cond_38
    move-object/from16 v19, p5

    :goto_2a
    if-eqz v27, :cond_39

    .line 752
    sget-object v20, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v20

    goto :goto_2b

    :cond_39
    move-object/from16 v20, p6

    :goto_2b
    if-eqz v6, :cond_3a

    .line 753
    sget-object v6, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v6

    goto :goto_2c

    :cond_3a
    move-object/from16 v6, p7

    :goto_2c
    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_2d

    :cond_3b
    move/from16 v0, p8

    :goto_2d
    and-int/lit16 v14, v11, 0x200

    if-eqz v14, :cond_3d

    if-eqz v0, :cond_3c

    move/from16 v14, v18

    goto :goto_2e

    :cond_3c
    const v14, 0x7fffffff

    :goto_2e
    const v21, -0x70000001

    and-int v1, v1, v21

    goto :goto_2f

    :cond_3d
    move/from16 v14, p9

    :goto_2f
    if-eqz v2, :cond_3e

    move/from16 v2, v18

    goto :goto_30

    :cond_3e
    move/from16 v2, p10

    :goto_30
    if-eqz v3, :cond_3f

    .line 757
    sget-object v3, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v3

    goto :goto_31

    :cond_3f
    move-object/from16 v3, p11

    :goto_31
    if-eqz v7, :cond_40

    .line 758
    sget-object v7, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$10;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$10;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    goto :goto_32

    :cond_40
    move-object/from16 v7, p12

    :goto_32
    if-eqz v8, :cond_41

    const/4 v8, 0x0

    goto :goto_33

    :cond_41
    move-object/from16 v8, p13

    :goto_33
    if-eqz v9, :cond_42

    .line 760
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 p2, v0

    move/from16 p3, v1

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v0

    move/from16 p4, v2

    const/4 v2, 0x0

    invoke-direct {v9, v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v9

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    goto :goto_34

    :cond_42
    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move-object/from16 v0, p14

    :goto_34
    if-eqz v17, :cond_43

    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-2$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    move/from16 v26, p4

    move-object/from16 v33, v0

    move-object/from16 v34, v1

    goto :goto_35

    :cond_43
    move/from16 v26, p4

    move-object/from16 v34, p15

    move-object/from16 v33, v0

    :goto_35
    move-object/from16 v27, v3

    move-object/from16 v24, v6

    move-object/from16 v28, v7

    move-object/from16 v32, v8

    move/from16 v21, v12

    move/from16 v25, v14

    move/from16 v22, v16

    move-object/from16 v23, v19

    move-object/from16 v14, v20

    move/from16 v12, p2

    move/from16 v0, p3

    move-object/from16 v20, v4

    :goto_36
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo v1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:762)"

    const v2, 0x6b8eb362

    .line 763
    invoke-static {v2, v0, v5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 777
    :cond_44
    invoke-virtual {v14, v12}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v16

    xor-int/lit8 v8, v12, 0x1

    if-eqz v12, :cond_45

    move/from16 v31, v18

    goto :goto_37

    :cond_45
    move/from16 v31, v26

    :goto_37
    if-eqz v12, :cond_46

    move/from16 v9, v18

    goto :goto_38

    :cond_46
    move/from16 v9, v25

    :goto_38
    const v1, -0x4a15e980

    .line 765
    const-string v2, "CC(remember):BasicTextField.kt#9igjgp"

    .line 766
    invoke-static {v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, v0, 0xe

    const/4 v2, 0x4

    if-ne v1, v2, :cond_47

    move/from16 v1, v18

    goto :goto_39

    :cond_47
    const/4 v1, 0x0

    :goto_39
    and-int/lit8 v2, v0, 0x70

    const/16 v3, 0x20

    if-ne v2, v3, :cond_48

    goto :goto_3a

    :cond_48
    const/16 v18, 0x0

    :goto_3a
    or-int v1, v1, v18

    .line 1029
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4a

    .line 1030
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_49

    goto :goto_3b

    :cond_49
    move-object/from16 v7, p1

    goto :goto_3c

    .line 766
    :cond_4a
    :goto_3b
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$11$1;

    move-object/from16 v7, p1

    invoke-direct {v1, v15, v7}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$11$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1032
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 766
    :goto_3c
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit16 v2, v0, 0x38e

    shr-int/lit8 v3, v0, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v5, 0x9

    const v4, 0xe000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v3, v4

    or-int v17, v2, v3

    shr-int/lit8 v2, v0, 0xf

    and-int/lit16 v2, v2, 0x380

    and-int/lit16 v3, v0, 0x1c00

    or-int/2addr v2, v3

    const v3, 0xe000

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v5

    or-int v18, v0, v2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v29, v10

    move/from16 v10, v31

    move-object/from16 v11, v16

    move/from16 v30, v12

    move-object/from16 v12, v24

    move/from16 v13, v21

    move-object/from16 v31, v14

    move/from16 v14, v22

    move-object/from16 v15, v34

    move-object/from16 v16, v29

    .line 764
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4b
    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v8, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move/from16 v9, v30

    move-object/from16 v7, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move-object/from16 v16, v34

    .line 786
    :goto_3d
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_4c

    new-instance v20, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v35, v2

    move-object/from16 v2, p1

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$12;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v35

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4c
    return-void
.end method

.method public static final synthetic BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move/from16 v15, p16

    move/from16 v14, p17

    move/from16 v13, p18

    const v0, -0x2168495b

    move-object/from16 v1, p15

    .line 847
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(BasicTextField)P(13,9,7,2,10,12,5,4,11,6,14,8,3)842@42874L39,847@43114L579:BasicTextField.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move v5, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v15

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v5, v15

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v15, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit8 v9, v13, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_8

    move-object/from16 v12, p2

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_5

    :cond_7
    const/16 v16, 0x80

    :goto_5
    or-int v5, v5, v16

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v12, p2

    :goto_7
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v5, v5, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v3, v15, 0xc00

    if-nez v3, :cond_b

    move/from16 v3, p3

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_8

    :cond_a
    move/from16 v19, v18

    :goto_8
    or-int v5, v5, v19

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v3, p3

    :goto_a
    and-int/lit8 v19, v13, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v5, v5, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v4, v15, 0x6000

    if-nez v4, :cond_e

    move/from16 v4, p4

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v20

    goto :goto_b

    :cond_d
    move/from16 v23, v21

    :goto_b
    or-int v5, v5, v23

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v4, p4

    :goto_d
    and-int/lit8 v23, v13, 0x20

    const/high16 v24, 0x30000

    if-eqz v23, :cond_f

    or-int v5, v5, v24

    move-object/from16 v7, p5

    goto :goto_f

    :cond_f
    and-int v24, v15, v24

    move-object/from16 v7, p5

    if-nez v24, :cond_11

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v25, 0x10000

    :goto_e
    or-int v5, v5, v25

    :cond_11
    :goto_f
    and-int/lit8 v25, v13, 0x40

    const/high16 v26, 0x180000

    if-eqz v25, :cond_12

    or-int v5, v5, v26

    move-object/from16 v8, p6

    goto :goto_11

    :cond_12
    and-int v26, v15, v26

    move-object/from16 v8, p6

    if-nez v26, :cond_14

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v27, 0x80000

    :goto_10
    or-int v5, v5, v27

    :cond_14
    :goto_11
    and-int/lit16 v10, v13, 0x80

    const/high16 v28, 0xc00000

    if-eqz v10, :cond_15

    or-int v5, v5, v28

    move-object/from16 v11, p7

    goto :goto_13

    :cond_15
    and-int v28, v15, v28

    move-object/from16 v11, p7

    if-nez v28, :cond_17

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/high16 v29, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v29, 0x400000

    :goto_12
    or-int v5, v5, v29

    :cond_17
    :goto_13
    and-int/lit16 v0, v13, 0x100

    const/high16 v30, 0x6000000

    if-eqz v0, :cond_18

    or-int v5, v5, v30

    move/from16 v2, p8

    goto :goto_15

    :cond_18
    and-int v30, v15, v30

    move/from16 v2, p8

    if-nez v30, :cond_1a

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_14

    :cond_19
    const/high16 v30, 0x2000000

    :goto_14
    or-int v5, v5, v30

    :cond_1a
    :goto_15
    and-int/lit16 v2, v13, 0x200

    const/high16 v30, 0x30000000

    if-eqz v2, :cond_1b

    or-int v5, v5, v30

    move/from16 v3, p9

    goto :goto_17

    :cond_1b
    and-int v30, v15, v30

    move/from16 v3, p9

    if-nez v30, :cond_1d

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_16

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_16
    or-int v5, v5, v30

    :cond_1d
    :goto_17
    and-int/lit16 v3, v13, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v22, v14, 0x6

    move-object/from16 v4, p10

    goto :goto_19

    :cond_1e
    and-int/lit8 v30, v14, 0x6

    move-object/from16 v4, p10

    if-nez v30, :cond_20

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v22, 0x4

    goto :goto_18

    :cond_1f
    const/16 v22, 0x2

    :goto_18
    or-int v22, v14, v22

    goto :goto_19

    :cond_20
    move/from16 v22, v14

    :goto_19
    and-int/lit16 v4, v13, 0x800

    if-eqz v4, :cond_21

    or-int/lit8 v22, v22, 0x30

    goto :goto_1b

    :cond_21
    and-int/lit8 v30, v14, 0x30

    move-object/from16 v6, p11

    if-nez v30, :cond_23

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v24, 0x20

    goto :goto_1a

    :cond_22
    const/16 v24, 0x10

    :goto_1a
    or-int v22, v22, v24

    :cond_23
    :goto_1b
    move/from16 v6, v22

    and-int/lit16 v7, v13, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v6, v6, 0x180

    goto :goto_1d

    :cond_24
    and-int/lit16 v8, v14, 0x180

    if-nez v8, :cond_26

    move-object/from16 v8, p12

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    const/16 v27, 0x100

    goto :goto_1c

    :cond_25
    const/16 v27, 0x80

    :goto_1c
    or-int v6, v6, v27

    goto :goto_1e

    :cond_26
    :goto_1d
    move-object/from16 v8, p12

    :goto_1e
    and-int/lit16 v8, v13, 0x2000

    if-eqz v8, :cond_27

    or-int/lit16 v6, v6, 0xc00

    goto :goto_20

    :cond_27
    and-int/lit16 v11, v14, 0xc00

    if-nez v11, :cond_29

    move-object/from16 v11, p13

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    goto :goto_1f

    :cond_28
    move/from16 v17, v18

    :goto_1f
    or-int v6, v6, v17

    goto :goto_21

    :cond_29
    :goto_20
    move-object/from16 v11, p13

    :goto_21
    and-int/lit16 v11, v13, 0x4000

    if-eqz v11, :cond_2a

    or-int/lit16 v6, v6, 0x6000

    goto :goto_23

    :cond_2a
    and-int/lit16 v12, v14, 0x6000

    if-nez v12, :cond_2c

    move-object/from16 v12, p14

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_22

    :cond_2b
    move/from16 v20, v21

    :goto_22
    or-int v6, v6, v20

    goto :goto_24

    :cond_2c
    :goto_23
    move-object/from16 v12, p14

    :goto_24
    const v17, 0x12492493

    and-int v12, v5, v17

    const v13, 0x12492492

    if-ne v12, v13, :cond_2e

    and-int/lit16 v12, v6, 0x2493

    const/16 v13, 0x2492

    if-ne v12, v13, :cond_2e

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_2d

    goto :goto_25

    .line 866
    :cond_2d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 p15, v1

    goto/16 :goto_33

    :cond_2e
    :goto_25
    if-eqz v9, :cond_2f

    .line 833
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    goto :goto_26

    :cond_2f
    move-object/from16 v9, p2

    :goto_26
    if-eqz v16, :cond_30

    const/4 v12, 0x1

    goto :goto_27

    :cond_30
    move/from16 v12, p3

    :goto_27
    if-eqz v19, :cond_31

    const/4 v13, 0x0

    goto :goto_28

    :cond_31
    move/from16 v13, p4

    :goto_28
    if-eqz v23, :cond_32

    .line 836
    sget-object v16, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    move-object/from16 v36, v16

    goto :goto_29

    :cond_32
    move-object/from16 v36, p5

    :goto_29
    if-eqz v25, :cond_33

    .line 837
    sget-object v16, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v16

    move-object/from16 v37, v16

    goto :goto_2a

    :cond_33
    move-object/from16 v37, p6

    :goto_2a
    if-eqz v10, :cond_34

    .line 838
    sget-object v10, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v10}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v10

    goto :goto_2b

    :cond_34
    move-object/from16 v10, p7

    :goto_2b
    if-eqz v0, :cond_35

    const/4 v0, 0x0

    goto :goto_2c

    :cond_35
    move/from16 v0, p8

    :goto_2c
    if-eqz v2, :cond_36

    const v2, 0x7fffffff

    goto :goto_2d

    :cond_36
    move/from16 v2, p9

    :goto_2d
    if-eqz v3, :cond_37

    .line 841
    sget-object v3, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v3

    goto :goto_2e

    :cond_37
    move-object/from16 v3, p10

    :goto_2e
    if-eqz v4, :cond_38

    .line 842
    sget-object v4, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$16;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$16;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    goto :goto_2f

    :cond_38
    move-object/from16 v4, p11

    :goto_2f
    if-eqz v7, :cond_3a

    const v7, -0x4a148013

    .line 843
    const-string v14, "CC(remember):BasicTextField.kt#9igjgp"

    invoke-static {v1, v7, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1041
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1042
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v7, v14, :cond_39

    .line 843
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v7

    .line 1044
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 843
    :cond_39
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    goto :goto_30

    :cond_3a
    move-object/from16 v7, p12

    :goto_30
    if-eqz v8, :cond_3b

    .line 844
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v14, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v14

    move-object/from16 p15, v1

    const/4 v1, 0x0

    invoke-direct {v8, v14, v15, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/graphics/Brush;

    goto :goto_31

    :cond_3b
    move-object/from16 p15, v1

    move-object/from16 v1, p13

    :goto_31
    if-eqz v11, :cond_3c

    sget-object v8, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-4$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v8

    goto :goto_32

    :cond_3c
    move-object/from16 v8, p14

    :goto_32
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_3d

    const-string/jumbo v11, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:846)"

    const v14, -0x2168495b

    .line 847
    invoke-static {v14, v5, v6, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3d
    const v11, 0x7ffffffe

    and-int v33, v5, v11

    shl-int/lit8 v5, v6, 0x3

    and-int/lit8 v6, v5, 0x70

    or-int/lit8 v6, v6, 0x6

    and-int/lit16 v11, v5, 0x380

    or-int/2addr v6, v11

    and-int/lit16 v11, v5, 0x1c00

    or-int/2addr v6, v11

    const v11, 0xe000

    and-int/2addr v11, v5

    or-int/2addr v6, v11

    const/high16 v11, 0x70000

    and-int/2addr v5, v11

    or-int v34, v6, v5

    const/16 v35, 0x0

    const/16 v26, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v9

    move/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v21, v36

    move-object/from16 v22, v37

    move-object/from16 v23, v10

    move/from16 v24, v0

    move/from16 v25, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v1

    move-object/from16 v31, v8

    move-object/from16 v32, p15

    .line 848
    invoke-static/range {v16 .. v35}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3e
    move-object v14, v1

    move-object v11, v3

    move-object v15, v8

    move-object v3, v9

    move-object v8, v10

    move v5, v13

    move-object/from16 v6, v36

    move v9, v0

    move v10, v2

    move-object v13, v7

    move-object/from16 v7, v37

    move/from16 v39, v12

    move-object v12, v4

    move/from16 v4, v39

    .line 866
    :goto_33
    invoke-interface/range {p15 .. p15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_3f

    new-instance v19, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v38, v2

    move-object/from16 v2, p1

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$18;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v38

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3f
    return-void
.end method

.method public static final BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZII",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v15, p17

    move/from16 v14, p18

    move/from16 v13, p19

    const v0, 0x3857730f

    move-object/from16 v3, p16

    .line 611
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v4, "C(BasicTextField)P(14,10,8,2,11,13,5,4,12,6,7,15,9,3)613@31179L57,619@31532L216,619@31521L227,628@32069L41,632@32187L373,630@32116L1032:BasicTextField.kt#423gt5"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v15, 0x6

    if-nez v4, :cond_2

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move v4, v15

    :goto_1
    and-int/lit8 v7, v13, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v15, 0x30

    if-nez v7, :cond_5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v13, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_8

    move-object/from16 v12, p2

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v4, v4, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v12, p2

    :goto_6
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v8, v15, 0xc00

    if-nez v8, :cond_b

    move/from16 v8, p3

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v4, v4, v19

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v8, p3

    :goto_9
    and-int/lit8 v19, v13, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v4, v4, 0x6000

    goto :goto_b

    :cond_c
    and-int/lit16 v10, v15, 0x6000

    if-nez v10, :cond_e

    move/from16 v10, p4

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v20

    goto :goto_a

    :cond_d
    move/from16 v23, v21

    :goto_a
    or-int v4, v4, v23

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v10, p4

    :goto_c
    and-int/lit8 v23, v13, 0x20

    const/high16 v24, 0x30000

    if-eqz v23, :cond_f

    or-int v4, v4, v24

    move-object/from16 v11, p5

    goto :goto_e

    :cond_f
    and-int v25, v15, v24

    move-object/from16 v11, p5

    if-nez v25, :cond_11

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v26, 0x10000

    :goto_d
    or-int v4, v4, v26

    :cond_11
    :goto_e
    and-int/lit8 v26, v13, 0x40

    const/high16 v27, 0x180000

    if-eqz v26, :cond_12

    or-int v4, v4, v27

    move-object/from16 v9, p6

    goto :goto_10

    :cond_12
    and-int v27, v15, v27

    move-object/from16 v9, p6

    if-nez v27, :cond_14

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    const/high16 v28, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v28, 0x80000

    :goto_f
    or-int v4, v4, v28

    :cond_14
    :goto_10
    and-int/lit16 v5, v13, 0x80

    const/high16 v29, 0xc00000

    if-eqz v5, :cond_15

    or-int v4, v4, v29

    move-object/from16 v6, p7

    goto :goto_12

    :cond_15
    and-int v29, v15, v29

    move-object/from16 v6, p7

    if-nez v29, :cond_17

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v30, 0x400000

    :goto_11
    or-int v4, v4, v30

    :cond_17
    :goto_12
    and-int/lit16 v0, v13, 0x100

    const/high16 v31, 0x6000000

    if-eqz v0, :cond_18

    or-int v4, v4, v31

    move/from16 v6, p8

    goto :goto_14

    :cond_18
    and-int v31, v15, v31

    move/from16 v6, p8

    if-nez v31, :cond_1a

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_19

    const/high16 v31, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v31, 0x2000000

    :goto_13
    or-int v4, v4, v31

    :cond_1a
    :goto_14
    const/high16 v31, 0x30000000

    and-int v31, v15, v31

    if-nez v31, :cond_1d

    and-int/lit16 v6, v13, 0x200

    if-nez v6, :cond_1b

    move/from16 v6, p9

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/high16 v31, 0x20000000

    goto :goto_15

    :cond_1b
    move/from16 v6, p9

    :cond_1c
    const/high16 v31, 0x10000000

    :goto_15
    or-int v4, v4, v31

    goto :goto_16

    :cond_1d
    move/from16 v6, p9

    :goto_16
    and-int/lit16 v6, v13, 0x400

    if-eqz v6, :cond_1e

    or-int/lit8 v31, v14, 0x6

    move/from16 v8, p10

    goto :goto_18

    :cond_1e
    and-int/lit8 v31, v14, 0x6

    move/from16 v8, p10

    if-nez v31, :cond_20

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v31, 0x4

    goto :goto_17

    :cond_1f
    const/16 v31, 0x2

    :goto_17
    or-int v31, v14, v31

    goto :goto_18

    :cond_20
    move/from16 v31, v14

    :goto_18
    and-int/lit16 v8, v13, 0x800

    if-eqz v8, :cond_21

    or-int/lit8 v31, v31, 0x30

    goto :goto_1a

    :cond_21
    and-int/lit8 v32, v14, 0x30

    move-object/from16 v9, p11

    if-nez v32, :cond_23

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v32, 0x20

    goto :goto_19

    :cond_22
    const/16 v32, 0x10

    :goto_19
    or-int v31, v31, v32

    :cond_23
    :goto_1a
    move/from16 v9, v31

    and-int/lit16 v10, v13, 0x1000

    if-eqz v10, :cond_24

    or-int/lit16 v9, v9, 0x180

    goto :goto_1c

    :cond_24
    and-int/lit16 v11, v14, 0x180

    if-nez v11, :cond_26

    move-object/from16 v11, p12

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_25

    const/16 v22, 0x100

    goto :goto_1b

    :cond_25
    const/16 v22, 0x80

    :goto_1b
    or-int v9, v9, v22

    goto :goto_1d

    :cond_26
    :goto_1c
    move-object/from16 v11, p12

    :goto_1d
    and-int/lit16 v11, v13, 0x2000

    if-eqz v11, :cond_27

    or-int/lit16 v9, v9, 0xc00

    goto :goto_1f

    :cond_27
    and-int/lit16 v12, v14, 0xc00

    if-nez v12, :cond_29

    move-object/from16 v12, p13

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    goto :goto_1e

    :cond_28
    move/from16 v17, v18

    :goto_1e
    or-int v9, v9, v17

    goto :goto_20

    :cond_29
    :goto_1f
    move-object/from16 v12, p13

    :goto_20
    and-int/lit16 v12, v13, 0x4000

    if-eqz v12, :cond_2a

    or-int/lit16 v9, v9, 0x6000

    goto :goto_22

    :cond_2a
    and-int/lit16 v2, v14, 0x6000

    if-nez v2, :cond_2c

    move-object/from16 v2, p14

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_21

    :cond_2b
    move/from16 v20, v21

    :goto_21
    or-int v9, v9, v20

    goto :goto_23

    :cond_2c
    :goto_22
    move-object/from16 v2, p14

    :goto_23
    const v17, 0x8000

    and-int v17, v13, v17

    if-eqz v17, :cond_2d

    or-int v9, v9, v24

    move-object/from16 v2, p15

    goto :goto_25

    :cond_2d
    and-int v18, v14, v24

    move-object/from16 v2, p15

    if-nez v18, :cond_2f

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    const/high16 v18, 0x20000

    goto :goto_24

    :cond_2e
    const/high16 v18, 0x10000

    :goto_24
    or-int v9, v9, v18

    :cond_2f
    :goto_25
    const v18, 0x12492493

    and-int v2, v4, v18

    const v14, 0x12492492

    if-ne v2, v14, :cond_31

    const v2, 0x12493

    and-int/2addr v2, v9

    const v14, 0x12492

    if-ne v2, v14, :cond_31

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_26

    .line 658
    :cond_30
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v36, p13

    move-object/from16 v37, p14

    move-object/from16 v16, p15

    goto/16 :goto_40

    .line 611
    :cond_31
    :goto_26
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const/16 v18, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_27

    .line 608
    :cond_32
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v13, 0x200

    if-eqz v0, :cond_33

    const v0, -0x70000001

    and-int/2addr v4, v0

    :cond_33
    move-object/from16 v2, p2

    move/from16 v7, p3

    move/from16 v0, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v8, p8

    move/from16 v14, p9

    move/from16 p9, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v36, p13

    move-object/from16 v37, p14

    move-object/from16 v38, p15

    move v10, v4

    move-object/from16 v4, p5

    goto/16 :goto_37

    :cond_34
    :goto_27
    if-eqz v7, :cond_35

    .line 596
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_28

    :cond_35
    move-object/from16 v2, p2

    :goto_28
    if-eqz v16, :cond_36

    move/from16 v7, v18

    goto :goto_29

    :cond_36
    move/from16 v7, p3

    :goto_29
    if-eqz v19, :cond_37

    const/16 v16, 0x0

    goto :goto_2a

    :cond_37
    move/from16 v16, p4

    :goto_2a
    if-eqz v23, :cond_38

    .line 599
    sget-object v19, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v19

    goto :goto_2b

    :cond_38
    move-object/from16 v19, p5

    :goto_2b
    if-eqz v26, :cond_39

    .line 600
    sget-object v20, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v20

    goto :goto_2c

    :cond_39
    move-object/from16 v20, p6

    :goto_2c
    if-eqz v5, :cond_3a

    .line 601
    sget-object v5, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v5

    goto :goto_2d

    :cond_3a
    move-object/from16 v5, p7

    :goto_2d
    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_2e

    :cond_3b
    move/from16 v0, p8

    :goto_2e
    and-int/lit16 v14, v13, 0x200

    if-eqz v14, :cond_3d

    if-eqz v0, :cond_3c

    move/from16 v14, v18

    goto :goto_2f

    :cond_3c
    const v14, 0x7fffffff

    :goto_2f
    const v22, -0x70000001

    and-int v4, v4, v22

    goto :goto_30

    :cond_3d
    move/from16 v14, p9

    :goto_30
    if-eqz v6, :cond_3e

    move/from16 v6, v18

    goto :goto_31

    :cond_3e
    move/from16 v6, p10

    :goto_31
    if-eqz v8, :cond_3f

    .line 605
    sget-object v8, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v8

    goto :goto_32

    :cond_3f
    move-object/from16 v8, p11

    :goto_32
    if-eqz v10, :cond_40

    .line 606
    sget-object v10, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    goto :goto_33

    :cond_40
    move-object/from16 v10, p12

    :goto_33
    if-eqz v11, :cond_41

    const/4 v11, 0x0

    goto :goto_34

    :cond_41
    move-object/from16 v11, p13

    :goto_34
    if-eqz v12, :cond_42

    .line 608
    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v22, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 p3, v4

    move-object/from16 p2, v5

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    move/from16 p4, v0

    const/4 v0, 0x0

    invoke-direct {v12, v4, v5, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v12

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    goto :goto_35

    :cond_42
    move/from16 p4, v0

    move/from16 p3, v4

    move-object/from16 p2, v5

    move-object/from16 v0, p14

    :goto_35
    if-eqz v17, :cond_43

    sget-object v4, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-1$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    move-object/from16 v37, v0

    move-object/from16 v38, v4

    goto :goto_36

    :cond_43
    move-object/from16 v38, p15

    move-object/from16 v37, v0

    :goto_36
    move/from16 p9, v6

    move-object v12, v10

    move-object/from16 v36, v11

    move/from16 v0, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, p2

    move/from16 v10, p3

    move-object v11, v8

    move/from16 v8, p4

    :goto_37
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_44

    const-string/jumbo v13, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:610)"

    move/from16 p10, v14

    const v14, 0x3857730f

    .line 611
    invoke-static {v14, v10, v9, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_38

    :cond_44
    move/from16 p10, v14

    :goto_38
    const v13, -0x4a1a35e1

    .line 614
    const-string v14, "CC(remember):BasicTextField.kt#9igjgp"

    invoke-static {v3, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1005
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .line 1006
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_45

    .line 614
    new-instance v13, Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 p2, v13

    move-object/from16 p3, p0

    move-wide/from16 p4, v19

    move-object/from16 p6, v17

    move/from16 p7, v15

    move-object/from16 p8, v16

    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 p11, v0

    const/4 v0, 0x0

    const/4 v15, 0x2

    invoke-static {v13, v0, v15, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    .line 1008
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_39

    :cond_45
    move/from16 p11, v0

    .line 614
    :goto_39
    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 618
    invoke-static {v13}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$21(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 p2, v0

    move-object/from16 p3, p0

    move-wide/from16 p4, v19

    move-object/from16 p6, v17

    move/from16 p7, v15

    move-object/from16 p8, v16

    invoke-static/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    const v15, -0x4a1a0922

    .line 620
    invoke-static {v3, v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    move/from16 p2, v7

    .line 1011
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v15, :cond_46

    .line 1012
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v7, v15, :cond_47

    .line 620
    :cond_46
    new-instance v7, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$7$1;

    invoke-direct {v7, v0, v13}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$7$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/runtime/MutableState;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 1014
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 620
    :cond_47
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v15, 0x0

    invoke-static {v7, v3, v15}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const v7, -0x4a19c6b1

    .line 629
    invoke-static {v3, v7, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v7, v10, 0xe

    const/4 v15, 0x4

    if-ne v7, v15, :cond_48

    move/from16 v7, v18

    goto :goto_3a

    :cond_48
    const/4 v7, 0x0

    .line 1017
    :goto_3a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v7, :cond_49

    .line 1018
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v15, v7, :cond_4a

    :cond_49
    const/4 v7, 0x2

    const/4 v15, 0x0

    .line 629
    invoke-static {v1, v15, v7, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    .line 1020
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 629
    :cond_4a
    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 649
    invoke-virtual {v5, v8}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v7

    xor-int/lit8 v24, v8, 0x1

    if-eqz v8, :cond_4b

    move/from16 v26, v18

    goto :goto_3b

    :cond_4b
    move/from16 v26, p9

    :goto_3b
    if-eqz v8, :cond_4c

    move/from16 v25, v18

    goto :goto_3c

    :cond_4c
    move/from16 v25, p10

    :goto_3c
    const v1, -0x4a19b6a5

    .line 633
    invoke-static {v3, v1, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit8 v14, v10, 0x70

    move-object/from16 p3, v5

    const/16 v5, 0x20

    if-ne v14, v5, :cond_4d

    move/from16 v14, v18

    goto :goto_3d

    :cond_4d
    const/4 v14, 0x0

    :goto_3d
    or-int/2addr v1, v14

    .line 1023
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_4f

    .line 1024
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_4e

    goto :goto_3e

    :cond_4e
    move-object v1, v5

    move-object/from16 v5, p1

    goto :goto_3f

    .line 633
    :cond_4f
    :goto_3e
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;

    move-object/from16 v5, p1

    invoke-direct {v1, v5, v13, v15}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1026
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 633
    :goto_3f
    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit16 v1, v10, 0x380

    shr-int/lit8 v13, v10, 0x6

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v1, v13

    shl-int/lit8 v13, v9, 0x9

    const v14, 0xe000

    and-int/2addr v14, v13

    or-int/2addr v1, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v13

    or-int/2addr v1, v14

    const/high16 v14, 0x380000

    and-int/2addr v14, v13

    or-int/2addr v1, v14

    const/high16 v14, 0x1c00000

    and-int/2addr v13, v14

    or-int v33, v1, v13

    shr-int/lit8 v1, v10, 0xf

    and-int/lit16 v1, v1, 0x380

    and-int/lit16 v13, v10, 0x1c00

    or-int/2addr v1, v13

    const v13, 0xe000

    and-int/2addr v10, v13

    or-int/2addr v1, v10

    const/high16 v10, 0x70000

    and-int/2addr v9, v10

    or-int v34, v1, v9

    const/16 v35, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v36

    move-object/from16 v23, v37

    move-object/from16 v27, v7

    move-object/from16 v28, v6

    move/from16 v29, p2

    move/from16 v30, p11

    move-object/from16 v31, v38

    move-object/from16 v32, v3

    .line 631
    invoke-static/range {v16 .. v35}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_50
    move-object/from16 v9, p3

    move/from16 v13, p9

    move/from16 v7, p11

    move-object v10, v6

    move-object v14, v11

    move-object v15, v12

    move-object/from16 v16, v38

    move/from16 v6, p2

    move/from16 v12, p10

    move v11, v8

    move-object v8, v4

    move-object v4, v2

    .line 658
    :goto_40
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_51

    new-instance v20, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v3

    move-object v3, v4

    move v4, v6

    move-object v6, v5

    move v5, v7

    move-object v7, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v8

    move-object v8, v10

    move-object v10, v9

    move v9, v11

    move-object v11, v10

    move v10, v12

    move-object v12, v11

    move v11, v13

    move-object v13, v12

    move-object v12, v14

    move-object v14, v13

    move-object v13, v15

    move-object v15, v14

    move-object/from16 v14, v36

    move-object/from16 v39, v15

    move-object/from16 v15, v37

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v39

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_51
    return-void
.end method

.method public static final synthetic BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move/from16 v15, p16

    move/from16 v14, p17

    move/from16 v13, p18

    const v0, -0x1b1aab2e

    move-object/from16 v1, p15

    .line 807
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(BasicTextField)P(13,9,7,2,10,12,5,4,11,6,14,8,3)802@41349L39,807@41589L579:BasicTextField.kt#423gt5"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move v5, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v15

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v5, v15

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v15, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit8 v9, v13, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_8

    move-object/from16 v12, p2

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_5

    :cond_7
    const/16 v16, 0x80

    :goto_5
    or-int v5, v5, v16

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v12, p2

    :goto_7
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v5, v5, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v3, v15, 0xc00

    if-nez v3, :cond_b

    move/from16 v3, p3

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_8

    :cond_a
    move/from16 v19, v18

    :goto_8
    or-int v5, v5, v19

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v3, p3

    :goto_a
    and-int/lit8 v19, v13, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v5, v5, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v4, v15, 0x6000

    if-nez v4, :cond_e

    move/from16 v4, p4

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v20

    goto :goto_b

    :cond_d
    move/from16 v23, v21

    :goto_b
    or-int v5, v5, v23

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v4, p4

    :goto_d
    and-int/lit8 v23, v13, 0x20

    const/high16 v24, 0x30000

    if-eqz v23, :cond_f

    or-int v5, v5, v24

    move-object/from16 v7, p5

    goto :goto_f

    :cond_f
    and-int v24, v15, v24

    move-object/from16 v7, p5

    if-nez v24, :cond_11

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v25, 0x10000

    :goto_e
    or-int v5, v5, v25

    :cond_11
    :goto_f
    and-int/lit8 v25, v13, 0x40

    const/high16 v26, 0x180000

    if-eqz v25, :cond_12

    or-int v5, v5, v26

    move-object/from16 v8, p6

    goto :goto_11

    :cond_12
    and-int v26, v15, v26

    move-object/from16 v8, p6

    if-nez v26, :cond_14

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v27, 0x80000

    :goto_10
    or-int v5, v5, v27

    :cond_14
    :goto_11
    and-int/lit16 v10, v13, 0x80

    const/high16 v28, 0xc00000

    if-eqz v10, :cond_15

    or-int v5, v5, v28

    move-object/from16 v11, p7

    goto :goto_13

    :cond_15
    and-int v28, v15, v28

    move-object/from16 v11, p7

    if-nez v28, :cond_17

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/high16 v29, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v29, 0x400000

    :goto_12
    or-int v5, v5, v29

    :cond_17
    :goto_13
    and-int/lit16 v0, v13, 0x100

    const/high16 v30, 0x6000000

    if-eqz v0, :cond_18

    or-int v5, v5, v30

    move/from16 v2, p8

    goto :goto_15

    :cond_18
    and-int v30, v15, v30

    move/from16 v2, p8

    if-nez v30, :cond_1a

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_14

    :cond_19
    const/high16 v30, 0x2000000

    :goto_14
    or-int v5, v5, v30

    :cond_1a
    :goto_15
    and-int/lit16 v2, v13, 0x200

    const/high16 v30, 0x30000000

    if-eqz v2, :cond_1b

    or-int v5, v5, v30

    move/from16 v3, p9

    goto :goto_17

    :cond_1b
    and-int v30, v15, v30

    move/from16 v3, p9

    if-nez v30, :cond_1d

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_16

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_16
    or-int v5, v5, v30

    :cond_1d
    :goto_17
    and-int/lit16 v3, v13, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v22, v14, 0x6

    move-object/from16 v4, p10

    goto :goto_19

    :cond_1e
    and-int/lit8 v30, v14, 0x6

    move-object/from16 v4, p10

    if-nez v30, :cond_20

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1f

    const/16 v22, 0x4

    goto :goto_18

    :cond_1f
    const/16 v22, 0x2

    :goto_18
    or-int v22, v14, v22

    goto :goto_19

    :cond_20
    move/from16 v22, v14

    :goto_19
    and-int/lit16 v4, v13, 0x800

    if-eqz v4, :cond_21

    or-int/lit8 v22, v22, 0x30

    goto :goto_1b

    :cond_21
    and-int/lit8 v30, v14, 0x30

    move-object/from16 v6, p11

    if-nez v30, :cond_23

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v24, 0x20

    goto :goto_1a

    :cond_22
    const/16 v24, 0x10

    :goto_1a
    or-int v22, v22, v24

    :cond_23
    :goto_1b
    move/from16 v6, v22

    and-int/lit16 v7, v13, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v6, v6, 0x180

    goto :goto_1d

    :cond_24
    and-int/lit16 v8, v14, 0x180

    if-nez v8, :cond_26

    move-object/from16 v8, p12

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    const/16 v27, 0x100

    goto :goto_1c

    :cond_25
    const/16 v27, 0x80

    :goto_1c
    or-int v6, v6, v27

    goto :goto_1e

    :cond_26
    :goto_1d
    move-object/from16 v8, p12

    :goto_1e
    and-int/lit16 v8, v13, 0x2000

    if-eqz v8, :cond_27

    or-int/lit16 v6, v6, 0xc00

    goto :goto_20

    :cond_27
    and-int/lit16 v11, v14, 0xc00

    if-nez v11, :cond_29

    move-object/from16 v11, p13

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    goto :goto_1f

    :cond_28
    move/from16 v17, v18

    :goto_1f
    or-int v6, v6, v17

    goto :goto_21

    :cond_29
    :goto_20
    move-object/from16 v11, p13

    :goto_21
    and-int/lit16 v11, v13, 0x4000

    if-eqz v11, :cond_2a

    or-int/lit16 v6, v6, 0x6000

    goto :goto_23

    :cond_2a
    and-int/lit16 v12, v14, 0x6000

    if-nez v12, :cond_2c

    move-object/from16 v12, p14

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_22

    :cond_2b
    move/from16 v20, v21

    :goto_22
    or-int v6, v6, v20

    goto :goto_24

    :cond_2c
    :goto_23
    move-object/from16 v12, p14

    :goto_24
    const v17, 0x12492493

    and-int v12, v5, v17

    const v13, 0x12492492

    if-ne v12, v13, :cond_2e

    and-int/lit16 v12, v6, 0x2493

    const/16 v13, 0x2492

    if-ne v12, v13, :cond_2e

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_2d

    goto :goto_25

    .line 826
    :cond_2d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 p15, v1

    goto/16 :goto_33

    :cond_2e
    :goto_25
    if-eqz v9, :cond_2f

    .line 793
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    goto :goto_26

    :cond_2f
    move-object/from16 v9, p2

    :goto_26
    if-eqz v16, :cond_30

    const/4 v12, 0x1

    goto :goto_27

    :cond_30
    move/from16 v12, p3

    :goto_27
    if-eqz v19, :cond_31

    const/4 v13, 0x0

    goto :goto_28

    :cond_31
    move/from16 v13, p4

    :goto_28
    if-eqz v23, :cond_32

    .line 796
    sget-object v16, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    move-object/from16 v36, v16

    goto :goto_29

    :cond_32
    move-object/from16 v36, p5

    :goto_29
    if-eqz v25, :cond_33

    .line 797
    sget-object v16, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v16

    move-object/from16 v37, v16

    goto :goto_2a

    :cond_33
    move-object/from16 v37, p6

    :goto_2a
    if-eqz v10, :cond_34

    .line 798
    sget-object v10, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v10}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v10

    goto :goto_2b

    :cond_34
    move-object/from16 v10, p7

    :goto_2b
    if-eqz v0, :cond_35

    const/4 v0, 0x0

    goto :goto_2c

    :cond_35
    move/from16 v0, p8

    :goto_2c
    if-eqz v2, :cond_36

    const v2, 0x7fffffff

    goto :goto_2d

    :cond_36
    move/from16 v2, p9

    :goto_2d
    if-eqz v3, :cond_37

    .line 801
    sget-object v3, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v3

    goto :goto_2e

    :cond_37
    move-object/from16 v3, p10

    :goto_2e
    if-eqz v4, :cond_38

    .line 802
    sget-object v4, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$13;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$13;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    goto :goto_2f

    :cond_38
    move-object/from16 v4, p11

    :goto_2f
    if-eqz v7, :cond_3a

    const v7, -0x4a153eb3

    .line 803
    const-string v14, "CC(remember):BasicTextField.kt#9igjgp"

    invoke-static {v1, v7, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1035
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 1036
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v7, v14, :cond_39

    .line 803
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v7

    .line 1038
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 803
    :cond_39
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    goto :goto_30

    :cond_3a
    move-object/from16 v7, p12

    :goto_30
    if-eqz v8, :cond_3b

    .line 804
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v14, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v14

    move-object/from16 p15, v1

    const/4 v1, 0x0

    invoke-direct {v8, v14, v15, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/graphics/Brush;

    goto :goto_31

    :cond_3b
    move-object/from16 p15, v1

    move-object/from16 v1, p13

    :goto_31
    if-eqz v11, :cond_3c

    sget-object v8, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-3$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v8

    goto :goto_32

    :cond_3c
    move-object/from16 v8, p14

    :goto_32
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_3d

    const-string/jumbo v11, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:806)"

    const v14, -0x1b1aab2e

    .line 807
    invoke-static {v14, v5, v6, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3d
    const v11, 0x7ffffffe

    and-int v33, v5, v11

    shl-int/lit8 v5, v6, 0x3

    and-int/lit8 v6, v5, 0x70

    or-int/lit8 v6, v6, 0x6

    and-int/lit16 v11, v5, 0x380

    or-int/2addr v6, v11

    and-int/lit16 v11, v5, 0x1c00

    or-int/2addr v6, v11

    const v11, 0xe000

    and-int/2addr v11, v5

    or-int/2addr v6, v11

    const/high16 v11, 0x70000

    and-int/2addr v5, v11

    or-int v34, v6, v5

    const/16 v35, 0x0

    const/16 v26, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v9

    move/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v21, v36

    move-object/from16 v22, v37

    move-object/from16 v23, v10

    move/from16 v24, v0

    move/from16 v25, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v1

    move-object/from16 v31, v8

    move-object/from16 v32, p15

    .line 808
    invoke-static/range {v16 .. v35}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3e
    move-object v14, v1

    move-object v11, v3

    move-object v15, v8

    move-object v3, v9

    move-object v8, v10

    move v5, v13

    move-object/from16 v6, v36

    move v9, v0

    move v10, v2

    move-object v13, v7

    move-object/from16 v7, v37

    move/from16 v39, v12

    move-object v12, v4

    move/from16 v4, v39

    .line 826
    :goto_33
    invoke-interface/range {p15 .. p15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_3f

    new-instance v19, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v38, v2

    move-object/from16 v2, p1

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$15;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v38

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3f
    return-void
.end method

.method private static final BasicTextField$lambda$21(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextFieldValue;"
        }
    .end annotation

    .line 614
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1050
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method

.method private static final BasicTextField$lambda$22(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ")V"
        }
    .end annotation

    .line 1051
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final BasicTextField$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 629
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1053
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final BasicTextField$lambda$26(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1054
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const v0, 0x76b52065

    .line 415
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(TextFieldCursorHandle)417@20797L128:BasicTextField.kt#423gt5"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 435
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 415
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.TextFieldCursorHandle (BasicTextField.kt:414)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const v0, -0x19625bfc

    .line 418
    const-string v1, "CC(remember):BasicTextField.kt#9igjgp"

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 951
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_5

    .line 952
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_6

    .line 419
    :cond_5
    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$cursorHandleState$2$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$cursorHandleState$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 954
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 418
    :cond_6
    check-cast v2, Landroidx/compose/runtime/State;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 421
    invoke-static {v2}, Landroidx/compose/foundation/text/BasicTextFieldKt;->TextFieldCursorHandle$lambda$9(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, -0x12e681fc

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "422@21014L142,428@21236L87,421@20971L426"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v0, -0x196240ce

    .line 423
    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 957
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_7

    .line 958
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_8

    .line 423
    :cond_7
    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$1$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$1$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    move-object v2, v0

    check-cast v2, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 960
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 423
    :cond_8
    move-object v0, v2

    check-cast v0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 428
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const v3, -0x19622545

    .line 429
    invoke-static {p1, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 963
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_9

    .line 964
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_a

    .line 429
    :cond_9
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$2$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 966
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 429
    :cond_a
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v2, p0, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 432
    sget-wide v3, Landroidx/compose/foundation/text/BasicTextFieldKt;->MinTouchTargetSizeForHandles:J

    const/16 v6, 0x180

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, p1

    .line 422
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-USBMPiE(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 421
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_3

    :cond_b
    const v0, -0x12e006c2

    .line 434
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 435
    :cond_c
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_d

    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$3;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldCursorHandle$3;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_d
    return-void
.end method

.method private static final TextFieldCursorHandle$lambda$9(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;"
        }
    .end annotation

    .line 1047
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    return-object p0
.end method

.method public static final TextFieldSelectionHandles(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    const v0, 0x78b77004

    .line 440
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(TextFieldSelectionHandles)441@21601L149,464@22479L150:BasicTextField.kt#423gt5"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 486
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 440
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.TextFieldSelectionHandles (BasicTextField.kt:439)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const v0, -0x763773a6

    .line 442
    const-string v11, "CC(remember):BasicTextField.kt#9igjgp"

    invoke-static {p1, v0, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 969
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 970
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 443
    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$startHandleState$2$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$startHandleState$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 972
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 442
    :cond_5
    check-cast v0, Landroidx/compose/runtime/State;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 447
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->TextFieldSelectionHandles$lambda$13(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_a

    const v1, -0x50b4017b

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "448@21841L167,456@22219L86,447@21795L584"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v1, -0x76375594

    .line 449
    invoke-static {p1, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 975
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    .line 976
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_7

    .line 449
    :cond_6
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$1$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$1$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 978
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 449
    :cond_7
    move-object v1, v2

    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 455
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->TextFieldSelectionHandles$lambda$13(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    .line 456
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->TextFieldSelectionHandles$lambda$13(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->getHandlesCrossed()Z

    move-result v4

    .line 457
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const v2, -0x763726a5

    invoke-static {p1, v2, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 981
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_8

    .line 982
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_9

    .line 457
    :cond_8
    new-instance v2, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$2$1;

    invoke-direct {v2, p0, v12}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 984
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 457
    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, p0, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 460
    sget-wide v5, Landroidx/compose/foundation/text/BasicTextFieldKt;->MinTouchTargetSizeForHandles:J

    const/16 v9, 0x6030

    const/4 v10, 0x0

    const/4 v2, 0x1

    move-object v8, p1

    .line 448
    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle-pzduO1o(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 447
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_3

    :cond_a
    const v0, -0x50ab3523

    .line 462
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_3
    const v0, -0x763705e5

    .line 465
    invoke-static {p1, v0, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 987
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 988
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 466
    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$endHandleState$2$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$endHandleState$2$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 990
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 465
    :cond_b
    check-cast v0, Landroidx/compose/runtime/State;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 470
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->TextFieldSelectionHandles$lambda$17(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, -0x50a6bb3a

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "471@22718L168,479@23094L87,470@22672L583"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v1, -0x7636e7f3

    .line 472
    invoke-static {p1, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 993
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_c

    .line 994
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_d

    .line 472
    :cond_c
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$3$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$3$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 996
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 472
    :cond_d
    move-object v1, v2

    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 478
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->TextFieldSelectionHandles$lambda$17(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    .line 479
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->TextFieldSelectionHandles$lambda$17(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;->getHandlesCrossed()Z

    move-result v4

    .line 480
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const v2, -0x7636b944

    invoke-static {p1, v2, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 999
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_e

    .line 1000
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_f

    .line 480
    :cond_e
    new-instance v2, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$4$1;

    invoke-direct {v2, p0, v12}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$4$1;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lkotlin/coroutines/Continuation;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 1002
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 480
    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, p0, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 483
    sget-wide v5, Landroidx/compose/foundation/text/BasicTextFieldKt;->MinTouchTargetSizeForHandles:J

    const/16 v9, 0x6030

    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object v8, p1

    .line 471
    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle-pzduO1o(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 470
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_4

    :cond_10
    const v0, -0x509df2a3

    .line 485
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 486
    :cond_11
    :goto_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_12

    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$5;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/BasicTextFieldKt$TextFieldSelectionHandles$5;-><init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method private static final TextFieldSelectionHandles$lambda$13(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;"
        }
    .end annotation

    .line 1048
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    return-object p0
.end method

.method private static final TextFieldSelectionHandles$lambda$17(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;"
        }
    .end annotation

    .line 1049
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;

    return-object p0
.end method

.method public static final synthetic access$BasicTextField$lambda$21(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$21(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BasicTextField$lambda$22(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$22(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    return-void
.end method

.method public static final synthetic access$BasicTextField$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BasicTextField$lambda$26(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$26(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDefaultTextFieldDecorator$p()Landroidx/compose/foundation/text/input/TextFieldDecorator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/BasicTextFieldKt;->DefaultTextFieldDecorator:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    return-object v0
.end method
