.class Lcom/android/camera/EffectNightShot$1;
.super Ljava/lang/Object;
.source "EffectNightShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectNightShot;->onProcess(ILandroid/media/ImageEffectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectNightShot;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectNightShot;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/EffectNightShot$1;->this$0:Lcom/android/camera/EffectNightShot;

    iput p2, p0, Lcom/android/camera/EffectNightShot$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/EffectNightShot$1;->this$0:Lcom/android/camera/EffectNightShot;

    iget v1, p0, Lcom/android/camera/EffectNightShot$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEffectBase;->showProcess(I)V

    .line 113
    return-void
.end method
