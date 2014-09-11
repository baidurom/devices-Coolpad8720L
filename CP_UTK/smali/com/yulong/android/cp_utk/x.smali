.class Lcom/yulong/android/cp_utk/x;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bp:Lcom/yulong/android/cp_utk/UtkDialogActivity;


# direct methods
.method constructor <init>(Lcom/yulong/android/cp_utk/UtkDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yulong/android/cp_utk/x;->bp:Lcom/yulong/android/cp_utk/UtkDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/x;->bp:Lcom/yulong/android/cp_utk/UtkDialogActivity;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "RES_ID_TIMEOUT"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/yulong/android/cp_utk/x;->bp:Lcom/yulong/android/cp_utk/UtkDialogActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(Lcom/yulong/android/cp_utk/UtkDialogActivity;I)V

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/x;->bp:Lcom/yulong/android/cp_utk/UtkDialogActivity;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->t()V

    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "RES_ID_END_SESSION"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yulong/android/cp_utk/x;->bp:Lcom/yulong/android/cp_utk/UtkDialogActivity;

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(Lcom/yulong/android/cp_utk/UtkDialogActivity;I)V

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
