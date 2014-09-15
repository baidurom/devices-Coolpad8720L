.class public Lcom/android/gallery3d/ui/GeneralListView;
.super Landroid/widget/ListView;
.source "GeneralListView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;

.field mContext:Landroid/content/Context;

.field private final mMaxItems:I

.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GeneralListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/ui/GeneralListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/gallery3d/ui/GeneralListView;->mMaxItems:I

    .line 35
    const-string v0, "GeneralListView"

    iput-object v0, p0, Lcom/android/gallery3d/ui/GeneralListView;->TAG:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GeneralListView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ui/GeneralListView;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/GeneralListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GeneralListView;->mResources:Landroid/content/res/Resources;

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/GeneralListView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02027c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public getListWidthAndHeight()[I
    .locals 10

    .prologue
    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, widthspec:I
    const/4 v2, 0x0

    .line 85
    .local v2, heightspec:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/ui/GeneralListAdapter;

    iput-object v8, p0, Lcom/android/gallery3d/ui/GeneralListView;->adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;

    .line 86
    iget-object v8, p0, Lcom/android/gallery3d/ui/GeneralListView;->adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;

    if-eqz v8, :cond_0

    .line 87
    iget-object v8, p0, Lcom/android/gallery3d/ui/GeneralListView;->adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GeneralListAdapter;->getItemMaxWidth()I

    move-result v7

    .line 88
    iget-object v8, p0, Lcom/android/gallery3d/ui/GeneralListView;->adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/GeneralListAdapter;->getItemMaxHeight(I)I

    move-result v2

    .line 91
    :cond_0
    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 92
    .local v6, widthMeasureSpec:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/GeneralListView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/gallery3d/util/Environment;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/GeneralListView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/gallery3d/util/Environment;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x3c

    const/high16 v9, -0x8000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 96
    .local v1, heightMeasureSpec:I
    invoke-virtual {p0, v6, v1}, Landroid/view/View;->measure(II)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingRight()I

    move-result v9

    add-int v5, v8, v9

    .line 99
    .local v5, width:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 100
    .local v0, height:I
    int-to-float v8, v2

    const v9, 0x40d66666

    mul-float v3, v8, v9

    .line 101
    .local v3, maxHeight:F
    int-to-float v8, v0

    cmpl-float v8, v8, v3

    if-lez v8, :cond_1

    .line 102
    float-to-int v0, v3

    .line 105
    :cond_1
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 106
    .local v4, retvalue:[I
    const/4 v8, 0x0

    aput v5, v4, v8

    .line 107
    const/4 v8, 0x1

    aput v0, v4, v8

    .line 110
    return-object v4
.end method

.method public initialize(Ljava/util/List;)V
    .locals 4
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
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 60
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    const-string v1, "GeneralListView"

    const-string v2, "initialize() return null"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GeneralListAdapter;

    .line 66
    .local v0, adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;
    if-nez v0, :cond_2

    .line 67
    new-instance v0, Lcom/android/gallery3d/ui/GeneralListAdapter;

    .end local v0           #adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GeneralListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/gallery3d/ui/GeneralListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 68
    .restart local v0       #adapter:Lcom/android/gallery3d/ui/GeneralListAdapter;
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GeneralListView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GeneralListAdapter;->setList(Ljava/util/List;)V

    goto :goto_1
.end method
