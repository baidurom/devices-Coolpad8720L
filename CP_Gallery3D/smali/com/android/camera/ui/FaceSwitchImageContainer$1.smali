.class Lcom/android/camera/ui/FaceSwitchImageContainer$1;
.super Ljava/lang/Thread;
.source "FaceSwitchImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceSwitchImageContainer;->loadCircleBitmap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

.field final synthetic val$passOrientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceSwitchImageContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

    iput p2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->val$passOrientation:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 262
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

    iget-object v2, v2, Lcom/android/camera/ui/FaceSwitchImageContainer;->resIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

    iget-object v2, v2, Lcom/android/camera/ui/FaceSwitchImageContainer;->mBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 264
    .local v0, circleBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

    iget-object v3, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

    iget v3, v3, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleWidth:I

    iget-object v4, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

    iget v4, v4, Lcom/android/camera/ui/FaceSwitchImageContainer;->iSwitchCircleHeight:I

    iget v5, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->val$passOrientation:I

    #calls: Lcom/android/camera/ui/FaceSwitchImageContainer;->getCircleBitmap(IIII)Landroid/graphics/Bitmap;
    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/camera/ui/FaceSwitchImageContainer;->access$000(Lcom/android/camera/ui/FaceSwitchImageContainer;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    iget-object v2, p0, Lcom/android/camera/ui/FaceSwitchImageContainer$1;->this$0:Lcom/android/camera/ui/FaceSwitchImageContainer;

    iget-object v2, v2, Lcom/android/camera/ui/FaceSwitchImageContainer;->mBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v0           #circleBitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
