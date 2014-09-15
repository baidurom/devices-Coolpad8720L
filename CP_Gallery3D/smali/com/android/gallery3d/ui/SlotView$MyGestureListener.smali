.class Lcom/android/gallery3d/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1
    .parameter "byLongPress"

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 949
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 950
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Listener;->onUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 955
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 961
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 962
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 963
    .local v0, scrollLimit:I
    if-nez v0, :cond_0

    .line 968
    :goto_0
    return v2

    .line 964
    :cond_0
    move v1, p4

    .line 965
    .local v1, velocity:F
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$1500(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 966
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1600(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1600(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 967
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 968
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 996
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 997
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1900(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 1000
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v1

    .line 1001
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, bucketId:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 1007
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I
    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/SlotView;->access$2002(Lcom/android/gallery3d/ui/SlotView;I)I

    .line 1008
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const/4 v3, 0x1

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->access$2102(Lcom/android/gallery3d/ui/SlotView;Z)Z

    .line 1009
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->access$802(Lcom/android/gallery3d/ui/SlotView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1011
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/gallery3d/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    .end local v0           #bucketId:I
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    goto/16 :goto_0

    .end local v1           #index:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    throw v2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x0

    .line 974
    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 975
    move v0, p4

    .line 976
    .local v0, distance:F
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1500(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v4}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    .line 978
    .local v1, overDistance:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1700(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 979
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/Paper;->overScroll(F)V

    .line 981
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 982
    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 933
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 934
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 936
    :try_start_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 943
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 945
    :goto_0
    return-void

    .line 937
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 938
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 939
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 940
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 987
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 988
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1900(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v4

    .line 989
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 990
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_0
.end method
