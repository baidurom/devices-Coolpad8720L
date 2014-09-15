.class Lcom/android/camera/ui/AmbilightView$2;
.super Ljava/lang/Object;
.source "AmbilightView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AmbilightView;->postAmbilightImage([III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AmbilightView;

.field final synthetic val$colors:[I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AmbilightView;[III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/AmbilightView$2;->this$0:Lcom/android/camera/ui/AmbilightView;

    iput-object p2, p0, Lcom/android/camera/ui/AmbilightView$2;->val$colors:[I

    iput p3, p0, Lcom/android/camera/ui/AmbilightView$2;->val$width:I

    iput p4, p0, Lcom/android/camera/ui/AmbilightView$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$2;->this$0:Lcom/android/camera/ui/AmbilightView;

    iget-object v0, v0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    iget-object v1, p0, Lcom/android/camera/ui/AmbilightView$2;->val$colors:[I

    iget v2, p0, Lcom/android/camera/ui/AmbilightView$2;->val$width:I

    iget v3, p0, Lcom/android/camera/ui/AmbilightView$2;->val$height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->setContentImage([III)V

    .line 83
    return-void
.end method
