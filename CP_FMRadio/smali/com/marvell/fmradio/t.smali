.class Lcom/marvell/fmradio/t;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/marvell/fmradio/t;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/marvell/fmradio/t;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->disableRx()I

    move-result v0

    .line 225
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISABLE_ACTION isDisable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.marvell.fmradio.DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/marvell/fmradio/t;->C:Lcom/marvell/fmradio/FMService;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/FMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    return-void
.end method
