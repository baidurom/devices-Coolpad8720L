.class Lcom/yulong/android/cp_utk/v;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bb:Lcom/yulong/android/cp_utk/ToneDialog;


# direct methods
.method constructor <init>(Lcom/yulong/android/cp_utk/ToneDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yulong/android/cp_utk/v;->bb:Lcom/yulong/android/cp_utk/ToneDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/v;->bb:Lcom/yulong/android/cp_utk/ToneDialog;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/ToneDialog;->a(Lcom/yulong/android/cp_utk/ToneDialog;I)V

    .line 51
    iget-object v0, p0, Lcom/yulong/android/cp_utk/v;->bb:Lcom/yulong/android/cp_utk/ToneDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0xda
        :pswitch_0
    .end packed-switch
.end method
