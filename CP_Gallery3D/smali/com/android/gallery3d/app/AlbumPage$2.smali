.class Lcom/android/gallery3d/app/AlbumPage$2;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final COOLLIF_ICON_BOTTOM_MARGIN:I

.field private final COOLLIF_ICON_H:I

.field private final COOLLIF_ICON_RIGHT_MARGIN:I

.field private final COOLLIF_ICON_W:I

.field private final EMPTY_ICON_H:I

.field private final EMPTY_ICON_W:I

.field private final RECORD_TITLE_SIZE:I

.field private final RECORD_TOP_MARGIN:I

.field private mCoolLifIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mEmptyIcom:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mMatrix:[F

.field private mTitle:Lcom/android/gallery3d/ui/StringTexture;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x68

    const/16 v1, 0x10

    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 174
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    .line 178
    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$2;->EMPTY_ICON_W:I

    .line 179
    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$2;->EMPTY_ICON_H:I

    .line 181
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->RECORD_TOP_MARGIN:I

    .line 182
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->RECORD_TITLE_SIZE:I

    .line 184
    const/16 v0, 0x54

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->COOLLIF_ICON_W:I

    .line 185
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->COOLLIF_ICON_H:I

    .line 186
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->COOLLIF_ICON_RIGHT_MARGIN:I

    .line 187
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->COOLLIF_ICON_BOTTOM_MARGIN:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 193
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v2

    .line 194
    .local v2, slotViewTop:I
    sub-int v0, p5, p3

    .line 195
    .local v0, slotViewBottom:I
    sub-int v1, p4, p2

    .line 197
    .local v1, slotViewRight:I
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v3

    invoke-virtual {v3, p2, v2, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 204
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/android/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 205
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3, v5, v2, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 206
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    sub-int v4, p4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-int v5, p5, p3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$600(Lcom/android/gallery3d/app/AlbumPage;)F

    move-result v6

    neg-float v6, v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 208
    return-void

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/16 v12, 0x54

    const/16 v11, 0x12

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/16 v8, 0x68

    .line 212
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 214
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mEmptyAlbum:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$700(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mCoolLifIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v7, 0x7f0200b4

    invoke-direct {v0, v1, v7}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mCoolLifIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mEmptyIcom:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v7, 0x7f0200bf

    invoke-direct {v0, v1, v7}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mEmptyIcom:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0e030e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const v7, 0x7b7b7b7b

    invoke-static {v0, v1, v7}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    invoke-static {v10}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v12}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    sub-int v2, v0, v1

    .line 232
    .local v2, x:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    invoke-static {v10}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v11}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    sub-int v3, v0, v1

    .line 233
    .local v3, y:I
    invoke-static {v12}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    .local v4, w:I
    invoke-static {v11}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v5

    .line 234
    .local v5, h:I
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mCoolLifIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 236
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 237
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v9}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 240
    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    .line 241
    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v5

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mEmptyIcom:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 244
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 245
    add-int v0, v3, v5

    invoke-static {v9}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    add-int v3, v0, v1

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 249
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #w:I
    .end local v5           #h:I
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v6

    .line 251
    .local v6, more:Z
    if-nez v6, :cond_4

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$802(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 258
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 260
    .end local v6           #more:Z
    :cond_5
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 261
    return-void
.end method
