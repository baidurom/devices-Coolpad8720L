.class Lcom/android/camera/EffectBestPic$UpdateGuageTask;
.super Ljava/lang/Object;
.source "EffectBestPic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectBestPic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateGuageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectBestPic;

.field updateCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/EffectBestPic;I)V
    .locals 0
    .parameter
    .parameter "count"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/camera/EffectBestPic$UpdateGuageTask;->this$0:Lcom/android/camera/EffectBestPic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput p2, p0, Lcom/android/camera/EffectBestPic$UpdateGuageTask;->updateCount:I

    .line 259
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/EffectBestPic$UpdateGuageTask;->this$0:Lcom/android/camera/EffectBestPic;

    iget v1, p0, Lcom/android/camera/EffectBestPic$UpdateGuageTask;->updateCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraEffectBase;->showProcess(IZ)V

    .line 264
    return-void
.end method
