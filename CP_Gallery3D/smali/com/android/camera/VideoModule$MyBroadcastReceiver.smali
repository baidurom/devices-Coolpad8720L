.class Lcom/android/camera/VideoModule$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    const-string v1, "CAM_VideoModule"

    const-string v2, "--------action.equals(Intent.ACTION_MEDIA_EJECT)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->onStopVideoRecording()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$3000(Lcom/android/camera/VideoModule;)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    const-string v1, "CAM_VideoModule"

    const-string v2, "--------action.equals(Intent.ACTION_MEDIA_MOUNTED)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->onStopVideoRecording()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$3000(Lcom/android/camera/VideoModule;)V

    .line 652
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->updateStorageSpaceAndHint()V

    .line 654
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/camera/ActivityBase;->reuseCameraScreenNail(ZZ)Lcom/android/gallery3d/ui/ScreenNail;

    .line 655
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->refleshLastThumbnail()V

    goto :goto_0

    .line 657
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 658
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 660
    :cond_3
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->setCpuClientAfterStopPreview()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$3100(Lcom/android/camera/VideoModule;)V

    goto :goto_0
.end method
