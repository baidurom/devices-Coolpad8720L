.class Lcom/android/camera/EffectPickAction$3;
.super Ljava/lang/Object;
.source "EffectPickAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectPickAction;->onProcess(ILandroid/media/ImageEffectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectPickAction;

.field updataCount:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectPickAction;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    #getter for: Lcom/android/camera/EffectPickAction;->mUpdateCount:I
    invoke-static {v0}, Lcom/android/camera/EffectPickAction;->access$200(Lcom/android/camera/EffectPickAction;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectPickAction$3;->updataCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    iget-boolean v0, v0, Lcom/android/camera/EffectPickAction;->isUpdateStart:Z

    if-nez v0, :cond_0

    .line 198
    iput v5, p0, Lcom/android/camera/EffectPickAction$3;->updataCount:I

    .line 199
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    #setter for: Lcom/android/camera/EffectPickAction;->mUpdateCount:I
    invoke-static {v0, v5}, Lcom/android/camera/EffectPickAction;->access$202(Lcom/android/camera/EffectPickAction;I)I

    .line 200
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/EffectPickAction;->isUpdateStart:Z

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    iget-object v0, v0, Lcom/android/camera/CameraEffectBase;->mIndicatorView:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/EffectPickAction$3;->updataCount:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    const v1, 0x7f10009b

    const v2, 0x7f04002b

    iget-object v3, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    iget-object v3, v3, Lcom/android/camera/EffectPickAction;->mViewContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x14

    const/16 v6, 0x50

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraEffectBase;->initProcessBar(IILandroid/view/ViewGroup;III)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$3;->this$0:Lcom/android/camera/EffectPickAction;

    iget v1, p0, Lcom/android/camera/EffectPickAction$3;->updataCount:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEffectBase;->showProcess(I)V

    .line 210
    return-void
.end method
