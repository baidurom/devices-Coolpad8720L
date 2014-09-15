.class public Lcom/android/gallery3d/ui/CropView;
.super Lcom/android/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/CropView$DetectFaceTask;,
        Lcom/android/gallery3d/ui/CropView$HighlightRectangle;,
        Lcom/android/gallery3d/ui/CropView$AnimationController;,
        Lcom/android/gallery3d/ui/CropView$FaceHighlightView;,
        Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

.field private mAspectRatio:F

.field private mContactDraw:Z

.field private mContactPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

.field private mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

.field private mImageHeight:I

.field private mImageRotation:I

.field private mImageView:Lcom/android/gallery3d/ui/TileImageView;

.field private mImageWidth:I

.field private mListener:Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mSpotlightRatioX:F

.field private mSpotlightRatioY:F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/high16 v2, 0x4040

    .line 116
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 86
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    .line 88
    iput v1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mContactDraw:Z

    .line 97
    new-instance v0, Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/CropView$AnimationController;-><init>(Lcom/android/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    .line 99
    iput v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 100
    iput v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    .line 104
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 105
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 106
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mContactPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 117
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 118
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    .line 119
    new-instance v0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;-><init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/CropView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    .line 120
    new-instance v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;-><init>(Lcom/android/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const v1, -0xff7501

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mContactPaint:Lcom/android/gallery3d/ui/GLPaint;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mContactPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 137
    new-instance v0, Lcom/android/gallery3d/ui/CropView$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/CropView$1;-><init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/CropView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mContactDraw:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mContactPaint:Lcom/android/gallery3d/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/CropView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mListener:Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/CropView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/CropView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    return v0
.end method

.method private setImageViewPosition(IIF)Z
    .locals 6
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 181
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    sub-int v0, v4, p1

    .line 182
    .local v0, inverseX:I
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    sub-int v1, v4, p2

    .line 183
    .local v1, inverseY:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    .line 184
    .local v3, t:Lcom/android/gallery3d/ui/TileImageView;
    iget v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 185
    .local v2, rotation:I
    sparse-switch v2, :sswitch_data_0

    .line 190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    .line 189
    :goto_0
    return v4

    .line 187
    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 188
    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 189
    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public detectFaces(Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "bitmap"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 813
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 814
    .local v4, rotation:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 815
    .local v7, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 816
    .local v3, height:I
    const v8, 0x47ea6000

    mul-int v9, v7, v3

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    .line 820
    .local v5, scale:F
    div-int/lit8 v8, v4, 0x5a

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 821
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 822
    .local v6, w:I
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 823
    .local v2, h:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 824
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 825
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v8, v4

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 826
    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 827
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 839
    :goto_0
    new-instance v8, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;-><init>(Lcom/android/gallery3d/ui/CropView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 840
    return-void

    .line 829
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #faceBitmap:Landroid/graphics/Bitmap;
    .end local v2           #h:I
    .end local v6           #w:I
    :cond_0
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 830
    .restart local v6       #w:I
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 831
    .restart local v2       #h:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 832
    .restart local v1       #faceBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 833
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 834
    int-to-float v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 835
    neg-int v8, v2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    neg-int v9, v6

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 836
    int-to-float v8, v6

    int-to-float v9, v3

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 837
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getCropRectangle()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 208
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    .line 210
    .local v0, rect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 212
    .local v1, result:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method public initializeHighlightRectangle()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setInitRectangle()V

    .line 844
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 845
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 165
    sub-int v1, p4, p2

    .line 166
    .local v1, width:I
    sub-int v0, p5, p3

    .line 168
    .local v0, height:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 169
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 170
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 171
    iget v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView$AnimationController;->initialize()V

    .line 173
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/CropView$AnimationController;->parkNow(Landroid/graphics/RectF;)V

    .line 178
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 853
    return-void
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    .line 197
    .local v0, a:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getCenterX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getCenterY()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getScale()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/gallery3d/ui/CropView;->setImageViewPosition(IIF)Z

    .line 199
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 200
    return-void
.end method

.method public renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 204
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 205
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 849
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 151
    iput p1, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    .line 152
    return-void
.end method

.method public setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V
    .locals 1
    .parameter "dataModel"
    .parameter "rotation"

    .prologue
    .line 798
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 799
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 800
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    .line 806
    :goto_0
    iput p2, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 808
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 809
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->initialize()V

    .line 810
    return-void

    .line 802
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 803
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mListener:Lcom/android/gallery3d/ui/CropView$MyOnTouchListener;

    .line 148
    :cond_0
    return-void
.end method

.method public setSnsContract(Z)V
    .locals 0
    .parameter "bContact"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/CropView;->mContactDraw:Z

    .line 161
    return-void
.end method
