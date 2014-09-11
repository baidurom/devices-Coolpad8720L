.class Lcom/yulong/android/cp_utk/w;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bo:Lcom/yulong/android/cp_utk/UtkInputActivity;


# direct methods
.method constructor <init>(Lcom/yulong/android/cp_utk/UtkInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yulong/android/cp_utk/w;->bo:Lcom/yulong/android/cp_utk/UtkInputActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/w;->bo:Lcom/yulong/android/cp_utk/UtkInputActivity;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/yulong/android/cp_utk/w;->bo:Lcom/yulong/android/cp_utk/UtkInputActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(Lcom/yulong/android/cp_utk/UtkInputActivity;I)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/w;->bo:Lcom/yulong/android/cp_utk/UtkInputActivity;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->t()V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/w;->bo:Lcom/yulong/android/cp_utk/UtkInputActivity;

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(Lcom/yulong/android/cp_utk/UtkInputActivity;I)V

    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
