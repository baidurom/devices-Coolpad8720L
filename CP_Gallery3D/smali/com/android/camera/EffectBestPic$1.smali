.class Lcom/android/camera/EffectBestPic$1;
.super Ljava/lang/Object;
.source "EffectBestPic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectBestPic;->refreshSwitchFaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectBestPic;


# direct methods
.method constructor <init>(Lcom/android/camera/EffectBestPic;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/EffectBestPic$1;->this$0:Lcom/android/camera/EffectBestPic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/EffectBestPic$1;->this$0:Lcom/android/camera/EffectBestPic;

    #getter for: Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/EffectBestPic;->access$000(Lcom/android/camera/EffectBestPic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/camera/EffectBestPic$1;->this$0:Lcom/android/camera/EffectBestPic;

    #getter for: Lcom/android/camera/EffectBestPic;->mBestPickHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/EffectBestPic;->access$000(Lcom/android/camera/EffectBestPic;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1773

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    :cond_0
    return-void
.end method
