.class Lcom/android/camera/ui/FilterImageView$1;
.super Landroid/os/Handler;
.source "FilterImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilterImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilterImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilterImageView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/FilterImageView$1;->this$0:Lcom/android/camera/ui/FilterImageView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/FilterImageView$1;->this$0:Lcom/android/camera/ui/FilterImageView;

    iget-object v1, p0, Lcom/android/camera/ui/FilterImageView$1;->this$0:Lcom/android/camera/ui/FilterImageView;

    #getter for: Lcom/android/camera/ui/FilterImageView;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/ui/FilterImageView;->access$000(Lcom/android/camera/ui/FilterImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    return-void
.end method
