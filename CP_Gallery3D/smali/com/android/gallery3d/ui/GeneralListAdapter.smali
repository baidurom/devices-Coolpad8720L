.class public Lcom/android/gallery3d/ui/GeneralListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GeneralListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field bShowIcon:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final sLayoutParam:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 46
    .local p2, listItem:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->bShowIcon:Z

    .line 103
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->sLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p2, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->list:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemMaxHeight(I)I
    .locals 6
    .parameter "width"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 131
    const/high16 v3, 0x4000

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 132
    .local v2, widthMeasureSpec:I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 134
    .local v0, heightMeasureSpec:I
    invoke-virtual {p0, v4, v5, v5}, Lcom/android/gallery3d/ui/GeneralListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, itemView:Landroid/view/View;
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    return v3
.end method

.method public getItemMaxWidth()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 109
    .local v3, itemView:Landroid/view/View;
    const/4 v2, 0x0

    .line 110
    .local v2, itemType:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 111
    .local v6, widthMeasureSpec:I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 113
    .local v0, heightMeasureSpec:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GeneralListAdapter;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 114
    invoke-virtual {p0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v5

    .line 115
    .local v5, positionType:I
    if-eq v5, v2, :cond_0

    .line 116
    move v2, v5

    .line 117
    const/4 v3, 0x0

    .line 119
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v3, v7}, Lcom/android/gallery3d/ui/GeneralListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_1

    .line 121
    iget-object v7, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->sLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_1
    invoke-virtual {v3, v6, v0}, Landroid/view/View;->measure(II)V

    .line 124
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v5           #positionType:I
    :cond_2
    return v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "index"
    .parameter "contentView"
    .parameter "parentView"

    .prologue
    .line 76
    if-nez p2, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040034

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;-><init>(Lcom/android/gallery3d/ui/GeneralListAdapter;)V

    .line 79
    .local v1, holder:Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;
    const v3, 0x7f1000ab

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 80
    const v3, 0x7f1000ac

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    :goto_0
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->bShowIcon:Z

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "MENU_ICON"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 88
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 89
    iget-object v3, v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    iget-object v3, v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "MENU_TEXT"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, text:Ljava/lang/String;
    iget-object v3, v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object p2

    .line 83
    .end local v1           #holder:Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;
    goto :goto_0

    .line 93
    :cond_2
    iget-object v3, v1, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
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
    .line 55
    .local p1, listItem:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/android/gallery3d/ui/GeneralListAdapter;->list:Ljava/util/List;

    .line 56
    return-void
.end method
