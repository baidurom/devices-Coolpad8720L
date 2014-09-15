.class Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mDeltaY:I

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mHadFling:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private calculateDeltaY(F)I
    .locals 5
    .parameter "delta"

    .prologue
    const/high16 v4, 0x3f00

    .line 1198
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-float v2, p1, v4

    float-to-int v2, v2

    .line 1210
    :goto_0
    return v2

    .line 1202
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    .line 1203
    .local v1, size:I
    const v2, 0x3e19999a

    int-to-float v3, v1

    mul-float v0, v2, v3

    .line 1204
    .local v0, maxScrollDistance:F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1205
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v0

    .line 1210
    :goto_1
    add-float v2, p1, v4

    float-to-int v2, v2

    goto :goto_0

    .line 1205
    :cond_1
    neg-float p1, v0

    goto :goto_1

    .line 1207
    :cond_2
    int-to-float v2, v1

    div-float v2, p1, v2

    const v3, 0x3fc90fdb

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float p1, v0, v2

    goto :goto_1
.end method

.method private deleteAfterAnimation(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 1265
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1266
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1267
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1268
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4202(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1269
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$376(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1270
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1271
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1272
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1273
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private flingImages(FF)Z
    .locals 12
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v11, 0x7fffffff

    const/high16 v10, 0x3f00

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1228
    add-float v7, p1, v10

    float-to-int v5, v7

    .line 1229
    .local v5, vx:I
    add-float v7, p2, v10

    float-to-int v6, v7

    .line 1230
    .local v6, vy:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1231
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/gallery3d/ui/PositionController;->flingPage(II)Z

    move-result v9

    .line 1261
    :cond_0
    :goto_0
    return v9

    .line 1233
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_2

    .line 1234
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/ui/PositionController;->flingFilmX(I)Z

    move-result v9

    goto :goto_0

    .line 1238
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v7

    if-eq v7, v11, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1242
    const/16 v7, 0xfa0

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    .line 1243
    .local v4, maxVelocity:I
    const/16 v7, 0x9c4

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    .line 1244
    .local v2, escapeVelocity:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v10}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 1246
    .local v0, centerY:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v2, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v7, v10, :cond_6

    if-lez v6, :cond_4

    move v7, v8

    :goto_1
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-le v0, v10, :cond_5

    move v10, v8

    :goto_2
    if-ne v7, v10, :cond_6

    move v3, v8

    .line 1249
    .local v3, fastEnough:Z
    :goto_3
    if-eqz v3, :cond_0

    .line 1250
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1251
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v10}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lcom/android/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result v1

    .line 1252
    .local v1, duration:I
    if-ltz v1, :cond_0

    .line 1253
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    if-gez v6, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 1254
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1257
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v7, v11}, Lcom/android/gallery3d/ui/PhotoView;->access$3902(Lcom/android/gallery3d/ui/PhotoView;I)I

    move v9, v8

    .line 1258
    goto/16 :goto_0

    .end local v1           #duration:I
    .end local v3           #fastEnough:Z
    :cond_4
    move v7, v9

    .line 1246
    goto :goto_1

    :cond_5
    move v10, v9

    goto :goto_2

    :cond_6
    move v3, v9

    goto :goto_3
.end method

.method private startExtraScalingIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1352
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1355
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1356
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1358
    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1361
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1364
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1366
    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v9, 0x3f80

    .line 1137
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v6, :cond_0

    move v6, v7

    .line 1165
    :goto_0
    return v6

    .line 1138
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v6}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v6}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    .line 1140
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v4

    .line 1143
    .local v4, scale:F
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1144
    const v6, 0x3ee66666

    cmpg-float v6, v4, v6

    if-lez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1146
    :cond_2
    const/high16 v6, 0x3fc0

    mul-float/2addr v6, v4

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getMaxScale()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1147
    .local v3, limit:F
    const/high16 v6, 0x3f00

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1149
    .local v5, targetScale:F
    cmpg-float v6, v5, v9

    if-gez v6, :cond_3

    .line 1150
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v2

    .line 1151
    .local v2, imageW:I
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v1

    .line 1152
    .local v1, imageH:I
    int-to-float v6, v2

    mul-float/2addr v6, v5

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    int-to-float v6, v1

    mul-float/2addr v6, v5

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_4

    .line 1153
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v8, v2

    div-float/2addr v6, v8

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1154
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1161
    .end local v1           #imageH:I
    .end local v2           #imageW:I
    :cond_3
    :goto_1
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    .end local v3           #limit:F
    .end local v5           #targetScale:F
    :goto_2
    move v6, v7

    .line 1165
    goto :goto_0

    .line 1155
    .restart local v1       #imageH:I
    .restart local v2       #imageW:I
    .restart local v3       #limit:F
    .restart local v5       #targetScale:F
    :cond_4
    int-to-float v6, v1

    mul-float/2addr v6, v5

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    int-to-float v6, v2

    mul-float/2addr v6, v5

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 1156
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v8, v1

    div-float/2addr v6, v8

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1157
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_1

    .line 1163
    .end local v1           #imageH:I
    .end local v2           #imageW:I
    .end local v3           #limit:F
    .end local v5           #targetScale:F
    :cond_5
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    goto :goto_2
.end method

.method public onDown(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const v7, 0x7fffffff

    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 1370
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x4

    #calls: Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V

    .line 1372
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    .line 1373
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 1375
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v2, v6}, Lcom/android/gallery3d/ui/PhotoView;->access$376(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1379
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1380
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 1381
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 1385
    :goto_1
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    .line 1386
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1387
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1388
    add-float v2, p1, v5

    float-to-int v0, v2

    .line 1389
    .local v0, xi:I
    add-float v2, p2, v5

    float-to-int v1, v2

    .line 1390
    .local v1, yi:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->hitTest(II)I

    move-result v3

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3902(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1391
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1200(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1392
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3902(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto :goto_0

    .line 1383
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_2
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    goto :goto_1

    .line 1394
    .restart local v0       #xi:I
    .restart local v1       #yi:I
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isDeletable()Z

    move-result v2

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$4002(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    goto/16 :goto_0

    .line 1398
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3902(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto/16 :goto_0
.end method

.method public onFling(FF)Z
    .locals 2
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 1215
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return v1

    .line 1216
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z
    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->access$4100(Lcom/android/gallery3d/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1218
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1222
    :goto_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    goto :goto_0

    .line 1220
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->flingImages(FF)Z

    goto :goto_1
.end method

.method public onScale(FFF)Z
    .locals 6
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1295
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return v4

    .line 1298
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    .line 1300
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v2, :cond_0

    .line 1301
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v2, :cond_0

    .line 1302
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    goto :goto_0

    .line 1304
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, p3, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->scaleBy(FFF)I

    move-result v1

    .line 1309
    .local v1, outOfRange:I
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    .line 1310
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f7851ec

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f83d70a

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    :cond_4
    move v0, v4

    .line 1313
    .local v0, largeEnough:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 1314
    if-gez v1, :cond_5

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-lez v1, :cond_9

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1316
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    .line 1320
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v5, -0x2

    invoke-static {v2, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1321
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-nez v5, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 1326
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    goto/16 :goto_0

    .end local v0           #largeEnough:Z
    :cond_8
    move v0, v3

    .line 1310
    goto :goto_1

    .line 1331
    .restart local v0       #largeEnough:Z
    :cond_9
    if-eqz v1, :cond_a

    .line 1332
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto/16 :goto_0

    .line 1334
    :cond_a
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto/16 :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 3
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1278
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return v2

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    .line 1281
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->beginScale(FF)V

    .line 1287
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    .line 1289
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1287
    goto :goto_1
.end method

.method public onScaleEnd()V
    .locals 2

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PositionController;->setScaleFlag(Z)V

    .line 1347
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->endScale()V

    goto :goto_0
.end method

.method public onScroll(FFFF)Z
    .locals 8
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v5, 0x1

    .line 1170
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v4, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return v5

    .line 1171
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v4, :cond_2

    .line 1172
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1173
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    .line 1176
    :cond_2
    neg-float v4, p1

    add-float/2addr v4, v7

    float-to-int v1, v4

    .line 1177
    .local v1, dxi:I
    neg-float v4, p2

    add-float/2addr v4, v7

    float-to-int v2, v4

    .line 1178
    .local v2, dyi:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1179
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v4, :cond_4

    .line 1180
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/PositionController;->scrollFilmX(I)V

    goto :goto_0

    .line 1173
    .end local v1           #dxi:I
    .end local v2           #dyi:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1182
    .restart local v1       #dxi:I
    .restart local v2       #dyi:I
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_0

    .line 1183
    invoke-direct {p0, p4}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->calculateDeltaY(F)I

    move-result v3

    .line 1184
    .local v3, newDeltaY:I
    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    sub-int v0, v3, v4

    .line 1185
    .local v0, d:I
    if-eqz v0, :cond_0

    .line 1186
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lcom/android/gallery3d/ui/PositionController;->scrollFilmY(II)V

    .line 1187
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    goto :goto_0

    .line 1191
    .end local v0           #d:I
    .end local v3           #newDeltaY:I
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->scrollPage(II)V

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    .line 1095
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 1096
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return v8

    .line 1103
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1105
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v5, :cond_3

    .line 1106
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    add-float v6, p1, v9

    float-to-int v6, v6

    add-float v7, p2, v9

    float-to-int v7, v7

    #calls: Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V
    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3700(Lcom/android/gallery3d/ui/PhotoView;II)V

    .line 1111
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1112
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v4, 0x0

    .line 1113
    .local v4, supported:I
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v4

    .line 1114
    :cond_2
    const v5, 0x8000

    and-int/2addr v5, v4

    if-nez v5, :cond_3

    .line 1115
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v10}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1116
    iput-boolean v8, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1121
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #supported:I
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1123
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1124
    .local v2, m:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1125
    .local v0, inv:Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1126
    const/4 v5, 0x2

    new-array v3, v5, [F

    aput p1, v3, v10

    aput p2, v3, v8

    .line 1127
    .local v3, pts:[F
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1129
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3800(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1130
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    aget v6, v3, v10

    add-float/2addr v6, v9

    float-to-int v6, v6

    aget v7, v3, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onUp()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f00

    const/4 v4, 0x0

    .line 1404
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v5, -0x2

    invoke-static {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1407
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/EdgeView;->onRelease()V

    .line 1411
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_2

    .line 1413
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1414
    .local v2, r:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    .line 1415
    .local v1, h:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3ecccccd

    int-to-float v6, v1

    mul-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 1416
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/android/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result v0

    .line 1418
    .local v0, duration:I
    if-ltz v0, :cond_2

    .line 1419
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v1

    mul-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 1420
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1425
    .end local v0           #duration:I
    .end local v1           #h:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v3, :cond_4

    .line 1426
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto/16 :goto_0

    .restart local v0       #duration:I
    .restart local v1       #h:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_3
    move v3, v4

    .line 1419
    goto :goto_1

    .line 1430
    .end local v0           #duration:I
    .end local v1           #h:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4300(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1432
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapback()V
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1500(Lcom/android/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1437
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 1438
    return-void

    .line 1437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
