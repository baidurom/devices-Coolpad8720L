.class Lcom/marvell/fmradio/ah;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/marvell/fmradio/ah;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/marvell/fmradio/ah;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->scanAll()I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/marvell/fmradio/ah;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v1}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/ah;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v2}, Lcom/marvell/fmradio/FMService;->f(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmradio/c/e;

    move-result-object v2

    iget v2, v2, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-virtual {v1, v2}, Lcom/marvell/fmmanager/FMRadioManager;->setChannel(I)I

    .line 296
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 297
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    :goto_0
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SCANALL>isStopScall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/marvell/fmradio/FMService;->w()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/marvell/fmradio/FMService;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    .line 310
    :goto_1
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    goto :goto_1
.end method
