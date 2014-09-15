.class Lcom/android/camera/EffectNightShot$2;
.super Ljava/lang/Object;
.source "EffectNightShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectNightShot;->SetThumbnail([BLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectNightShot;

.field updateCount:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectNightShot;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/EffectNightShot$2;->this$0:Lcom/android/camera/EffectNightShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/android/camera/EffectNightShot$2;->this$0:Lcom/android/camera/EffectNightShot;

    #getter for: Lcom/android/camera/EffectNightShot;->mUpdateCount:I
    invoke-static {v0}, Lcom/android/camera/EffectNightShot;->access$000(Lcom/android/camera/EffectNightShot;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/EffectNightShot$2;->updateCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/EffectNightShot$2;->this$0:Lcom/android/camera/EffectNightShot;

    iget v1, p0, Lcom/android/camera/EffectNightShot$2;->updateCount:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEffectBase;->showProcess(I)V

    .line 127
    return-void
.end method
