.class Lcom/android/gallery3d/ui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
.field private mDateInMs:J

.field private mIsAudioJpeg:Z

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 632
    new-instance v0, Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    return-void
.end method

.method private drawTileView(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 23
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v7

    .line 733
    .local v7, imageScale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v5

    .line 734
    .local v5, viewW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v6

    .line 735
    .local v6, viewH:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 736
    .local v3, cx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 737
    .local v4, cy:F
    const/high16 v18, 0x3f80

    .line 739
    .local v18, scale:F
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v12

    .line 741
    .local v12, filmRatio:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-nez v2, :cond_4

    const/high16 v2, 0x3f80

    cmpl-float v2, v12, v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v2

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->inOpeningAnimation()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v19, 0x1

    .line 744
    .local v19, wantsCardEffect:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f80

    cmpl-float v2, v12, v2

    if-nez v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v21, v6, 0x2

    move/from16 v0, v21

    if-eq v2, v0, :cond_5

    const/16 v20, 0x1

    .line 746
    .local v20, wantsOffsetEffect:Z
    :goto_1
    if-eqz v19, :cond_7

    .line 748
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 749
    .local v13, left:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 750
    .local v16, right:I
    move/from16 v0, v16

    #calls: Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F
    invoke-static {v13, v0, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2400(III)F

    move-result v15

    .line 751
    .local v15, progress:F
    const/high16 v2, -0x4080

    const/high16 v21, 0x3f80

    move/from16 v0, v21

    invoke-static {v15, v2, v0}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v15

    .line 755
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-gez v2, :cond_0

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F
    invoke-static {v2, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2500(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v18

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v2, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    .line 758
    .local v8, alpha:F
    const/high16 v2, 0x3f80

    move/from16 v0, v18

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v18

    .line 759
    const/high16 v2, 0x3f80

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v8, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v8

    .line 761
    mul-float v7, v7, v18

    .line 762
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 765
    sub-int v2, v16, v13

    if-gt v2, v5, :cond_6

    .line 768
    int-to-float v2, v5

    const/high16 v21, 0x4000

    div-float v9, v2, v21

    .line 775
    .local v9, cxPage:F
    :goto_2
    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v9, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v3

    .end local v8           #alpha:F
    .end local v9           #cxPage:F
    .end local v13           #left:I
    .end local v15           #progress:F
    .end local v16           #right:I
    :cond_0
    :goto_3
    move-object/from16 v2, p0

    .line 784
    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 788
    const/high16 v2, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v21, 0x3f00

    add-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    const/high16 v21, 0x3f00

    add-float v2, v2, v21

    float-to-int v0, v2

    move/from16 v17, v0

    .line 790
    .local v17, s:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    if-eqz v2, :cond_1

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v17

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 795
    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/ui/PhotoView;->access$3000()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 796
    invoke-static {}, Lcom/android/gallery3d/ui/PhotoView;->access$3000()Ljava/text/SimpleDateFormat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mDateInMs:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 797
    .local v10, date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/high16 v21, 0x41e0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v10, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v21

    move-object/from16 v0, v21

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mDateText:Lcom/android/gallery3d/ui/StringTexture;
    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3102(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/StringTexture;)Lcom/android/gallery3d/ui/StringTexture;

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawDateText(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3200(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v10           #date:Ljava/lang/String;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsAudioJpeg:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawAudioJpegIcon(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 806
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v2, v0, :cond_3

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 814
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 815
    return-void

    .line 741
    .end local v17           #s:I
    .end local v19           #wantsCardEffect:Z
    .end local v20           #wantsOffsetEffect:Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 744
    .restart local v19       #wantsCardEffect:Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 773
    .restart local v8       #alpha:F
    .restart local v13       #left:I
    .restart local v15       #progress:F
    .restart local v16       #right:I
    .restart local v20       #wantsOffsetEffect:Z
    :cond_6
    sub-int v2, v16, v13

    int-to-float v2, v2

    mul-float v2, v2, v18

    const/high16 v21, 0x4000

    div-float v9, v2, v21

    .restart local v9       #cxPage:F
    goto/16 :goto_2

    .line 777
    .end local v8           #alpha:F
    .end local v9           #cxPage:F
    .end local v13           #left:I
    .end local v15           #progress:F
    .end local v16           #right:I
    :cond_7
    if-eqz v20, :cond_0

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v21, v6, 0x2

    sub-int v2, v2, v21

    int-to-float v2, v2

    int-to-float v0, v6

    move/from16 v21, v0

    div-float v14, v2, v21

    .line 779
    .local v14, offset:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v2, v14}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    .line 780
    .restart local v8       #alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_3

    .line 800
    .end local v8           #alpha:F
    .end local v14           #offset:F
    .restart local v17       #s:I
    :catch_0
    move-exception v11

    .line 801
    .local v11, ex:Ljava/lang/Exception;
    const-string v2, "PhotoView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mVideoDateText = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 12
    .parameter "cx"
    .parameter "cy"
    .parameter "viewW"
    .parameter "viewH"
    .parameter "scale"

    .prologue
    .line 821
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v4

    .line 822
    .local v4, imageW:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v3

    .line 823
    .local v3, imageH:I
    int-to-float v9, v4

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p1

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 824
    .local v1, centerX:I
    int-to-float v9, v3

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p2

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 826
    .local v2, centerY:I
    sub-int v5, v4, v1

    .line 827
    .local v5, inverseX:I
    sub-int v6, v3, v2

    .line 829
    .local v6, inverseY:I
    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    sparse-switch v9, :sswitch_data_0

    .line 835
    new-instance v9, Ljava/lang/RuntimeException;

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 830
    :sswitch_0
    move v7, v1

    .local v7, x:I
    move v8, v2

    .line 837
    .local v8, y:I
    :goto_0
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    move/from16 v0, p5

    invoke-virtual {v9, v7, v8, v0, v10}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    .line 838
    return-void

    .line 831
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_1
    move v7, v2

    .restart local v7       #x:I
    move v8, v5

    .restart local v8       #y:I
    goto :goto_0

    .line 832
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_2
    move v7, v5

    .restart local v7       #x:I
    move v8, v6

    .restart local v8       #y:I
    goto :goto_0

    .line 833
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_3
    move v7, v6

    .restart local v7       #x:I
    move v8, v1

    .restart local v8       #y:I
    goto :goto_0

    .line 829
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateSize(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 4
    .parameter "model"

    .prologue
    .line 684
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    .line 692
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v1, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 693
    .local v1, w:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v0, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 694
    .local v0, h:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2100(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 695
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2100(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 696
    return-void

    .line 686
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 689
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 700
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->drawTileView(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onPictureCenter(Z)V

    goto :goto_0
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->updateSize(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 680
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 681
    return-void
.end method

.method public getSize()Lcom/android/gallery3d/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 637
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 640
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    .line 642
    .local v0, model:Lcom/android/gallery3d/ui/PhotoView$Model;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 648
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TileImageView;->setCameraService(Z)V

    .line 659
    :cond_0
    :goto_0
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    .line 660
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    .line 661
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    .line 662
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    .line 663
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isAudioJpeg(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsAudioJpeg:Z

    .line 664
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    .line 665
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 666
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 667
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mDateInMs:J

    .line 668
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 669
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->updateSize(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 670
    return-void

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1802(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$Model;)Lcom/android/gallery3d/ui/PhotoView$Model;

    goto :goto_0

    .line 654
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isHasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    goto :goto_0
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 719
    return-void
.end method
