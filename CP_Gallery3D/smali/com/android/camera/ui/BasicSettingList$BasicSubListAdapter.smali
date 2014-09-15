.class Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BasicSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BasicSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicSubListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mPreference:Lcom/android/camera/IconListPreference;

.field final synthetic this$0:Lcom/android/camera/ui/BasicSettingList;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/BasicSettingList;Landroid/content/Context;Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mContext:Landroid/content/Context;

    .line 197
    iput-object p3, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    .line 198
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 230
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    const/4 v3, 0x0

    .line 243
    .local v3, imageView1:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 244
    .local v7, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 245
    .local v4, imageView2:Landroid/widget/ImageView;
    if-nez p2, :cond_1

    .line 246
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 249
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040067

    const/4 v9, 0x0

    invoke-virtual {v5, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 255
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .local v6, sv:Landroid/view/View;
    :goto_0
    const v8, 0x7f100138

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #imageView1:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 256
    .restart local v3       #imageView1:Landroid/widget/ImageView;
    const v8, 0x7f100135

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #textView:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 257
    .restart local v7       #textView:Landroid/widget/TextView;
    const v8, 0x7f100139

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #imageView2:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 259
    .restart local v4       #imageView2:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v9, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, FocusIndex:I
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 261
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v2

    .line 262
    .local v2, iconIds:[I
    if-nez v2, :cond_0

    .line 263
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v2

    .line 268
    :cond_0
    if-eqz v2, :cond_2

    .line 269
    aget v8, v2, p1

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    :goto_1
    aget-object v8, v1, p1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    if-ne p1, v0, :cond_3

    .line 277
    const v8, 0x7f02023d

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    :goto_2
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8, p1}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 282
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$000(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$000(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$000(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 291
    :goto_3
    return-object v6

    .line 252
    .end local v0           #FocusIndex:I
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #iconIds:[I
    .end local v6           #sv:Landroid/view/View;
    :cond_1
    move-object v6, p2

    .restart local v6       #sv:Landroid/view/View;
    goto :goto_0

    .line 271
    .restart local v0       #FocusIndex:I
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #iconIds:[I
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 279
    :cond_3
    const v8, 0x7f02022b

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 286
    :cond_4
    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 287
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->ENABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$100(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v0

    return v0
.end method
