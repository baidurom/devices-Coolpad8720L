.class Lcom/marvell/fmradio/ba;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1860
    iput-object p1, p0, Lcom/marvell/fmradio/ba;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1862
    invoke-static {}, Lcom/marvell/fmradio/MainActivity;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/marvell/fmradio/ba;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->g(Lcom/marvell/fmradio/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/ba;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->g(Lcom/marvell/fmradio/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1864
    :cond_0
    return-void
.end method
