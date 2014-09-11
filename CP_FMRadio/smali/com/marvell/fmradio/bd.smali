.class Lcom/marvell/fmradio/bd;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/marvell/fmradio/bd;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2029
    packed-switch p1, :pswitch_data_0

    .line 2042
    :goto_0
    :pswitch_0
    return-void

    .line 2039
    :pswitch_1
    iget-object v0, p0, Lcom/marvell/fmradio/bd;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->m(Lcom/marvell/fmradio/MainActivity;)V

    goto :goto_0

    .line 2029
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
