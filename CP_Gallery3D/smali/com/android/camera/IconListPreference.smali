.class public Lcom/android/camera/IconListPreference;
.super Lcom/android/camera/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private help_body:[Ljava/lang/CharSequence;

.field private mIconIds:[I

.field private mImageIds:[I

.field private mLargeIconIds:[I

.field private mMiniIconIds:[I

.field private mSingleIconId:I

.field private mUseSingleIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    sget-object v2, Lcom/android/gallery3d/R$styleable;->IconListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 47
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/IconListPreference;->mSingleIconId:I

    .line 49
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 51
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    .line 53
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    .line 55
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mMiniIconIds:[I

    .line 60
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->help_body:[Ljava/lang/CharSequence;

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 98
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 99
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 101
    .local v3, n:I
    new-array v2, v3, [I

    .line 102
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public filterDuplicated()V
    .locals 7

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Lcom/android/camera/IntArray;

    invoke-direct {v3}, Lcom/android/camera/IntArray;-><init>()V

    .line 148
    .local v3, iconIds:Lcom/android/camera/IntArray;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v4, v6

    .local v4, len:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 149
    iget-object v6, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 150
    iget-object v6, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v6, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v6, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_0

    .line 153
    iget-object v6, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Lcom/android/camera/IntArray;->add(I)V

    .line 148
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 157
    .local v5, size:I
    new-array v6, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 158
    new-array v6, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {v3}, Lcom/android/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 160
    return-void
.end method

.method public filterUnsupported(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    .local v1, entryValues:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/camera/IntArray;

    invoke-direct {v3}, Lcom/android/camera/IntArray;-><init>()V

    .line 113
    .local v3, iconIds:Lcom/android/camera/IntArray;
    new-instance v5, Lcom/android/camera/IntArray;

    invoke-direct {v5}, Lcom/android/camera/IntArray;-><init>()V

    .line 114
    .local v5, largeIconIds:Lcom/android/camera/IntArray;
    new-instance v4, Lcom/android/camera/IntArray;

    invoke-direct {v4}, Lcom/android/camera/IntArray;-><init>()V

    .line 115
    .local v4, imageIds:Lcom/android/camera/IntArray;
    new-instance v7, Lcom/android/camera/IntArray;

    invoke-direct {v7}, Lcom/android/camera/IntArray;-><init>()V

    .line 116
    .local v7, miniIds:Lcom/android/camera/IntArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, currentHelpBody:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v6, v1

    .local v6, len:I
    :goto_0
    if-ge v2, v6, :cond_5

    .line 119
    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_4

    .line 120
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    aget v8, v8, v2

    invoke-virtual {v3, v8}, Lcom/android/camera/IntArray;->add(I)V

    .line 121
    :cond_0
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    aget v8, v8, v2

    invoke-virtual {v5, v8}, Lcom/android/camera/IntArray;->add(I)V

    .line 122
    :cond_1
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    aget v8, v8, v2

    invoke-virtual {v4, v8}, Lcom/android/camera/IntArray;->add(I)V

    .line 123
    :cond_2
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mMiniIconIds:[I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mMiniIconIds:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Lcom/android/camera/IntArray;->add(I)V

    .line 124
    :cond_3
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->help_body:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_4

    .line 126
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->help_body:[Ljava/lang/CharSequence;

    aget-object v8, v8, v2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_5
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Lcom/android/camera/IntArray;->size()I

    move-result v8

    new-array v8, v8, [I

    invoke-virtual {v3, v8}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 131
    :cond_6
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    if-eqz v8, :cond_7

    .line 132
    invoke-virtual {v5}, Lcom/android/camera/IntArray;->size()I

    move-result v8

    new-array v8, v8, [I

    invoke-virtual {v5, v8}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    .line 134
    :cond_7
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mMiniIconIds:[I

    if-eqz v8, :cond_8

    .line 135
    invoke-virtual {v7}, Lcom/android/camera/IntArray;->size()I

    move-result v8

    new-array v8, v8, [I

    invoke-virtual {v7, v8}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/IconListPreference;->mMiniIconIds:[I

    .line 137
    :cond_8
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->help_body:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_9

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    check-cast v8, [Ljava/lang/CharSequence;

    iput-object v8, p0, Lcom/android/camera/IconListPreference;->help_body:[Ljava/lang/CharSequence;

    .line 140
    :cond_9
    iget-object v8, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    if-eqz v8, :cond_a

    invoke-virtual {v4}, Lcom/android/camera/IntArray;->size()I

    move-result v8

    new-array v8, v8, [I

    invoke-virtual {v4, v8}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    .line 141
    :cond_a
    invoke-super {p0, p1}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 142
    return-void
.end method

.method public getHelpBody(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "index"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->help_body:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->help_body:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getIconIds()[I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getImageIds()[I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mImageIds:[I

    return-object v0
.end method

.method public getLargeIconIds()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mLargeIconIds:[I

    return-object v0
.end method

.method public getMiniIconId()[I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mMiniIconIds:[I

    return-object v0
.end method

.method public setUseSingleIcon(Z)V
    .locals 0
    .parameter "useSingle"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/camera/IconListPreference;->mUseSingleIcon:Z

    .line 95
    return-void
.end method
