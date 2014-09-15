.class Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
.super Lcom/android/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightRectangle"
.end annotation


# instance fields
.field private mCropHoloBottom:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mCropHoloLeft:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mCropHoloRight:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mCropHoloTop:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mHighlightRect:Landroid/graphics/RectF;

.field private mMovingEdges:I

.field private mReferenceX:F

.field private mReferenceY:F

.field private mTempPoint:Landroid/graphics/PointF;

.field private mTempRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/CropView;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f40

    const/high16 v1, 0x3e80

    .line 453
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 443
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 444
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    .line 445
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 454
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/CropView;->access$800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloTop:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 456
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/CropView;->access$800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloBottom:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 458
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/CropView;->access$800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloLeft:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 460
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/CropView;->access$800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200b7

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloRight:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 462
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private drawContactRectangle(Lcom/android/gallery3d/ui/GLCanvas;FFF)V
    .locals 8
    .parameter "canvas"
    .parameter "left"
    .parameter "right"
    .parameter "y"

    .prologue
    const/high16 v7, 0x4080

    .line 707
    move v1, p2

    .line 708
    .local v1, x11:F
    float-to-int v6, p2

    .local v6, i:I
    :goto_0
    float-to-int v0, p3

    if-ge v6, v0, :cond_2

    .line 709
    add-float v3, v1, v7

    .line 710
    .local v3, x22:F
    sub-float v0, p3, v7

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    sub-float v1, p3, v7

    .line 711
    :cond_0
    sub-float v0, p3, v7

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    sub-float v3, p3, v7

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mContactPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$1400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v5

    move-object v0, p1

    move v2, p4

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 713
    add-float v1, v3, v7

    .line 708
    int-to-float v0, v6

    add-float/2addr v0, v7

    float-to-int v6, v0

    goto :goto_0

    .line 715
    .end local v3           #x22:F
    :cond_2
    return-void
.end method

.method private drawHighlightRectangle(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;)V
    .locals 15
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 659
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v14

    .line 660
    .local v14, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/high16 v1, 0x4040

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    .line 661
    const/16 v1, 0xb20

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 663
    const/16 v1, 0xb90

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 664
    const/16 v1, 0x400

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 665
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 666
    const/16 v1, 0x207

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 668
    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1000(Lcom/android/gallery3d/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1100(Lcom/android/gallery3d/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 669
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 670
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 673
    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mContactDraw:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1300(Lcom/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const v6, 0x3e75c28f

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->drawContactRectangle(Lcom/android/gallery3d/ui/GLCanvas;FFF)V

    .line 676
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const v6, 0x3f05c28f

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->drawContactRectangle(Lcom/android/gallery3d/ui/GLCanvas;FFF)V

    .line 698
    :cond_1
    :goto_0
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 699
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e00

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 701
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    int-to-float v10, v1

    const/high16 v11, -0x6000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 703
    const/16 v1, 0xb90

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 704
    return-void

    .line 681
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$1000(Lcom/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v4, v1, v2

    .line 682
    .local v4, sx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$1100(Lcom/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v5, v1, v2

    .line 683
    .local v5, sy:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    .line 684
    .local v12, cx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    .line 686
    .local v13, cy:F
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v13, v1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 687
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v13, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 688
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 690
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 691
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 693
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v7, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v8, v13, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v5

    move v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 694
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v7, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v8, v13, v1

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move v9, v5

    move v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 695
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, -0x8000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto/16 :goto_0
.end method

.method private moveEdges(Landroid/view/MotionEvent;)V
    .locals 15
    .parameter "event"

    .prologue
    .line 486
    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getScale()F

    move-result v8

    .line 487
    .local v8, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget v13, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    sub-float/2addr v12, v13

    div-float/2addr v12, v8

    iget-object v13, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v13}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v1, v12, v13

    .line 488
    .local v1, dx:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    sub-float/2addr v12, v13

    div-float/2addr v12, v8

    iget-object v13, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v13}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v2, v12, v13

    .line 489
    .local v2, dy:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iput v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 491
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 493
    .local v6, r:Landroid/graphics/RectF;
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_1

    .line 494
    iget v12, v6, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    const/high16 v13, 0x3f80

    iget v14, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v14

    invoke-static {v1, v12, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    .line 495
    iget v12, v6, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    const/high16 v13, 0x3f80

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v14

    invoke-static {v2, v12, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 496
    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v2

    iput v12, v6, Landroid/graphics/RectF;->top:F

    .line 497
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v12, v2

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 498
    iget v12, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v1

    iput v12, v6, Landroid/graphics/RectF;->left:F

    .line 499
    iget v12, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v12, v1

    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 554
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 555
    return-void

    .line 501
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    .line 502
    .local v5, point:Landroid/graphics/PointF;
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    iget v13, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    invoke-virtual {v5, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 503
    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/gallery3d/ui/CropView$AnimationController;->inverseMapPoint(Landroid/graphics/PointF;)V

    .line 504
    iget v12, v6, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    add-float v4, v12, v13

    .line 505
    .local v4, left:F
    iget v12, v6, Landroid/graphics/RectF;->right:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v7, v12, v13

    .line 506
    .local v7, right:F
    iget v12, v6, Landroid/graphics/RectF;->top:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    add-float v10, v12, v13

    .line 507
    .local v10, top:F
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v0, v12, v13

    .line 508
    .local v0, bottom:F
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_2

    .line 509
    iget v12, v5, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3f80

    invoke-static {v12, v4, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 511
    :cond_2
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    .line 512
    iget v12, v5, Landroid/graphics/PointF;->x:F

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->left:F

    .line 514
    :cond_3
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_4

    .line 515
    iget v12, v5, Landroid/graphics/PointF;->y:F

    const/4 v13, 0x0

    invoke-static {v12, v13, v0}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->top:F

    .line 517
    :cond_4
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_5

    .line 518
    iget v12, v5, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x3f80

    invoke-static {v12, v10, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 520
    :cond_5
    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView;->access$900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v12

    const/high16 v13, -0x4080

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_0

    .line 521
    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView;->access$900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v12

    iget-object v13, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v13}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v13}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 522
    .local v9, targetRatio:F
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v12, v13

    cmpl-float v12, v12, v9

    if-lez v12, :cond_7

    .line 523
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v3, v12, v9

    .line 524
    .local v3, height:F
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_6

    .line 525
    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v3

    const/high16 v13, 0x3f80

    invoke-static {v12, v10, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 537
    .end local v3           #height:F
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v12, v13

    cmpl-float v12, v12, v9

    if-lez v12, :cond_a

    .line 538
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v11, v12, v9

    .line 539
    .local v11, width:F
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_9

    .line 540
    iget v12, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v11

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 527
    .end local v11           #width:F
    .restart local v3       #height:F
    :cond_6
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v3

    const/4 v13, 0x0

    invoke-static {v12, v13, v0}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 530
    .end local v3           #height:F
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v11, v12, v9

    .line 531
    .restart local v11       #width:F
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    .line 532
    iget v12, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v11

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 534
    :cond_8
    iget v12, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v11

    const/high16 v13, 0x3f80

    invoke-static {v12, v4, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 542
    :cond_9
    iget v12, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v11

    const/high16 v13, 0x3f80

    invoke-static {v12, v4, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 545
    .end local v11           #width:F
    :cond_a
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v3, v12, v9

    .line 546
    .restart local v3       #height:F
    iget v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_b

    .line 547
    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v3

    const/high16 v13, 0x3f80

    invoke-static {v12, v10, v13}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 549
    :cond_b
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v3

    const/4 v13, 0x0

    invoke-static {v12, v13, v0}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0
.end method

.method private setMovingEdges(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 558
    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    .line 559
    .local v4, r:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 560
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 562
    .local v8, y:F
    iget v9, v4, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    iget v9, v4, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v7, v9

    if-gez v9, :cond_1

    iget v9, v4, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    .line 564
    const/16 v9, 0x10

    iput v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget v9, v4, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v9, v8

    if-gtz v9, :cond_9

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_9

    const/4 v2, 0x1

    .line 570
    .local v2, inVerticalRange:Z
    :goto_1
    iget v9, v4, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v9, v7

    if-gtz v9, :cond_a

    iget v9, v4, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_a

    const/4 v1, 0x1

    .line 573
    .local v1, inHorizontalRange:Z
    :goto_2
    if-eqz v2, :cond_5

    .line 574
    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_b

    const/4 v3, 0x1

    .line 575
    .local v3, left:Z
    :goto_3
    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_c

    const/4 v5, 0x1

    .line 576
    .local v5, right:Z
    :goto_4
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    .line 577
    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    const/4 v3, 0x1

    .line 578
    :goto_5
    if-nez v3, :cond_e

    const/4 v5, 0x1

    .line 580
    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    iget v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 581
    :cond_3
    if-eqz v5, :cond_4

    iget v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 582
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v9

    const/high16 v10, -0x4080

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    if-eqz v1, :cond_5

    .line 583
    iget v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v9, v4, Landroid/graphics/RectF;->top:F

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v11

    const/high16 v11, 0x4000

    div-float/2addr v9, v11

    cmpl-float v9, v8, v9

    if-lez v9, :cond_f

    const/16 v9, 0x8

    :goto_7
    or-int/2addr v9, v10

    iput v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 587
    .end local v3           #left:Z
    .end local v5           #right:Z
    :cond_5
    if-eqz v1, :cond_0

    .line 588
    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_10

    const/4 v6, 0x1

    .line 589
    .local v6, top:Z
    :goto_8
    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_11

    const/4 v0, 0x1

    .line 590
    .local v0, bottom:Z
    :goto_9
    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    .line 591
    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_12

    const/4 v6, 0x1

    .line 592
    :goto_a
    if-nez v6, :cond_13

    const/4 v0, 0x1

    .line 594
    :cond_6
    :goto_b
    if-eqz v6, :cond_7

    iget v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 595
    :cond_7
    if-eqz v0, :cond_8

    iget v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 596
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v9

    const/high16 v10, -0x4080

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    .line 597
    iget v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v11, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v11

    const/high16 v11, 0x4000

    div-float/2addr v9, v11

    cmpl-float v9, v7, v9

    if-lez v9, :cond_14

    const/4 v9, 0x4

    :goto_c
    or-int/2addr v9, v10

    iput v9, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    goto/16 :goto_0

    .line 568
    .end local v0           #bottom:Z
    .end local v1           #inHorizontalRange:Z
    .end local v2           #inVerticalRange:Z
    .end local v6           #top:Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 570
    .restart local v2       #inVerticalRange:Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 574
    .restart local v1       #inHorizontalRange:Z
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 575
    .restart local v3       #left:Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 577
    .restart local v5       #right:Z
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 578
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 583
    :cond_f
    const/4 v9, 0x2

    goto/16 :goto_7

    .line 588
    .end local v3           #left:Z
    .end local v5           #right:Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_8

    .line 589
    .restart local v6       #top:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9

    .line 591
    .restart local v0       #bottom:Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_a

    .line 592
    :cond_13
    const/4 v0, 0x0

    goto :goto_b

    .line 597
    :cond_14
    const/4 v9, 0x1

    goto :goto_c
.end method


# virtual methods
.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mListener:Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mListener:Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 606
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 625
    :goto_0
    return v2

    .line 608
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 610
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setMovingEdges(Landroid/view/MotionEvent;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 615
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->moveEdges(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 619
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 620
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4000

    .line 630
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 631
    .local v3, r:Landroid/graphics/RectF;
    invoke-direct {p0, p1, v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->drawHighlightRectangle(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;)V

    .line 633
    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float v1, v4, v7

    .line 634
    .local v1, centerY:F
    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float v0, v4, v7

    .line 635
    .local v0, centerX:F
    iget v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    if-nez v4, :cond_8

    const/4 v2, 0x1

    .line 636
    .local v2, notMoving:Z
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    .line 637
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloRight:Lcom/android/gallery3d/ui/ResourceTexture;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloRight:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloRight:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 641
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    .line 642
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloLeft:Lcom/android/gallery3d/ui/ResourceTexture;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloLeft:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloLeft:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 646
    :cond_3
    iget v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    if-eqz v2, :cond_5

    .line 647
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloTop:Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloTop:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloTop:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 651
    :cond_5
    iget v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    .line 652
    :cond_6
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloBottom:Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloBottom:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mCropHoloBottom:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 656
    :cond_7
    return-void

    .line 635
    .end local v2           #notMoving:Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public setInitRectangle()V
    .locals 8

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v7, 0x3f00

    .line 465
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v4}, Lcom/android/gallery3d/ui/CropView;->access$900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v4

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move v1, v3

    .line 469
    .local v1, targetRatio:F
    :goto_0
    const/high16 v2, 0x3f00

    .line 470
    .local v2, w:F
    const/high16 v0, 0x3f00

    .line 471
    .local v0, h:F
    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 472
    div-float v0, v2, v1

    .line 476
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    sub-float v4, v7, v2

    sub-float v5, v7, v0

    add-float v6, v7, v2

    add-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 477
    return-void

    .line 465
    .end local v0           #h:F
    .end local v1           #targetRatio:F
    .end local v2           #w:F
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v4}, Lcom/android/gallery3d/ui/CropView;->access$900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    goto :goto_0

    .line 474
    .restart local v0       #h:F
    .restart local v1       #targetRatio:F
    .restart local v2       #w:F
    :cond_1
    mul-float v2, v0, v1

    goto :goto_1
.end method

.method public setRectangle(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "faceRect"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 483
    return-void
.end method
