.class Lcom/android/camera/EffectAudioImage$AudioImageHandler;
.super Landroid/os/Handler;
.source "EffectAudioImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectAudioImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectAudioImage;


# direct methods
.method public constructor <init>(Lcom/android/camera/EffectAudioImage;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;->this$0:Lcom/android/camera/EffectAudioImage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;->this$0:Lcom/android/camera/EffectAudioImage;

    iget-object v1, v0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;->this$0:Lcom/android/camera/EffectAudioImage;

    iget-object v2, v2, Lcom/android/camera/EffectAudioImage;->mTitle:Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/camera/ui/AudioImageView;->setAudioImage([BLjava/lang/String;II)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;->this$0:Lcom/android/camera/EffectAudioImage;

    iget-object v0, v0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;->this$0:Lcom/android/camera/EffectAudioImage;

    iget-object v0, v0, Lcom/android/camera/EffectAudioImage;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;->this$0:Lcom/android/camera/EffectAudioImage;

    iget-object v1, v0, Lcom/android/camera/EffectAudioImage;->mAudioImageView:Lcom/android/camera/ui/AudioImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/AudioImageView;->startRecordAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_2
    const-string v0, "EffectAudioImage"

    const-string v1, "remove all view!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/camera/EffectAudioImage$AudioImageHandler;->this$0:Lcom/android/camera/EffectAudioImage;

    #calls: Lcom/android/camera/EffectAudioImage;->removeAllView()V
    invoke-static {v0}, Lcom/android/camera/EffectAudioImage;->access$000(Lcom/android/camera/EffectAudioImage;)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
