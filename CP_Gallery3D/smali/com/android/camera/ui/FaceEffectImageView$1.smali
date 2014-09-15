.class Lcom/android/camera/ui/FaceEffectImageView$1;
.super Ljava/lang/Object;
.source "FaceEffectImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceEffectImageView;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceEffectImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceEffectImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/camera/ui/FaceEffectImageView$1;->this$0:Lcom/android/camera/ui/FaceEffectImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/FaceEffectImageView$1;->this$0:Lcom/android/camera/ui/FaceEffectImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceEffectImageView;->drawableLayerMerge()V

    .line 261
    return-void
.end method
