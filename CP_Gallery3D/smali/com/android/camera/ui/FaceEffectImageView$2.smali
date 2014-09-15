.class Lcom/android/camera/ui/FaceEffectImageView$2;
.super Landroid/os/Handler;
.source "FaceEffectImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceEffectImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceEffectImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceEffectImageView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/camera/ui/FaceEffectImageView$2;->this$0:Lcom/android/camera/ui/FaceEffectImageView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 520
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 529
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 530
    return-void

    .line 522
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView$2;->this$0:Lcom/android/camera/ui/FaceEffectImageView;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/ui/FaceEffectImageView;->isTimeOut:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/FaceEffectImageView;->access$002(Lcom/android/camera/ui/FaceEffectImageView;Z)Z

    .line 523
    iget-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView$2;->this$0:Lcom/android/camera/ui/FaceEffectImageView;

    #calls: Lcom/android/camera/ui/FaceEffectImageView;->doTimeOutActionUp()V
    invoke-static {v0}, Lcom/android/camera/ui/FaceEffectImageView;->access$100(Lcom/android/camera/ui/FaceEffectImageView;)V

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
    .end packed-switch
.end method
