.class Lcom/marvell/fmradio/aq;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/marvell/fmradio/aq;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 501
    const-string v0, "FMService"

    const-string v1, "waiting Phone Mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/aq;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->b(Lcom/marvell/fmradio/FMService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    goto :goto_0

    .line 508
    :cond_0
    const-string v0, "FMService"

    const-string v1, "Phone Mode changed to normal"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/marvell/fmradio/aq;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/marvell/fmmanager/FMRadioManager;->resume(Z)I

    .line 510
    return-void
.end method
