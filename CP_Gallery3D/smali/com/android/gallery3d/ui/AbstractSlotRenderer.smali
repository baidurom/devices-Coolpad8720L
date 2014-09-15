.class public abstract Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$SlotRenderer;


# instance fields
.field private final mAlbumSetFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mAudioJpeg:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mBkColor:I

.field private final mBmpNoRecoder:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mIsHomeAlbums:Z

.field private final mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPrivateModelIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mStrNoRecoder:Lcom/android/gallery3d/ui/StringTexture;

.field private final mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mIsHomeAlbums:Z

    .line 45
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02015a

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 46
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020120

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 47
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020117

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 48
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020114

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020115

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 51
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020002

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAlbumSetFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 52
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0201d7

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPrivateModelIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 53
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0201d5

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAudioJpeg:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 54
    const v0, 0x7f0e030e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const v2, -0xf0d0d0e

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mStrNoRecoder:Lcom/android/gallery3d/ui/StringTexture;

    .line 57
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0200ac

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mBmpNoRecoder:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mBkColor:I

    .line 59
    return-void
.end method

.method protected static drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "padding"
    .parameter "frame"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 184
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 186
    return-void
.end method


# virtual methods
.method protected drawAlbumSetFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAlbumSetFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAlbumSetFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 141
    return-void
.end method

.method protected drawAudioJpeg(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x5

    .line 147
    .local v4, iconSize:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mAudioJpeg:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 148
    return-void
.end method

.method protected drawCameraCover(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 13
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 91
    move v9, p2

    .line 92
    .local v9, IMAGE_WIDTH:I
    move/from16 v8, p3

    .line 93
    .local v8, IMAGE_HEIGHT:I
    const/16 v0, 0x84

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v7

    .line 94
    .local v7, EMPTY_ICON_W:I
    const/16 v0, 0x54

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v6

    .line 95
    .local v6, EMPTY_ICON_H:I
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v10

    .line 97
    .local v10, RECORD_TOP_TITLE_MARGIN:I
    sub-int v0, v9, v7

    div-int/lit8 v11, v0, 0x2

    .line 98
    .local v11, x:I
    sub-int v0, v8, v10

    sub-int/2addr v0, v6

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mStrNoRecoder:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v12, v0, 0x2

    .line 100
    .local v12, y:I
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v9

    int-to-float v4, v8

    iget v5, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mBkColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mBmpNoRecoder:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v1, p1

    move v2, v11

    move v3, v12

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mStrNoRecoder:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v0

    sub-int v0, v9, v0

    div-int/lit8 v11, v0, 0x2

    .line 104
    add-int v0, v12, v6

    add-int v12, v0, v10

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mStrNoRecoder:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0, p1, v11, v12}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 107
    return-void
.end method

.method protected drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    .line 63
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 67
    if-lez p6, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    move p3, p4

    .line 69
    :cond_0
    if-eqz p5, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mIsHomeAlbums:Z

    if-eqz v3, :cond_1

    if-eqz p6, :cond_2

    .line 70
    :cond_1
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 71
    int-to-float v3, p5

    invoke-interface {p1, v3, v5, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 72
    neg-int v3, p3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v4, p4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 76
    :cond_2
    int-to-float v3, p3

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p4

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 79
    .local v0, scale:F
    if-nez p6, :cond_3

    .line 80
    int-to-float v3, p3

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 81
    .local v1, scaleX:F
    int-to-float v3, p4

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 82
    .local v2, scaleY:F
    invoke-interface {p1, v1, v2, v6}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 86
    .end local v1           #scaleX:F
    .end local v2           #scaleY:F
    :goto_0
    invoke-interface {p2, p1, v7, v7}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 87
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 88
    return-void

    .line 84
    :cond_3
    invoke-interface {p1, v0, v0, v6}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    goto :goto_0
.end method

.method protected drawPanoramaIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 123
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 124
    .local v4, iconSize:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 126
    return-void
.end method

.method protected drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 176
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/gallery3d/ui/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 172
    return-void
.end method

.method protected drawPrivateModelIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x3

    .line 136
    .local v4, iconSize:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPrivateModelIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 137
    return-void
.end method

.method protected drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 180
    return-void
.end method

.method protected drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 14
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 113
    .local v1, v:Lcom/android/gallery3d/ui/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 114
    .local v13, scale:F
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 115
    .local v5, w:I
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 116
    .local v6, h:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 118
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v11, v2, 0x6

    .line 119
    .local v11, s:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 120
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FadeTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 164
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHomeAlbums(Z)V
    .locals 0
    .parameter "homeAlbums"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mIsHomeAlbums:Z

    .line 191
    return-void
.end method
