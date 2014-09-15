.class Lcom/android/camera/EffectPickAction$2;
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

.field final synthetic val$process:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectPickAction;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/EffectPickAction$2;->this$0:Lcom/android/camera/EffectPickAction;

    iput p2, p0, Lcom/android/camera/EffectPickAction$2;->val$process:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$2;->this$0:Lcom/android/camera/EffectPickAction;

    invoke-virtual {v0}, Lcom/android/camera/CameraEffectBase;->hideProcess()V

    .line 180
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$2;->this$0:Lcom/android/camera/EffectPickAction;

    iget v1, p0, Lcom/android/camera/EffectPickAction$2;->val$process:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectPickAction;->showProgressDialog(I)V

    .line 181
    iget v0, p0, Lcom/android/camera/EffectPickAction$2;->val$process:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$2;->this$0:Lcom/android/camera/EffectPickAction;

    invoke-virtual {v0}, Lcom/android/camera/EffectPickAction;->hideProgressDialog()V

    .line 184
    :cond_0
    return-void
.end method
