.class public Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field protected mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field protected final mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 3
    .parameter "activity"
    .parameter "selectionManager"
    .parameter "slotView"
    .parameter "labelSpec"
    .parameter "placeholderColor"

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 67
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 68
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 69
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 70
    iput p5, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    .line 72
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkContentTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 119
    instance-of v0, p0, Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 112
    instance-of v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 253
    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 246
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 231
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 213
    return-void
.end method

.method public prepareSlotContent(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateSlotContent(I)V

    .line 262
    return-void
.end method

.method protected renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I
    .locals 9
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"
    .parameter "index"

    .prologue
    .line 167
    const/4 v7, 0x0

    .line 168
    .local v7, renderRequestFlags:I
    if-nez p2, :cond_0

    move v8, v7

    .line 193
    .end local v7           #renderRequestFlags:I
    .local v8, renderRequestFlags:I
    :goto_0
    return v8

    .line 169
    .end local v8           #renderRequestFlags:I
    .restart local v7       #renderRequestFlags:I
    :cond_0
    iget-object v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v2

    .line 171
    .local v2, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 180
    :cond_1
    :goto_1
    iget-object v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_5

    .line 181
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawCameraCover(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 186
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawAlbumSetFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 188
    :cond_2
    instance-of v0, v2, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v0, :cond_3

    check-cast v2, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v2           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FadeTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    or-int/lit8 v7, v7, 0x2

    :cond_3
    move v8, v7

    .line 193
    .end local v7           #renderRequestFlags:I
    .restart local v8       #renderRequestFlags:I
    goto :goto_0

    .line 174
    .end local v8           #renderRequestFlags:I
    .restart local v2       #content:Lcom/android/gallery3d/ui/Texture;
    .restart local v7       #renderRequestFlags:I
    :cond_4
    iget-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 176
    new-instance v2, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v2           #content:Lcom/android/gallery3d/ui/Texture;
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v2, v0, v1}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 177
    .restart local v2       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v2, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto :goto_1

    .line 183
    :cond_5
    iget v5, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIII)V

    goto :goto_2
.end method

.method protected renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I
    .locals 8
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 198
    if-nez p2, :cond_0

    .line 207
    :goto_0
    return v7

    .line 199
    :cond_0
    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    .line 200
    .local v0, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 203
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v6

    .line 204
    .local v6, b:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 205
    .local v5, h:I
    neg-int v2, v6

    sub-int v1, p4, v5

    add-int v3, v1, v6

    add-int v1, p3, v6

    add-int v4, v1, v6

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method protected renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 4
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, renderRequestFlags:I
    if-nez p3, :cond_0

    move v1, v0

    .line 162
    .end local v0           #renderRequestFlags:I
    .local v1, renderRequestFlags:I
    :goto_0
    return v1

    .line 146
    .end local v1           #renderRequestFlags:I
    .restart local v0       #renderRequestFlags:I
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v2, p2, :cond_3

    .line 147
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 149
    or-int/lit8 v0, v0, 0x2

    .line 150
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 152
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    :cond_1
    :goto_1
    move v1, v0

    .line 162
    .end local v0           #renderRequestFlags:I
    .restart local v1       #renderRequestFlags:I
    goto :goto_0

    .line 155
    .end local v1           #renderRequestFlags:I
    .restart local v0       #renderRequestFlags:I
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_1

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v3, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v2, v3, :cond_4

    .line 158
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_1

    .line 159
    :cond_4
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_1
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 10
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    .line 128
    .local v2, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    const/4 v9, 0x0

    .local v9, renderRequestFlags:I
    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p2

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I

    move-result v0

    or-int/2addr v9, v0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p2

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I

    move-result v0

    or-int/2addr v9, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, v2

    move v7, p4

    move v8, p5

    .line 131
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v9, v0

    .line 133
    return v9
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 235
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 6
    .parameter "model"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 99
    iput-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v4, v4}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(IZ)Z

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x7e

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->setAlbumSetDataAdapter(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(IZ)Z

    .line 109
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method
