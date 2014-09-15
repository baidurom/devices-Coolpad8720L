.class Lcom/android/camera/ui/CameraBottomBar$1;
.super Landroid/os/Handler;
.source "CameraBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraBottomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 231
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 234
    .local v1, index:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 235
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget-object v2, v2, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget-object v2, v2, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget-object v2, v2, Lcom/android/camera/ui/CameraBottomBar;->mFloatViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget-object v3, v3, Lcom/android/camera/ui/CameraBottomBar;->mAnimFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget v3, v2, Lcom/android/camera/ui/CameraBottomBar;->nChildCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/camera/ui/CameraBottomBar;->nChildCount:I

    .line 239
    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget v2, v2, Lcom/android/camera/ui/CameraBottomBar;->nChildCount:I

    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraBottomBar;->getLimitViewCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    iget-object v3, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraBottomBar;->getLimitViewCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/camera/ui/CameraBottomBar;->nChildCount:I

    .line 242
    :cond_0
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #index:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraBottomBar$1;->this$0:Lcom/android/camera/ui/CameraBottomBar;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
