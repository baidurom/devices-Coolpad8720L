.class Lcom/android/camera/EffectArcsoftHdr$1;
.super Ljava/lang/Object;
.source "EffectArcsoftHdr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectArcsoftHdr;->onProcess(ILandroid/media/ImageEffectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectArcsoftHdr;

.field final synthetic val$process:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectArcsoftHdr;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/EffectArcsoftHdr$1;->this$0:Lcom/android/camera/EffectArcsoftHdr;

    iput p2, p0, Lcom/android/camera/EffectArcsoftHdr$1;->val$process:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr$1;->this$0:Lcom/android/camera/EffectArcsoftHdr;

    iget v1, p0, Lcom/android/camera/EffectArcsoftHdr$1;->val$process:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEffectBase;->showProcess(I)V

    .line 133
    return-void
.end method
