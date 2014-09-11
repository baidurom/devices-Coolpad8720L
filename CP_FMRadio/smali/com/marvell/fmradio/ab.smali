.class Lcom/marvell/fmradio/ab;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aX:Lcom/marvell/fmradio/af;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/af;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/marvell/fmradio/ab;->aX:Lcom/marvell/fmradio/af;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/marvell/fmradio/ab;->aX:Lcom/marvell/fmradio/af;

    iget-object v0, v0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->j(Lcom/marvell/fmradio/FMService;)V

    .line 526
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    return-void
.end method
