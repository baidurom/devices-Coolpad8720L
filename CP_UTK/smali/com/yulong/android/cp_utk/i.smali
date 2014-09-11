.class Lcom/yulong/android/cp_utk/i;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic r:Lcom/yulong/android/cp_utk/j;


# direct methods
.method constructor <init>(Lcom/yulong/android/cp_utk/j;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/yulong/android/cp_utk/i;->r:Lcom/yulong/android/cp_utk/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :goto_0
    return-void

    .line 453
    :pswitch_0
    const-string v0, "SELECT ITEM EXPIRED"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/yulong/android/cp_utk/i;->r:Lcom/yulong/android/cp_utk/j;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/j;->a(Lcom/yulong/android/cp_utk/j;)V

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
