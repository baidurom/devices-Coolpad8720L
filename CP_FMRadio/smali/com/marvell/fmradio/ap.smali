.class Lcom/marvell/fmradio/ap;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->stopRecording()I

    move-result v0

    .line 409
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.marvell.fmradio.STOPRECORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-virtual {v2, v1}, Lcom/marvell/fmradio/FMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    if-nez v0, :cond_0

    .line 412
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v2}, Lcom/marvell/fmradio/FMService;->g(Lcom/marvell/fmradio/FMService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 414
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    const/4 v0, 0x0

    sput-boolean v0, Lcom/marvell/fmradio/FMService;->T:Z

    .line 416
    iget-object v0, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v2}, Lcom/marvell/fmradio/FMService;->g(Lcom/marvell/fmradio/FMService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/marvell/fmradio/FMService;->a(Lcom/marvell/fmradio/FMService;Ljava/io/File;)Ljava/io/File;

    .line 417
    iget-object v0, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->h(Lcom/marvell/fmradio/FMService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->h(Lcom/marvell/fmradio/FMService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    iget-object v1, p0, Lcom/marvell/fmradio/ap;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v1}, Lcom/marvell/fmradio/FMService;->h(Lcom/marvell/fmradio/FMService;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/FMService;->b(Lcom/marvell/fmradio/FMService;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 419
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<STOPRECORD_ACTION>uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    return-void
.end method
