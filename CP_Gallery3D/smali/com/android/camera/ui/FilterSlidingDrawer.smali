.class public Lcom/android/camera/ui/FilterSlidingDrawer;
.super Lcom/android/camera/ui/RotateListLayout;
.source "FilterSlidingDrawer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;,
        Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;
    }
.end annotation


# instance fields
.field private currentPos:I

.field private isLandScape:Z

.field private mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

.field private mContentItemsCount:I

.field private mContext:Landroid/content/Context;

.field private mCurOrientation:I

.field private mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

.field private mGridView:Landroid/widget/GridView;

.field private mHandle:Lcom/android/camera/ui/RotateImageView;

.field private mListener:Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;

.field private mPrefListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private oldView:Landroid/view/View;

.field private root:Landroid/view/View;

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "root"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->selectedIndex:I

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->oldView:Landroid/view/View;

    .line 53
    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->currentPos:I

    .line 55
    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mContentItemsCount:I

    .line 178
    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 64
    iput-boolean v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    .line 67
    :goto_0
    iput-object p3, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->root:Landroid/view/View;

    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/android/camera/ui/FilterSlidingDrawer;->initView()V

    .line 71
    return-void

    .line 66
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FilterSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mHandle:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mListener:Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/DirectionsSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/FilterSlidingDrawer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mContentItemsCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/ui/FilterSlidingDrawer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->selectedIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/FilterSlidingDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->currentPos:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/FilterSlidingDrawer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->currentPos:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/FilterSlidingDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    return v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const v4, 0x7f1000fe

    const v3, 0x7f100053

    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->root:Landroid/view/View;

    const v1, 0x7f1000fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DirectionsSlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 111
    iput v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->root:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->root:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mHandle:Lcom/android/camera/ui/RotateImageView;

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mHandle:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    new-instance v1, Lcom/android/camera/ui/FilterSlidingDrawer$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilterSlidingDrawer$1;-><init>(Lcom/android/camera/ui/FilterSlidingDrawer;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerCloseListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    new-instance v1, Lcom/android/camera/ui/FilterSlidingDrawer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FilterSlidingDrawer$2;-><init>(Lcom/android/camera/ui/FilterSlidingDrawer;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;)V

    .line 160
    :cond_1
    return-void

    .line 116
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    iput v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->root:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->root:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mHandle:Lcom/android/camera/ui/RotateImageView;

    goto :goto_0
.end method


# virtual methods
.method public dismissPop()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->close()V

    .line 392
    :cond_0
    return-void
.end method

.method public getDrawer()Landroid/view/View;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    return-object v0
.end method

.method public hideDrawer()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->close()V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    .line 379
    :goto_0
    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    .line 380
    const v0, 0x7f1000fe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mHandle:Lcom/android/camera/ui/RotateImageView;

    .line 381
    invoke-super {p0}, Lcom/android/camera/ui/RotateListLayout;->onFinishInflate()V

    .line 382
    return-void

    .line 378
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 80
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, newValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->getData()Lcom/android/camera/IconListPreference;

    move-result-object v1

    .line 89
    .local v1, pref:Lcom/android/camera/IconListPreference;
    iput p3, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->currentPos:I

    .line 90
    invoke-virtual {v1, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 91
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mPrefListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    const-string v3, "pref_camera_effect_key"

    invoke-interface {v2, v3, v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public refreshOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "isLand"

    .prologue
    .line 181
    iget v1, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    if-eq v1, p1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 184
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    if-eqz v1, :cond_1

    .line 185
    rsub-int p1, p1, 0x10e

    .line 187
    :cond_1
    if-eqz p1, :cond_2

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_5

    .line 189
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    if-eqz v1, :cond_4

    .line 190
    rsub-int/lit8 v1, p1, 0x5a

    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    .line 204
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 205
    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FilterImageView;

    check-cast v1, Lcom/android/camera/ui/FilterImageView;

    iget v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/FilterImageView;->setOrientation(IZ)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v0           #index:I
    :cond_4
    rsub-int v1, p1, 0x168

    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    goto :goto_0

    .line 195
    :cond_5
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 197
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z

    if-eqz v1, :cond_7

    .line 198
    rsub-int v1, p1, 0x10e

    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    goto :goto_0

    .line 200
    :cond_7
    rsub-int v1, p1, 0x168

    iput v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I

    goto :goto_0

    .line 208
    .restart local v0       #index:I
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 209
    return-void
.end method

.method public setDrawerShowListener(Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mListener:Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;

    .line 99
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->setEnabled(Z)V

    .line 418
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 419
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 1
    .parameter "enabled"
    .parameter "lostfocus"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->setEnabled(ZZ)V

    .line 409
    :cond_0
    return-void
.end method

.method public setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "preferListener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mPrefListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 103
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 2
    .parameter "mGroup"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;-><init>(Lcom/android/camera/ui/FilterSlidingDrawer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->refreshPref(Lcom/android/camera/PreferenceGroup;)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mAdapter:Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->refreshPref(Lcom/android/camera/PreferenceGroup;)V

    .line 170
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 435
    iget v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mContentItemsCount:I

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
