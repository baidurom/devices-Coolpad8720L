.class Lcom/android/camera/EffectPickClear$1;
.super Ljava/lang/Object;
.source "EffectPickClear.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectPickClear;->onProcess(ILandroid/media/ImageEffectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectPickClear;

.field final synthetic val$process:I

.field value:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectPickClear;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/camera/EffectPickClear$1;->this$0:Lcom/android/camera/EffectPickClear;

    iput p2, p0, Lcom/android/camera/EffectPickClear$1;->val$process:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/EffectPickClear$1;->this$0:Lcom/android/camera/EffectPickClear;

    iget-byte v0, v0, Lcom/android/camera/EffectPickClear;->mProcessMode:B

    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    .line 134
    iget v0, p0, Lcom/android/camera/EffectPickClear$1;->val$process:I

    iput v0, p0, Lcom/android/camera/EffectPickClear$1;->value:I

    .line 135
    iget v0, p0, Lcom/android/camera/EffectPickClear$1;->value:I

    if-ltz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/EffectPickClear$1;->this$0:Lcom/android/camera/EffectPickClear;

    iget v1, p0, Lcom/android/camera/EffectPickClear$1;->value:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEffectBase;->showProcess(I)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectPickClear$1;->this$0:Lcom/android/camera/EffectPickClear;

    iget-byte v0, v0, Lcom/android/camera/EffectPickClear;->mProcessMode:B

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/EffectPickClear$1;->this$0:Lcom/android/camera/EffectPickClear;

    invoke-virtual {v0}, Lcom/android/camera/CameraEffectBase;->hideProcess()V

    .line 140
    iget v0, p0, Lcom/android/camera/EffectPickClear$1;->val$process:I

    iput v0, p0, Lcom/android/camera/EffectPickClear$1;->value:I

    .line 141
    iget-object v0, p0, Lcom/android/camera/EffectPickClear$1;->this$0:Lcom/android/camera/EffectPickClear;

    iget v1, p0, Lcom/android/camera/EffectPickClear$1;->value:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectPickClear;->showProgressDialog(I)V

    .line 142
    iget v0, p0, Lcom/android/camera/EffectPickClear$1;->value:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/EffectPickClear$1;->this$0:Lcom/android/camera/EffectPickClear;

    invoke-virtual {v0}, Lcom/android/camera/EffectPickClear;->hideProgressDialog()V

    goto :goto_0
.end method
