.class Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilterSlidingDrawer.java"

# interfaces
.implements Lcom/android/camera/ListPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilterSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterItemsAdapter"
.end annotation


# instance fields
.field protected entries:[Ljava/lang/CharSequence;

.field entriesvalues:[Ljava/lang/CharSequence;

.field private items:[Lcom/android/camera/ui/FilterImageView;

.field protected itemsIcon:[I

.field mContext:Landroid/content/Context;

.field mPref:Lcom/android/camera/IconListPreference;

.field mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field final synthetic this$0:Lcom/android/camera/ui/FilterSlidingDrawer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FilterSlidingDrawer;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 217
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/camera/ui/FilterImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->items:[Lcom/android/camera/ui/FilterImageView;

    .line 223
    iput-object p2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method private setPreference(Lcom/android/camera/IconListPreference;)V
    .locals 2
    .parameter "mPref"

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    .line 256
    const-string v0, "none"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;Z)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p0}, Lcom/android/camera/ListPreference;->setOverrideListener(Lcom/android/camera/ListPreference$Listener;)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/camera/ui/FilterSlidingDrawer;->selectedIndex:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$502(Lcom/android/camera/ui/FilterSlidingDrawer;I)I

    .line 259
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->entries:[Ljava/lang/CharSequence;

    .line 260
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->itemsIcon:[I

    .line 261
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->entriesvalues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 4
    .parameter "mGroup"

    .prologue
    const/4 v3, 0x0

    .line 238
    const-string v2, "pref_camera_effect_key"

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findIndexOfPreference(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 240
    .local v0, obj:Lcom/android/camera/CameraPreference;
    const/4 v1, 0x0

    .line 241
    .local v1, pref:Lcom/android/camera/IconListPreference;
    instance-of v2, v0, Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;
    invoke-static {v2}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$300(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/DirectionsSlidingDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v0

    .line 243
    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 244
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->setPreference(Lcom/android/camera/IconListPreference;)V

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #setter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mContentItemsCount:I
    invoke-static {v2, v3}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$402(Lcom/android/camera/ui/FilterSlidingDrawer;I)I

    .line 247
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->itemsIcon:[I

    .line 248
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;
    invoke-static {v2}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$300(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/DirectionsSlidingDrawer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->itemsIcon:[I

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->itemsIcon:[I

    array-length v1, v1

    #setter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mContentItemsCount:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$402(Lcom/android/camera/ui/FilterSlidingDrawer;I)I

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mContentItemsCount:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$402(Lcom/android/camera/ui/FilterSlidingDrawer;I)I

    move-result v0

    goto :goto_0
.end method

.method public getData()Lcom/android/camera/IconListPreference;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 297
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 315
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->items:[Lcom/android/camera/ui/FilterImageView;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 318
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04002d

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FilterImageView;

    .line 320
    .local v1, sv:Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->itemsIcon:[I

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->entriesvalues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->items:[Lcom/android/camera/ui/FilterImageView;

    move-object v2, v1

    check-cast v2, Lcom/android/camera/ui/FilterImageView;

    aput-object v2, v3, p1

    .line 331
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, p1}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 333
    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    move-object v2, v1

    .line 337
    check-cast v2, Lcom/android/camera/ui/FilterImageView;

    iget-object v3, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->itemsIcon:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/FilterImageView;->setResource(ILjava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->currentPos:I
    invoke-static {v2}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$600(Lcom/android/camera/ui/FilterSlidingDrawer;)I

    move-result v2

    if-ne p1, v2, :cond_3

    move-object v2, v1

    .line 340
    check-cast v2, Lcom/android/camera/ui/FilterImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/FilterImageView;->setFocused(Z)V

    :goto_2
    move-object v2, v1

    .line 344
    check-cast v2, Lcom/android/camera/ui/FilterImageView;

    iget-object v3, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mCurOrientation:I
    invoke-static {v3}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$700(Lcom/android/camera/ui/FilterSlidingDrawer;)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/ui/FilterImageView;->setOrientation(IZ)V

    .line 345
    return-object v1

    .line 329
    .end local v1           #sv:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->items:[Lcom/android/camera/ui/FilterImageView;

    aget-object v1, v2, p1

    .restart local v1       #sv:Landroid/view/View;
    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 335
    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 342
    check-cast v2, Lcom/android/camera/ui/FilterImageView;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/FilterImageView;->setFocused(Z)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onOverrided(Ljava/lang/String;Z)V
    .locals 3
    .parameter "overrideValue"
    .parameter "bEnable"

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/camera/ui/FilterSlidingDrawer;->currentPos:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$602(Lcom/android/camera/ui/FilterSlidingDrawer;I)I

    .line 357
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 358
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/camera/ui/FilterSlidingDrawer;->currentPos:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$602(Lcom/android/camera/ui/FilterSlidingDrawer;I)I

    goto :goto_0
.end method

.method public onReloaded(Ljava/lang/String;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 369
    return-void
.end method

.method public onValueChange(Ljava/lang/String;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 363
    return-void
.end method

.method public refreshPref(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .parameter "mGroup"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilterSlidingDrawer$FilterItemsAdapter;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    goto :goto_0
.end method
