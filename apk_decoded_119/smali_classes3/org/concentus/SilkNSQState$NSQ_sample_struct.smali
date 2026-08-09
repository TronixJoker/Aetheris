.class Lorg/concentus/SilkNSQState$NSQ_sample_struct;
.super Ljava/lang/Object;
.source "SilkNSQState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/concentus/SilkNSQState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NSQ_sample_struct"
.end annotation


# instance fields
.field LF_AR_Q14:I

.field LPC_exc_Q14:I

.field Q_Q10:I

.field RD_Q10:I

.field sLTP_shp_Q14:I

.field final synthetic this$0:Lorg/concentus/SilkNSQState;

.field xq_Q14:I


# direct methods
.method private constructor <init>(Lorg/concentus/SilkNSQState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->this$0:Lorg/concentus/SilkNSQState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/concentus/SilkNSQState;Lorg/concentus/SilkNSQState$NSQ_sample_struct-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/concentus/SilkNSQState$NSQ_sample_struct;-><init>(Lorg/concentus/SilkNSQState;)V

    return-void
.end method


# virtual methods
.method Assign(Lorg/concentus/SilkNSQState$NSQ_sample_struct;)V
    .locals 1

    .line 130
    iget v0, p1, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    iput v0, p0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    .line 131
    iget v0, p1, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    iput v0, p0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 132
    iget v0, p1, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    iput v0, p0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    .line 133
    iget v0, p1, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    iput v0, p0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    .line 134
    iget v0, p1, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    iput v0, p0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    .line 135
    iget p1, p1, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    iput p1, p0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    return-void
.end method
