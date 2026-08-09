.class public final Lcom/xiaozhi/android/model/AudioParams;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/model/AudioParams$$serializer;,
        Lcom/xiaozhi/android/model/AudioParams$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \'2\u00020\u0001:\u0002&\'B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tB=\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\rJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001\u00a2\u0006\u0002\u0008%R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006("
    }
    d2 = {
        "Lcom/xiaozhi/android/model/AudioParams;",
        "",
        "format",
        "",
        "sample_rate",
        "",
        "channels",
        "frame_duration",
        "<init>",
        "(Ljava/lang/String;III)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;IIILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getFormat",
        "()Ljava/lang/String;",
        "getSample_rate",
        "()I",
        "getChannels",
        "getFrame_duration",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$app_release",
        "$serializer",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/xiaozhi/android/model/AudioParams$Companion;


# instance fields
.field private final channels:I

.field private final format:Ljava/lang/String;

.field private final frame_duration:I

.field private final sample_rate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/model/AudioParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/model/AudioParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/model/AudioParams;->Companion:Lcom/xiaozhi/android/model/AudioParams$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IIILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 24
    sget-object p6, Lcom/xiaozhi/android/model/AudioParams$$serializer;->INSTANCE:Lcom/xiaozhi/android/model/AudioParams$$serializer;

    invoke-virtual {p6}, Lcom/xiaozhi/android/model/AudioParams$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    iput p3, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    iput p4, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    iput p5, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    .line 28
    iput p3, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    .line 29
    iput p4, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/xiaozhi/android/model/AudioParams;Ljava/lang/String;IIIILjava/lang/Object;)Lcom/xiaozhi/android/model/AudioParams;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaozhi/android/model/AudioParams;->copy(Ljava/lang/String;III)Lcom/xiaozhi/android/model/AudioParams;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_release(Lcom/xiaozhi/android/model/AudioParams;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x3

    iget p0, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    return v0
.end method

.method public final copy(Ljava/lang/String;III)Lcom/xiaozhi/android/model/AudioParams;
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaozhi/android/model/AudioParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaozhi/android/model/AudioParams;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/xiaozhi/android/model/AudioParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/xiaozhi/android/model/AudioParams;

    iget-object v1, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    iget v3, p1, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    iget v3, p1, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    iget p1, p1, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChannels()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    return v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrame_duration()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    return v0
.end method

.method public final getSample_rate()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/xiaozhi/android/model/AudioParams;->format:Ljava/lang/String;

    iget v1, p0, Lcom/xiaozhi/android/model/AudioParams;->sample_rate:I

    iget v2, p0, Lcom/xiaozhi/android/model/AudioParams;->channels:I

    iget v3, p0, Lcom/xiaozhi/android/model/AudioParams;->frame_duration:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AudioParams(format="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", sample_rate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
