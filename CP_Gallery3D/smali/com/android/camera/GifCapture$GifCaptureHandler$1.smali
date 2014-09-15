.class Lcom/android/camera/GifCapture$GifCaptureHandler$1;
.super Ljava/lang/Object;
.source "GifCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/GifCapture$GifCaptureHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/GifCapture$GifCaptureHandler;

.field value:I


# direct methods
.method constructor <init>(Lcom/android/camera/GifCapture$GifCaptureHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler$1;->this$1:Lcom/android/camera/GifCapture$GifCaptureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler$1;->this$1:Lcom/android/camera/GifCapture$GifCaptureHandler;

    iget-object v0, v0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifIndex:I
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$1000(Lcom/android/camera/GifCapture;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler$1;->value:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler$1;->this$1:Lcom/android/camera/GifCapture$GifCaptureHandler;

    iget-object v0, v0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    iget-object v0, v0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler$1;->value:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setValue(I)V

    .line 415
    return-void
.end method
