.class public Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private mMethod:Ljava/lang/reflect/Method;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private mPrivateFile:Ljava/lang/Object;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V
    .locals 3
    .parameter "activity"
    .parameter "slotView"
    .parameter "selectionManager"
    .parameter "placeholderColor"

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 75
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 76
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 77
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    .line 85
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 87
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mMethod:Ljava/lang/reflect/Method;

    .line 88
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->getPrivateFile()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPrivateFile:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 124
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

.method private renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 3
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, renderRequestFlags:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 189
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 191
    or-int/lit8 v0, v0, 0x2

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 194
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 200
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 201
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 293
    const-string v1, "com.yulong.android.crypto.PrivateFile"

    const-string v2, "isPrivateFile"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 295
    .local v0, method:Ljava/lang/reflect/Method;
    return-object v0
.end method

.method public getPrivateFile()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 285
    const-string v2, "com.yulong.android.crypto.PrivateFile"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 287
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, privateFile:Ljava/lang/Object;
    return-object v1
.end method

.method public onSlotSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 278
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 267
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 255
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 260
    return-void
.end method

.method public prepareSlotContent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 303
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 14
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 132
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v13, 0x0

    .line 182
    :goto_0
    return v13

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v11

    .line 136
    .local v11, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    const/4 v13, 0x0

    .line 138
    .local v13, renderRequestFlags:I
    if-nez v11, :cond_7

    const/4 v4, 0x0

    .line 139
    .local v4, content:Lcom/android/gallery3d/ui/Texture;
    :goto_1
    if-nez v4, :cond_8

    .line 140
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 148
    :cond_1
    :goto_2
    iget v7, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 149
    instance-of v2, v4, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v2, :cond_2

    check-cast v4, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/FadeTexture;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    or-int/lit8 v13, v13, 0x2

    .line 154
    :cond_2
    iget v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 155
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 158
    :cond_3
    iget-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v2, :cond_4

    .line 159
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPanoramaIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 161
    :cond_4
    iget-object v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 162
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPrivateFile:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->filePath:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 164
    .local v12, isPrivate:Z
    if-eqz v12, :cond_5

    .line 165
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPrivateModelIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 169
    .end local v12           #isPrivate:Z
    :cond_5
    iget-object v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_6

    iget-object v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->isAudioImage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawAudioJpeg(Lcom/android/gallery3d/ui/GLCanvas;II)V

    :cond_6
    move-object v5, p0

    move-object v6, p1

    move/from16 v7, p2

    move-object v8, v11

    move/from16 v9, p4

    move/from16 v10, p5

    .line 180
    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v2

    or-int/2addr v13, v2

    .line 182
    goto/16 :goto_0

    .line 138
    :cond_7
    iget-object v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v4

    goto/16 :goto_1

    .line 142
    .restart local v4       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_8
    iget-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v2, :cond_1

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 144
    new-instance v4, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    iget-object v3, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v4, v2, v3}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 146
    .restart local v4       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v4, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto/16 :goto_2
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 251
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 5
    .parameter "model"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v3, v3}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(IZ)Z

    .line 113
    iput-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x7e

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(IZ)Z

    .line 121
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .parameter "slotFilter"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 282
    return-void
.end method
