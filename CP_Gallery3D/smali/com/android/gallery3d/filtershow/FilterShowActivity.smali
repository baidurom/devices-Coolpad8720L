.class public Lcom/android/gallery3d/filtershow/FilterShowActivity;
.super Landroid/app/Activity;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/android/gallery3d/util/MultiWndStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field private static mImageBorderSize:I


# instance fields
.field private mBorderButton:Landroid/widget/ImageButton;

.field private final mBottomPanelButtons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mColorsButton:Landroid/widget/ImageButton;

.field private mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mFxButton:Landroid/widget/ImageButton;

.field private mGeometryButton:Landroid/widget/ImageButton;

.field private mGiftype:Z

.field private mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

.field private mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

.field private mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

.field private mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

.field private mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

.field private mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

.field private mListBorders:Landroid/view/View;

.field private mListColors:Landroid/view/View;

.field private mListFilterButtons:Landroid/view/View;

.field private mListFx:Landroid/view/View;

.field private mListGeometry:Landroid/view/View;

.field private final mListViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

.field private mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private final mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

.field private mSavingProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShareButton:Landroid/widget/ImageButton;

.field private mSharedOutputFile:Ljava/io/File;

.field private mSharingImage:Z

.field private mShowingHistoryPanel:Z

.field private mShowingImageStatePanel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x4

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    .line 1047
    const-string v0, "jni_filtershow_filters"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/PanelController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 109
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 110
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 111
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 112
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 113
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 114
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 115
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 116
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 117
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 118
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 120
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 121
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 122
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 123
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 124
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 126
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 127
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 128
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 129
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 130
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareButton:Landroid/widget/ImageButton;

    .line 132
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 138
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    .line 142
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    .line 143
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    .line 146
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 148
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGiftype:Z

    .line 437
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    return-void
.end method

.method private createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 919
    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    return-object v0
.end method

.method private fillListBorders(Landroid/widget/LinearLayout;)V
    .locals 12
    .parameter "listBorders"

    .prologue
    .line 743
    const/4 v8, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_0

    .line 750
    .local v7, title_id:[I
    const/4 v5, 0x0

    .line 751
    .local v5, p:I
    const/4 v8, 0x7

    new-array v0, v8, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 752
    .local v0, borders:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .local v6, p:I
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v8, v0, v5

    .line 754
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200cd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 755
    .local v3, npd1:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #p:I
    .restart local v5       #p:I
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v8, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v8, v0, v6

    .line 756
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 757
    .local v4, npd2:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .restart local v6       #p:I
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v8, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v8, v0, v5

    .line 758
    add-int/lit8 v5, v6, 0x1

    .end local v6           #p:I
    .restart local v5       #p:I
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/high16 v9, -0x100

    sget v10, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v8, v0, v6

    .line 759
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .restart local v6       #p:I
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/high16 v9, -0x100

    sget v10, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v11, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v8, v9, v10, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v8, v0, v5

    .line 761
    add-int/lit8 v5, v6, 0x1

    .end local v6           #p:I
    .restart local v5       #p:I
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/4 v9, -0x1

    sget v10, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v8, v0, v6

    .line 762
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .restart local v6       #p:I
    new-instance v8, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    const/4 v9, -0x1

    sget v10, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v11, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v8, v9, v10, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v8, v0, v5

    .line 765
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 766
    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;-><init>(Landroid/content/Context;)V

    .line 767
    .local v1, filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
    if-nez v2, :cond_0

    .line 768
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 772
    :goto_1
    aget-object v8, v0, v2

    aget v9, v7, v2

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 773
    aget-object v8, v0, v2

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 774
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 775
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setBorder(Z)V

    .line 776
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setShowTitle(Z)V

    .line 777
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 778
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    goto :goto_1

    .line 780
    .end local v1           #filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
    :cond_1
    return-void

    .line 743
    nop

    :array_0
    .array-data 0x4
        0x33t 0x0t 0xet 0x7ft
        0x34t 0x0t 0xet 0x7ft
        0x35t 0x0t 0xet 0x7ft
        0x36t 0x0t 0xet 0x7ft
        0x37t 0x0t 0xet 0x7ft
        0x38t 0x0t 0xet 0x7ft
        0x39t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method private fillListImages(Landroid/widget/LinearLayout;)V
    .locals 14
    .parameter "listFilters"

    .prologue
    const/16 v11, 0x9

    .line 680
    const/16 v10, 0x12

    new-array v3, v10, [Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    .line 681
    .local v3, fxArray:[Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
    const/4 v7, 0x0

    .line 683
    .local v7, p:I
    new-array v1, v11, [I

    fill-array-data v1, :array_0

    .line 695
    .local v1, drawid:[I
    new-array v4, v11, [I

    fill-array-data v4, :array_1

    .line 707
    .local v4, fxNameid:[I
    new-instance v9, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const v10, 0x7f0e000e

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Ljava/lang/String;)V

    .line 708
    .local v9, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 709
    new-instance v10, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-direct {v10, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 711
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 712
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iput-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 714
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    new-instance v11, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    const/4 v12, 0x0

    const v13, 0x7f0e002e

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 716
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v10, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 717
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 718
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 719
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 720
    .local v6, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 722
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v10, v1

    if-ge v5, v10, :cond_0

    .line 723
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    aget v11, v1, v5

    invoke-static {v10, v11, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 724
    .local v0, b:Landroid/graphics/Bitmap;
    add-int/lit8 v8, v7, 0x1

    .end local v7           #p:I
    .local v8, p:I
    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    aget v11, v4, v5

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    aput-object v10, v3, v7

    .line 722
    add-int/lit8 v5, v5, 0x1

    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    goto :goto_0

    .line 727
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    .line 728
    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 729
    .local v2, filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget-object v10, v3, v5

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 730
    invoke-virtual {v2, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 731
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    .line 732
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 733
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 727
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 737
    .end local v2           #filter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    :cond_1
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 738
    return-void

    .line 683
    nop

    :array_0
    .array-data 0x4
        0xeft 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 695
    :array_1
    .array-data 0x4
        0xe0t 0x0t 0xet 0x7ft
        0xdbt 0x0t 0xet 0x7ft
        0xdft 0x0t 0xet 0x7ft
        0xddt 0x0t 0xet 0x7ft
        0xdct 0x0t 0xet 0x7ft
        0xe2t 0x0t 0xet 0x7ft
        0xdet 0x0t 0xet 0x7ft
        0xe3t 0x0t 0xet 0x7ft
        0xe1t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method private getScreenImageSize()I
    .locals 6

    .prologue
    .line 507
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 508
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 509
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 510
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 511
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 512
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 513
    .local v2, msize:I
    mul-int/lit16 v4, v2, 0x85

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v4, v5

    return v4
.end method

.method private hideSavingProgress()V
    .locals 2

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 539
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 541
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    .line 543
    .end local v0           #progress:Landroid/app/ProgressDialog;
    :cond_1
    return-void
.end method

.method private parseGif(Landroid/net/Uri;)Z
    .locals 10
    .parameter "uri"

    .prologue
    .line 1051
    const/4 v4, 0x0

    .line 1052
    .local v4, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1053
    .local v2, inBuffer:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 1055
    .local v5, isGifType:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 1056
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v9, 0xa

    invoke-direct {v3, v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .end local v2           #inBuffer:Ljava/io/BufferedInputStream;
    .local v3, inBuffer:Ljava/io/BufferedInputStream;
    const/16 v9, 0xa

    :try_start_1
    new-array v7, v9, [B

    .line 1058
    .local v7, mTypeBuffer:[B
    const/4 v0, 0x6

    .line 1059
    .local v0, byteCount:I
    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 1061
    .local v8, mediaType:I
    if-lez v8, :cond_1

    .line 1062
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 1063
    .local v6, mString:Ljava/lang/String;
    const-string v9, "GIF87a"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "GIF89a"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_1

    .line 1065
    :cond_0
    const/4 v5, 0x1

    .line 1071
    .end local v6           #mString:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 1072
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 1074
    .end local v0           #byteCount:I
    .end local v3           #inBuffer:Ljava/io/BufferedInputStream;
    .end local v7           #mTypeBuffer:[B
    .end local v8           #mediaType:I
    .restart local v2       #inBuffer:Ljava/io/BufferedInputStream;
    :goto_0
    return v5

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1071
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 1072
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1071
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 1072
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 1071
    .end local v2           #inBuffer:Ljava/io/BufferedInputStream;
    .restart local v3       #inBuffer:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #inBuffer:Ljava/io/BufferedInputStream;
    .restart local v2       #inBuffer:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 1068
    .end local v2           #inBuffer:Ljava/io/BufferedInputStream;
    .restart local v3       #inBuffer:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #inBuffer:Ljava/io/BufferedInputStream;
    .restart local v2       #inBuffer:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private resetHistory()V
    .locals 4

    .prologue
    .line 906
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 907
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 909
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 910
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->reset()V

    .line 911
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 912
    .local v1, original:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 913
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/PanelController;->resetParameters()V

    .line 914
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 915
    return-void
.end method

.method private showSavingProgress(Ljava/lang/String;)V
    .locals 6
    .parameter "albumName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 520
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 534
    :goto_0
    return-void

    .line 527
    .end local v0           #progress:Landroid/app/ProgressDialog;
    :cond_0
    if-nez p1, :cond_1

    .line 528
    const v2, 0x7f0e0081

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, progressText:Ljava/lang/String;
    :goto_1
    const-string v2, ""

    invoke-static {p0, v2, v1, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 533
    .restart local v0       #progress:Landroid/app/ProgressDialog;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 530
    .end local v0           #progress:Landroid/app/ProgressDialog;
    .end local v1           #progressText:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0e0082

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #progressText:Ljava/lang/String;
    goto :goto_1
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 425
    const v3, 0x7f10006a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, filters:Landroid/view/View;
    const v3, 0x7f100069

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 427
    .local v1, loading:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    const v3, 0x7f10007d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, tinyPlanetView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 431
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 434
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 435
    return-void
.end method

.method private toggleImageStatePanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 832
    const v3, 0x7f10005e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 833
    .local v1, view:Landroid/view/View;
    const v3, 0x7f10005c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 835
    .local v2, viewList:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v3, :cond_0

    .line 836
    const v3, 0x7f10008c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 837
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 840
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v0

    .line 841
    .local v0, translate:I
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-nez v3, :cond_1

    .line 842
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 843
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;

    invoke-direct {v4, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 859
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 860
    return-void

    .line 854
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 855
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 856
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private translateMainPanel(Landroid/view/View;)I
    .locals 5
    .parameter "viewPanel"

    .prologue
    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 494
    .local v0, accessoryPanelWidth:I
    const v4, 0x7f10005b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 495
    .local v3, mainViewWidth:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 496
    .local v2, mainPanelWidth:I
    if-nez v2, :cond_0

    .line 497
    move v2, v3

    .line 499
    :cond_0
    sub-int v4, v3, v2

    sub-int v1, v4, v0

    .line 500
    .local v1, leftOver:I
    if-gez v1, :cond_1

    .line 501
    neg-int v4, v0

    .line 503
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cannotLoadImage()V
    .locals 3

    .prologue
    .line 936
    const v2, 0x7f0e0001

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, text:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 938
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 939
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 940
    return-void
.end method

.method public completeSaveImage(Landroid/net/Uri;)V
    .locals 4
    .parameter "saveUri"

    .prologue
    .line 546
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 548
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 550
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 551
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "prepare"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 552
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 554
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 555
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 556
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 557
    return-void
.end method

.method public getPixelsFromDip(F)F
    .locals 3
    .parameter "value"

    .prologue
    .line 945
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 946
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 794
    .local v1, views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 795
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    goto :goto_0

    .line 797
    .end local v1           #views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public isShowingHistoryPanel()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1009
    const-string v1, "FilterShowActivity"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1011
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1012
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1013
    .local v0, selectedImageUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 1016
    .end local v0           #selectedImageUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    .line 933
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 865
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 866
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 869
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->parseGif(Landroid/net/Uri;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGiftype:Z

    .line 163
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGiftype:Z

    if-eqz v2, :cond_0

    .line 164
    const v2, 0x7f0e006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 422
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->setRenderScriptContext(Landroid/app/Activity;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setDefaultBackgroundColor(I)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setDefaultBackgroundColor(I)V

    .line 174
    const/high16 v2, 0x4380

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setZoomedSize(F)V

    .line 175
    const/high16 v2, 0x4160

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTextSize(I)V

    .line 176
    const/high16 v2, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextSize(I)V

    .line 177
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextPadding(I)V

    .line 178
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextMargin(I)V

    .line 179
    const/high16 v2, 0x4190

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextSize(I)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalText(Ljava/lang/String;)V

    .line 181
    const/high16 v2, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextSize(I)V

    .line 182
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextPadding(I)V

    .line 183
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setMargin(I)V

    .line 184
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setTextMargin(I)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 186
    .local v11, curveHandle:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    .line 187
    .local v12, curveHandleSize:I
    invoke-static {v11, v12}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveHandle(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveWidth(I)V

    .line 190
    const v2, 0x7f040025

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 192
    .local v9, actionBar:Landroid/app/ActionBar;
    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 193
    const v2, 0x7f040024

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 195
    invoke-virtual {v9}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v9}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareButton:Landroid/widget/ImageButton;

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v2, Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 214
    const v2, 0x7f100071

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 215
    .local v21, listFilters:Landroid/widget/LinearLayout;
    const v2, 0x7f100073

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 216
    .local v19, listBorders:Landroid/widget/LinearLayout;
    const v2, 0x7f10007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 218
    .local v20, listColors:Landroid/widget/LinearLayout;
    const v2, 0x7f10005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 219
    const v2, 0x7f100064

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 220
    const v2, 0x7f100065

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 221
    const v2, 0x7f100060

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 222
    const v2, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 223
    const v2, 0x7f100061

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 224
    const v2, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 225
    const v2, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 226
    const v2, 0x7f100067

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 228
    const/high16 v2, 0x41c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setTouchTolerance(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    const v2, 0x7f100070

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 240
    const v2, 0x7f100072

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 241
    const v2, 0x7f100074

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 242
    const v2, 0x7f10006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 243
    const v2, 0x7f10007b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    const v2, 0x7f100088

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 251
    const v2, 0x7f100089

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 252
    const v2, 0x7f10008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 253
    const v2, 0x7f10008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/PanelController;->setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100064

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100065

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100060

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100061

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100067

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f100076

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f100077

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f100078

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f100079

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 296
    const/16 v2, 0x9

    new-array v0, v2, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 308
    .local v27, recastIDs:[I
    const/16 v2, 0x9

    new-array v15, v2, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    aput-object v3, v15, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    aput-object v3, v15, v2

    .line 321
    .local v15, filters:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    array-length v2, v15

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 322
    new-instance v14, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 323
    .local v14, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget v2, v27, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 324
    .local v30, v:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 325
    .local v26, pos:I
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 327
    aget-object v2, v15, v16

    aget-object v3, v15, v16

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getPreviewParameter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 328
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    if-eqz v2, :cond_1

    .line 329
    aget-object v2, v15, v16

    check-cast v30, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    .end local v30           #v:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 330
    :cond_1
    aget-object v2, v15, v16

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 331
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 333
    aget v2, v27, v16

    invoke-virtual {v14, v2}, Landroid/view/View;->setId(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v14}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 335
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 321
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 338
    .end local v14           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    .end local v26           #pos:I
    :cond_2
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v24, v0

    const/4 v2, 0x0

    const v3, 0x7f100084

    aput v3, v24, v2

    .line 342
    .local v24, overlayIDs:[I
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const v3, 0x7f0200d9

    aput v3, v23, v2

    .line 346
    .local v23, overlayBitmaps:[I
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v25, v0

    const/4 v2, 0x0

    const v3, 0x7f0e0027

    aput v3, v25, v2

    .line 351
    .local v25, overlayNames:[I
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 352
    new-instance v14, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;-><init>(Landroid/content/Context;)V

    .line 353
    .local v14, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    aget v2, v24, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 354
    .restart local v30       #v:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 355
    .restart local v26       #pos:I
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    aget v29, v25, v16

    .line 357
    .local v29, sid:I
    new-instance v13, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v13, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    .line 362
    .local v13, efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    const/16 v2, -0x12c

    invoke-virtual {v13, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, v23, v16

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 366
    .local v10, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v14, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 367
    invoke-virtual {v14, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 370
    aget v2, v24, v16

    invoke-virtual {v14, v2}, Landroid/view/View;->setId(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v14}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 372
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 351
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 375
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    .end local v14           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    .end local v26           #pos:I
    .end local v29           #sid:I
    .end local v30           #v:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10006f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 378
    const v2, 0x7f10008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v2, 0x7f10008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ListView;

    .line 382
    .local v22, operationsList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 384
    const v2, 0x7f10005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 385
    .local v17, imageStateList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageStateAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListImages(Landroid/widget/LinearLayout;)V

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListBorders(Landroid/widget/LinearLayout;)V

    .line 391
    const v2, 0x7f100068

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/SeekBar;

    .line 392
    .local v28, seekBar:Landroid/widget/SeekBar;
    const/16 v2, 0x258

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setRowPanel(Landroid/view/View;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v3, 0x7f10006f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v3, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v3, 0x7f10006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/PanelController;->setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setCurrentPanel(Landroid/view/View;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 404
    .local v18, intent:Landroid/content/Intent;
    const-string v2, "launch-fullscreen"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 408
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 409
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 414
    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, action:Ljava/lang/String;
    const-string v2, "com.android.camera.action.EDITOR_CROP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100077

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 421
    :cond_5
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/util/GalleryUtils;->registerMultiWndStateListener(Lcom/android/gallery3d/util/MultiWndStateObserver;)V

    goto/16 :goto_0

    .line 411
    .end local v8           #action:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->pickImage()V

    goto :goto_3

    .line 417
    .restart local v8       #action:Ljava/lang/String;
    :cond_7
    const-string v2, "com.android.camera.action.TINY_PLANET"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_4

    .line 296
    nop

    :array_0
    .array-data 0x4
        0x80t 0x0t 0x10t 0x7ft
        0x83t 0x0t 0x10t 0x7ft
        0x81t 0x0t 0x10t 0x7ft
        0x86t 0x0t 0x10t 0x7ft
        0x87t 0x0t 0x10t 0x7ft
        0x7et 0x0t 0x10t 0x7ft
        0x85t 0x0t 0x10t 0x7ft
        0x7ft 0x0t 0x10t 0x7ft
        0x82t 0x0t 0x10t 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 593
    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGiftype:Z

    if-eqz v6, :cond_0

    .line 618
    :goto_0
    return v5

    .line 594
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f120004

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 595
    const v6, 0x7f100165

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 596
    .local v2, showHistory:Landroid/view/MenuItem;
    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v6, :cond_2

    .line 597
    const v5, 0x7f0e0008

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 603
    :cond_1
    :goto_1
    const v5, 0x7f100166

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 604
    .local v3, showState:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v5, :cond_3

    .line 605
    const v5, 0x7f0e000a

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 614
    :goto_2
    const v5, 0x7f100162

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 615
    .local v4, undoItem:Landroid/view/MenuItem;
    const v5, 0x7f100163

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 616
    .local v0, redoItem:Landroid/view/MenuItem;
    const v5, 0x7f100164

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 617
    .local v1, resetItem:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 618
    const/4 v5, 0x1

    goto :goto_0

    .line 599
    .end local v0           #redoItem:Landroid/view/MenuItem;
    .end local v1           #resetItem:Landroid/view/MenuItem;
    .end local v3           #showState:Landroid/view/MenuItem;
    .end local v4           #undoItem:Landroid/view/MenuItem;
    :cond_2
    const v6, 0x7f0e0007

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 600
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isInMultiWndState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 601
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 607
    .restart local v3       #showState:Landroid/view/MenuItem;
    :cond_3
    const v5, 0x7f0e0009

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 488
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->removeMultiWndStateListener(Lcom/android/gallery3d/util/MultiWndStateObserver;)V

    .line 489
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 490
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 996
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 997
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 639
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 673
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 641
    :sswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 642
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 643
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 644
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const-string v4, "Undo"

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 649
    .end local v0           #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .end local v1           #position:I
    :sswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 650
    .restart local v0       #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->redo()I

    move-result v1

    .line 651
    .restart local v1       #position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 652
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const-string v4, "Redo"

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 657
    .end local v0           #adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .end local v1           #position:I
    :sswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    goto :goto_0

    .line 661
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleImageStatePanel()V

    goto :goto_0

    .line 665
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    goto :goto_0

    .line 669
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto :goto_0

    .line 639
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_5
        0x7f100162 -> :sswitch_0
        0x7f100163 -> :sswitch_1
        0x7f100164 -> :sswitch_2
        0x7f100165 -> :sswitch_4
        0x7f100166 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 623
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 627
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 631
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 635
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 563
    sget-object v2, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 565
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "prepare"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 567
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 568
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 571
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v2, p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 573
    return v4
.end method

.method public pickImage()V
    .locals 3

    .prologue
    .line 1000
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1001
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1005
    return-void
.end method

.method public saveImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1019
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1021
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 1022
    .local v2, saveDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 1023
    .local v1, bucketId:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, albumName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 1025
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 1029
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #bucketId:I
    .end local v2           #saveDir:Ljava/io/File;
    :goto_0
    return-void

    .line 1027
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public shareImage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1031
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1033
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 1034
    .local v3, saveDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 1035
    .local v1, bucketId:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, v6}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, albumName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 1037
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v6, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;Z)V

    .line 1044
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #bucketId:I
    .end local v3           #saveDir:Ljava/io/File;
    :goto_0
    return-void

    .line 1039
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1041
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public toggleHistoryPanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 875
    const v3, 0x7f10005e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 876
    .local v1, view:Landroid/view/View;
    const v3, 0x7f10008c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 878
    .local v2, viewList:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v3, :cond_0

    .line 879
    const v3, 0x7f10005c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 883
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v0

    .line 884
    .local v0, translate:I
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isInMultiWndState()Z

    move-result v3

    if-nez v3, :cond_1

    .line 885
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 886
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 902
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 903
    return-void

    .line 897
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 898
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 899
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 1115
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1116
    return-void
.end method

.method public useImageFilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/filters/ImageFilter;Z)V
    .locals 4
    .parameter "imageSmallFilter"
    .parameter "imageFilter"
    .parameter "setBorder"

    .prologue
    .line 972
    if-nez p2, :cond_0

    .line 990
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v2, :cond_1

    .line 977
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 979
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 980
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 982
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 983
    .local v1, oldPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 986
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 988
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 989
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method

.method public useImagePreset(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 3
    .parameter "imageSmallFilter"
    .parameter "preset"

    .prologue
    .line 951
    if-nez p2, :cond_0

    .line 968
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v1, :cond_1

    .line 956
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 958
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 959
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 961
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 962
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 963
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 965
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 967
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method
