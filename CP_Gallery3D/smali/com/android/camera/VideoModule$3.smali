.class Lcom/android/camera/VideoModule$3;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->readVideoPreferences()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$3500(Lcom/android/camera/VideoModule;)V

    .line 870
    iget-object v0, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)V

    .line 871
    iget-object v0, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2500(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2500(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 874
    :cond_0
    return-void
.end method
