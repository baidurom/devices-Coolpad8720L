.class Lcom/marvell/fmradio/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 954
    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->h(Lcom/marvell/fmradio/MainActivity;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->i(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    :cond_0
    const-string v0, "FMRadioMainUI"

    const-string v1, "<inspectPhoneState>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v3}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 960
    iget-object v0, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v3}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 961
    iget-object v0, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v3}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 962
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    const-class v2, Lcom/marvell/fmradio/FMService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 964
    iget-object v1, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 965
    iget-object v0, p0, Lcom/marvell/fmradio/k;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 969
    :cond_1
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 970
    :catch_0
    move-exception v0

    .line 971
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
