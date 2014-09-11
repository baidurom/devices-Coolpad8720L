.class Lcom/marvell/fmradio/i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/marvell/fmradio/i;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 878
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 879
    const-string v1, "action_current_station_play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    const-string v0, "currentSelectFrequency"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 881
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<mPlayRadioReceiver> frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v1, p0, Lcom/marvell/fmradio/i;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    iput v0, v1, Lcom/marvell/fmradio/c/e;->ci:I

    .line 883
    iget-object v0, p0, Lcom/marvell/fmradio/i;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SETCHANNEL"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 885
    :cond_0
    return-void
.end method
