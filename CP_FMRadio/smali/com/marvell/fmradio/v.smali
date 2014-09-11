.class Lcom/marvell/fmradio/v;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/marvell/fmradio/v;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/marvell/fmradio/v;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->disableRx()I

    .line 238
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.marvell.fmradio.DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/marvell/fmradio/v;->C:Lcom/marvell/fmradio/FMService;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/FMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
