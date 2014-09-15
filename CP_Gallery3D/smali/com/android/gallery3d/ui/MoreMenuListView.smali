.class public Lcom/android/gallery3d/ui/MoreMenuListView;
.super Ljava/lang/Object;
.source "MoreMenuListView.java"


# instance fields
.field isShowing:Z

.field mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

.field mPopView:Landroid/view/View;

.field mPopWindow:Landroid/widget/PopupWindow;

.field mScreenMinValue:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->isShowing:Z

    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 45
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopView:Landroid/view/View;

    .line 47
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopView:Landroid/view/View;

    const v3, 0x7f1000aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/GeneralListView;

    iput-object v2, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

    .line 48
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    .local v1, metric:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mScreenMinValue:I

    .line 51
    return-void
.end method

.method private getListMinWidth()I
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    .local v0, metric:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method


# virtual methods
.method public dismissPopupWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 126
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->isShowing:Z

    .line 128
    :cond_0
    return-void
.end method

.method public getMoreMenuListView()Lcom/android/gallery3d/ui/GeneralListView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

    return-object v0
.end method

.method public initialize(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GeneralListView;->initialize(Ljava/util/List;)V

    .line 55
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->isShowing:Z

    return v0
.end method

.method public show(Landroid/widget/LinearLayout;II)V
    .locals 11
    .parameter "mLayout"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 64
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->isShowing:Z

    if-eqz v6, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MoreMenuListView;->dismissPopupWindow()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

    if-eqz v6, :cond_0

    .line 70
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/GeneralListView;->getListWidthAndHeight()[I

    move-result-object v0

    .line 71
    .local v0, dimen:[I
    aget v6, v0, v8

    invoke-direct {p0}, Lcom/android/gallery3d/ui/MoreMenuListView;->getListMinWidth()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/MoreMenuListView;->getListMinWidth()I

    move-result v6

    aput v6, v0, v8

    .line 72
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 73
    .local v1, mActionBarHeight:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 74
    .local v2, mBottomMenuHeight:I
    add-int v6, v1, v2

    const/16 v7, 0x9

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v7

    add-int v5, v6, v7

    .line 75
    .local v5, subHeight:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->getCurrentScreenOrient(Landroid/app/Activity;)I

    move-result v6

    if-nez v6, :cond_3

    .line 76
    iget v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mScreenMinValue:I

    sub-int v3, v6, v5

    .line 77
    .local v3, maxHeight:I
    aget v6, v0, v10

    if-le v6, v3, :cond_3

    aput v3, v0, v10

    .line 80
    .end local v3           #maxHeight:I
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isInMultiWndState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    .local v4, metric:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v5

    aput v6, v0, v10

    .line 86
    .end local v4           #metric:Landroid/util/DisplayMetrics;
    :cond_4
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopView:Landroid/view/View;

    aget v8, v0, v8

    aget v9, v0, v10

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    .line 88
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 89
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 90
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 91
    iput-boolean v10, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->isShowing:Z

    .line 93
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/gallery3d/ui/MoreMenuListView$1;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/MoreMenuListView$1;-><init>(Lcom/android/gallery3d/ui/MoreMenuListView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v6, p0, Lcom/android/gallery3d/ui/MoreMenuListView;->mMoreMenuListView:Lcom/android/gallery3d/ui/GeneralListView;

    new-instance v7, Lcom/android/gallery3d/ui/MoreMenuListView$2;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/MoreMenuListView$2;-><init>(Lcom/android/gallery3d/ui/MoreMenuListView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_0
.end method
