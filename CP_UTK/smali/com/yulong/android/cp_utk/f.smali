.class final Lcom/yulong/android/cp_utk/f;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 70
    :pswitch_0
    const/4 v0, 0x0

    .line 71
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/yulong/android/cp_utk/UtkMenuActivity;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;

    .line 74
    :cond_0
    if-nez v0, :cond_1

    .line 75
    const-string v0, "mActivity is null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(Lcom/yulong/android/cp_utk/UtkMenuActivity;Z)Z

    .line 79
    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(Lcom/yulong/android/cp_utk/UtkMenuActivity;I)V

    goto :goto_0

    .line 82
    :cond_2
    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(Lcom/yulong/android/cp_utk/UtkMenuActivity;I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
