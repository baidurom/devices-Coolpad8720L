.class Lcom/marvell/fmradio/al;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;

.field final synthetic bm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/marvell/fmradio/al;->C:Lcom/marvell/fmradio/FMService;

    iput-object p2, p0, Lcom/marvell/fmradio/al;->bm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/marvell/fmradio/al;->C:Lcom/marvell/fmradio/FMService;

    iget-object v1, p0, Lcom/marvell/fmradio/al;->bm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/marvell/fmradio/FMService;->a(Lcom/marvell/fmradio/FMService;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/marvell/fmradio/al;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/al;->bm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/marvell/fmmanager/FMRadioManager;->startRecording(Ljava/lang/String;)I

    move-result v0

    .line 392
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.marvell.fmradio.RECORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/marvell/fmradio/al;->C:Lcom/marvell/fmradio/FMService;

    invoke-virtual {v2, v1}, Lcom/marvell/fmradio/FMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    const/4 v0, 0x1

    sput-boolean v0, Lcom/marvell/fmradio/FMService;->T:Z

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
