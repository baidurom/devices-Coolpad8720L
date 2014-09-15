.class public Lcom/android/gallery3d/ui/SlotView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;,
        Lcom/android/gallery3d/ui/SlotView$MyGestureListener;,
        Lcom/android/gallery3d/ui/SlotView$Layout;,
        Lcom/android/gallery3d/ui/SlotView$Spec;,
        Lcom/android/gallery3d/ui/SlotView$RisingAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotRenderer;,
        Lcom/android/gallery3d/ui/SlotView$SimpleListener;,
        Lcom/android/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# static fields
.field public static final SECUREID:I


# instance fields
.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHasMove:Z

.field private mIsHomeAlbums:Z

.field private final mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

.field private mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mMoveBegin:Z

.field private mMoveIndex:I

.field private mMoveRect:Landroid/graphics/Rect;

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/android/gallery3d/ui/Paper;

.field private mReferenceX:F

.field private mReferenceY:F

.field private mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private final mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "/data/yulong_secure/"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/gallery3d/ui/SlotView;->SECUREID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;Z)V
    .locals 4
    .parameter "activity"
    .parameter "spec"
    .parameter "isHomeAlbums"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 81
    new-instance v0, Lcom/android/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    .line 86
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    .line 87
    iput-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 88
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/SlotView$Layout;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    .line 89
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 93
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 95
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z

    .line 99
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 105
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mHasMove:Z

    .line 107
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 121
    new-instance v0, Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    .line 122
    new-instance v0, Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    .line 123
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/SlotView;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 125
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/SlotView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/ui/SlotView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/gallery3d/ui/SlotView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/SlotView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/ui/SlotView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/SlotView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/ui/SlotView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    return-object p1
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .parameter "array"
    .parameter "capacity"

    .prologue
    .line 378
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 379
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 381
    :cond_0
    return-object p0
.end method

.method private renderItem(Lcom/android/gallery3d/ui/GLCanvas;I)I
    .locals 7
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 288
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v3

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v3

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I

    move-result v6

    .line 297
    .local v6, result:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 298
    return v6
.end method

.method private renderItem(Lcom/android/gallery3d/ui/GLCanvas;II)I
    .locals 8
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"

    .prologue
    const/4 v2, 0x0

    .line 303
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 306
    .local v6, rect:Landroid/graphics/Rect;
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    if-ne v0, p2, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v6}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I

    move-result v7

    .line 316
    .local v7, result:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 317
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    if-le p2, v0, :cond_1

    .line 318
    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;I)I

    .line 319
    :cond_1
    return v7

    .line 309
    .end local v7           #result:I
    :cond_2
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I
    .locals 8
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "paperActive"

    .prologue
    const/4 v2, 0x0

    .line 495
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 496
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 497
    .local v6, rect:Landroid/graphics/Rect;
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    if-ne v0, p2, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v6}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I

    move-result v7

    .line 509
    .local v7, result:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->setHomeAlbums(Z)V

    .line 510
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 511
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    if-le p2, v0, :cond_1

    .line 512
    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;I)I

    .line 513
    :cond_1
    return v7

    .line 499
    .end local v7           #result:I
    :cond_2
    if-eqz p4, :cond_3

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/android/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_0

    .line 502
    :cond_3
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .parameter "position"
    .parameter "force"

    .prologue
    .line 216
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;
    .locals 5
    .parameter "slotIndex"
    .parameter "rootPane"

    .prologue
    .line 1059
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1060
    .local v0, offset:Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 1061
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1062
    .local v1, r:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1064
    return-object v1
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 153
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v8, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 154
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 155
    .local v4, visibleBegin:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v6

    .line 156
    .local v6, visibleLength:I
    add-int v5, v4, v6

    .line 157
    .local v5, visibleEnd:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 158
    .local v2, slotBegin:I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 160
    .local v3, slotEnd:I
    move v0, v4

    .line 161
    .local v0, position:I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 162
    move v0, v4

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 170
    return-void

    .line 163
    :cond_1
    if-ge v2, v4, :cond_2

    .line 164
    move v0, v2

    goto :goto_0

    .line 165
    :cond_2
    if-le v3, v5, :cond_0

    .line 166
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method public moveSlotItem(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView;->mReferenceX:F

    sub-float v0, v2, v3

    .line 280
    .local v0, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView;->mReferenceY:F

    sub-float v1, v2, v3

    .line 281
    .local v1, dy:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mReferenceX:F

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mReferenceY:F

    .line 283
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotRect(IFFLandroid/graphics/Rect;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 285
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 196
    .local v0, visibleIndex:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSize(II)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    .line 198
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 228
    .local v0, limit:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 229
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 237
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 262
    :cond_1
    :goto_0
    return v1

    .line 241
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView;->mReferenceX:F

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView;->mReferenceY:F

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/Paper;->onRelease()V

    .line 248
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    .line 249
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView;->mHasMove:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 250
    :cond_3
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mHasMove:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->moveSlotItem(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 32
    .parameter "canvas"

    .prologue
    .line 386
    invoke-super/range {p0 .. p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 491
    :goto_0
    return-void

    .line 389
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->prepareDrawing()V

    .line 391
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v5

    .line 392
    .local v5, animTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v16

    .line 393
    .local v16, more:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/ui/SlotView$Layout;->advanceAnimation(J)Z

    move-result v29

    or-int v16, v16, v29

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v20, v0

    .line 395
    .local v20, oldX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 397
    const/16 v21, 0x0

    .line 398
    .local v21, paperActive:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    move/from16 v29, v0

    if-nez v29, :cond_5

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v19, v0

    .line 401
    .local v19, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v14

    .line 402
    .local v14, limit:I
    if-lez v20, :cond_1

    if-eqz v19, :cond_2

    :cond_1
    move/from16 v0, v20

    if-ge v0, v14, :cond_4

    move/from16 v0, v19

    if-ne v0, v14, :cond_4

    .line 403
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v28

    .line 404
    .local v28, v:F
    move/from16 v0, v19

    if-ne v0, v14, :cond_3

    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v28, v0

    .line 407
    :cond_3
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->isNaN(F)Z

    move-result v29

    if-nez v29, :cond_4

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/Paper;->edgeReached(F)V

    .line 411
    .end local v28           #v:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v21

    .line 414
    .end local v14           #limit:I
    .end local v19           #newX:I
    :cond_5
    or-int v16, v16, v21

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v29

    or-int v16, v16, v29

    .line 420
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v29, v0

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    move/from16 v30, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 422
    const/16 v25, 0x0

    .line 423
    .local v25, requestCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v30, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v30 .. v30}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v31, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v31 .. v31}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v31

    sub-int v30, v30, v31

    invoke-static/range {v29 .. v30}, Lcom/android/gallery3d/ui/SlotView;->expandIntArray([II)[I

    move-result-object v27

    .line 433
    .local v27, requestedSlot:[I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveBegin:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-object/from16 v29, v0

    if-eqz v29, :cond_f

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v12

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_12

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v8, v0

    .line 436
    .local v8, centerX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v9, v0

    .line 437
    .local v9, centerY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->computerSlotIndexByPosition(FFI)I

    move-result v13

    .line 438
    .local v13, index:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-le v13, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_7

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual/range {v29 .. v29}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v7

    .line 440
    .local v7, bucketId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v13, v0, :cond_a

    .line 441
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v29

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/gallery3d/ui/SlotView;->updateCanvas(Lcom/android/gallery3d/ui/GLCanvas;I[IZ)V

    .line 454
    .end local v7           #bucketId:I
    :cond_7
    :goto_2
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-direct {v0, v1, v12, v2}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;II)I

    move-result v23

    .line 455
    .local v23, r:I
    and-int/lit8 v29, v23, 0x2

    if-eqz v29, :cond_8

    const/16 v16, 0x1

    .line 456
    :cond_8
    and-int/lit8 v29, v23, 0x1

    if-eqz v29, :cond_9

    add-int/lit8 v26, v25, 0x1

    .end local v25           #requestCount:I
    .local v26, requestCount:I
    aput v12, v27, v25

    move/from16 v25, v26

    .line 434
    .end local v26           #requestCount:I
    .restart local v25       #requestCount:I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 442
    .end local v23           #r:I
    .restart local v7       #bucketId:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z

    move/from16 v29, v0

    if-nez v29, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-lt v13, v0, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v29

    move/from16 v0, v29

    if-eq v7, v0, :cond_d

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v29

    move/from16 v0, v29

    if-eq v7, v0, :cond_d

    sget v29, Lcom/android/gallery3d/ui/SlotView;->SECUREID:I

    move/from16 v0, v29

    if-eq v7, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_d

    .line 446
    :cond_c
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v29

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/gallery3d/ui/SlotView;->updateCanvas(Lcom/android/gallery3d/ui/GLCanvas;I[IZ)V

    goto :goto_2

    .line 448
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v24

    .line 449
    .local v24, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 450
    .local v10, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 451
    .local v11, dy:I
    const/16 v29, 0xf

    move/from16 v0, v29

    if-gt v10, v0, :cond_e

    const/16 v29, 0xf

    move/from16 v0, v29

    if-le v11, v0, :cond_7

    :cond_e
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/SlotView;->mHasMove:Z

    goto/16 :goto_2

    .line 459
    .end local v7           #bucketId:I
    .end local v8           #centerX:F
    .end local v9           #centerY:F
    .end local v10           #dx:I
    .end local v11           #dy:I
    .end local v12           #i:I
    .end local v13           #index:I
    .end local v24           #rect:Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v12

    .restart local v12       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_12

    .line 460
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v23

    .line 461
    .restart local v23       #r:I
    and-int/lit8 v29, v23, 0x2

    if-eqz v29, :cond_10

    const/16 v16, 0x1

    .line 462
    :cond_10
    and-int/lit8 v29, v23, 0x1

    if-eqz v29, :cond_11

    add-int/lit8 v26, v25, 0x1

    .end local v25           #requestCount:I
    .restart local v26       #requestCount:I
    aput v12, v27, v25

    move/from16 v25, v26

    .line 459
    .end local v26           #requestCount:I
    .restart local v25       #requestCount:I
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 466
    .end local v23           #r:I
    :cond_12
    const/16 v22, 0x1

    .local v22, pass:I
    :goto_4
    if-eqz v25, :cond_15

    .line 467
    const/16 v17, 0x0

    .line 468
    .local v17, newCount:I
    const/4 v12, 0x0

    move/from16 v18, v17

    .end local v17           #newCount:I
    .local v18, newCount:I
    :goto_5
    move/from16 v0, v25

    if-ge v12, v0, :cond_14

    .line 469
    aget v29, v27, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v23

    .line 471
    .restart local v23       #r:I
    and-int/lit8 v29, v23, 0x2

    if-eqz v29, :cond_13

    const/16 v16, 0x1

    .line 472
    :cond_13
    and-int/lit8 v29, v23, 0x1

    if-eqz v29, :cond_18

    add-int/lit8 v17, v18, 0x1

    .end local v18           #newCount:I
    .restart local v17       #newCount:I
    aput v12, v27, v18

    .line 468
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v17

    .end local v17           #newCount:I
    .restart local v18       #newCount:I
    goto :goto_5

    .line 474
    .end local v23           #r:I
    :cond_14
    move/from16 v25, v18

    .line 466
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 477
    .end local v18           #newCount:I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 479
    if-eqz v16, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 481
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    .line 482
    .local v15, listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_17

    if-nez v16, :cond_17

    if-eqz v15, :cond_17

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/gallery3d/ui/SlotView$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/gallery3d/ui/SlotView$1;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_17
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    goto/16 :goto_0

    .end local v15           #listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    .restart local v18       #newCount:I
    .restart local v23       #r:I
    :cond_18
    move/from16 v17, v18

    .end local v18           #newCount:I
    .restart local v17       #newCount:I
    goto :goto_6
.end method

.method public setAlbumSetDataAdapter(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 0
    .parameter "albumSetDataLoader"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 276
    return-void
.end method

.method public setCenterIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    .line 138
    .local v2, slotCount:I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 142
    .local v1, rect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 145
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setHomeAlbums(Z)V
    .locals 0
    .parameter "isHomeAlbums"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z

    .line 150
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    .line 366
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 175
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 176
    return-void
.end method

.method public setSelectionManager(Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 0
    .parameter "selectionManager"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 272
    return-void
.end method

.method public setSlotCount(IZ)Z
    .locals 3
    .parameter "slotCount"
    .parameter "add"

    .prologue
    const/4 v2, -0x1

    .line 1025
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotCount(IZ)Z

    move-result v0

    .line 1028
    .local v0, changed:Z
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 1029
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    .line 1030
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 1033
    :cond_0
    if-eqz p2, :cond_1

    .line 1034
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 1038
    :goto_0
    return v0

    .line 1036
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 3
    .parameter "slotDrawer"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$200(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 133
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 180
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->start()V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 213
    :cond_0
    return-void
.end method

.method public updateCanvas(Lcom/android/gallery3d/ui/GLCanvas;I[IZ)V
    .locals 9
    .parameter "canvas"
    .parameter "index"
    .parameter "requestedSlot"
    .parameter "moveToNext"

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, requestCount:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSet;

    .line 326
    .local v1, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz p4, :cond_3

    if-eq p2, v7, :cond_3

    .line 327
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    .local v0, j:I
    move v4, v3

    .end local v3           #requestCount:I
    .local v4, requestCount:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 328
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->updataAlbumSets(Ljava/util/ArrayList;)V

    .line 330
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->updateMediaSet(I)V

    .line 331
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v5, v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->prepareSlotContent(I)V

    .line 332
    invoke-direct {p0, p1, v0, v8}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;II)I

    move-result v2

    .line 333
    .local v2, r:I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_6

    .line 334
    add-int/lit8 v3, v4, 0x1

    .end local v4           #requestCount:I
    .restart local v3       #requestCount:I
    aput v0, p3, v4

    .line 327
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #requestCount:I
    .restart local v4       #requestCount:I
    goto :goto_0

    .end local v2           #r:I
    :cond_0
    move v3, v4

    .line 348
    .end local v0           #j:I
    .end local v4           #requestCount:I
    .restart local v3       #requestCount:I
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->updataAlbumSets(Ljava/util/ArrayList;)V

    .line 350
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v5, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->updateMediaSet(I)V

    .line 351
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v5, p2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->prepareSlotContent(I)V

    .line 352
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    .line 353
    invoke-direct {p0, p1, p2, v8}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;II)I

    move-result v2

    .line 354
    .restart local v2       #r:I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_2

    .line 355
    add-int/lit8 v4, v3, 0x1

    .end local v3           #requestCount:I
    .restart local v4       #requestCount:I
    aput p2, p3, v3

    move v3, v4

    .line 356
    .end local v4           #requestCount:I
    .restart local v3       #requestCount:I
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/ui/SlotView;->mHasMove:Z

    .line 357
    return-void

    .line 336
    .end local v2           #r:I
    :cond_3
    if-eq p2, v7, :cond_1

    .line 337
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoveIndex:I

    .restart local v0       #j:I
    move v4, v3

    .end local v3           #requestCount:I
    .restart local v4       #requestCount:I
    :goto_3
    if-le v0, p2, :cond_5

    .line 338
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->updataAlbumSets(Ljava/util/ArrayList;)V

    .line 340
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->updateMediaSet(I)V

    .line 341
    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v5, v0}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->prepareSlotContent(I)V

    .line 342
    invoke-direct {p0, p1, v0, v8}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;II)I

    move-result v2

    .line 343
    .restart local v2       #r:I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_4

    .line 344
    add-int/lit8 v3, v4, 0x1

    .end local v4           #requestCount:I
    .restart local v3       #requestCount:I
    aput v0, p3, v4

    .line 337
    :goto_4
    add-int/lit8 v0, v0, -0x1

    move v4, v3

    .end local v3           #requestCount:I
    .restart local v4       #requestCount:I
    goto :goto_3

    :cond_4
    move v3, v4

    .end local v4           #requestCount:I
    .restart local v3       #requestCount:I
    goto :goto_4

    .end local v2           #r:I
    .end local v3           #requestCount:I
    .restart local v4       #requestCount:I
    :cond_5
    move v3, v4

    .end local v4           #requestCount:I
    .restart local v3       #requestCount:I
    goto :goto_2

    .end local v3           #requestCount:I
    .restart local v2       #r:I
    .restart local v4       #requestCount:I
    :cond_6
    move v3, v4

    .end local v4           #requestCount:I
    .restart local v3       #requestCount:I
    goto :goto_1
.end method
