.class Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mPreference:Lcom/android/camera/IconListPreference;

.field final synthetic this$0:Lcom/android/camera/ui/SubSettingPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SubSettingPopup;Landroid/content/Context;Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->this$0:Lcom/android/camera/ui/SubSettingPopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mContext:Landroid/content/Context;

    .line 109
    iput-object p3, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    .line 110
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, imageView1:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 156
    .local v7, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 157
    .local v4, imageView2:Landroid/widget/ImageView;
    if-nez p2, :cond_2

    .line 158
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->this$0:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 161
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040067

    const/4 v9, 0x0

    invoke-virtual {v5, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 167
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .local v6, sv:Landroid/view/View;
    :goto_0
    const v8, 0x7f100138

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #imageView1:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 168
    .restart local v3       #imageView1:Landroid/widget/ImageView;
    const v8, 0x7f100135

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #textView:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 169
    .restart local v7       #textView:Landroid/widget/TextView;
    const v8, 0x7f100139

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #imageView2:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 171
    .restart local v4       #imageView2:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v9, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, FocusIndex:I
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 173
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v2

    .line 174
    .local v2, iconIds:[I
    if-nez v2, :cond_0

    .line 175
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v2

    .line 177
    :cond_0
    if-nez v2, :cond_1

    .line 178
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v2

    .line 182
    :cond_1
    if-eqz v2, :cond_3

    .line 183
    aget v8, v2, p1

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :goto_1
    aget-object v8, v1, p1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    if-ne p1, v0, :cond_4

    .line 191
    const v8, 0x7f02023d

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :goto_2
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v8, p1}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 196
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->this$0:Lcom/android/camera/ui/SubSettingPopup;

    #getter for: Lcom/android/camera/ui/SubSettingPopup;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/SubSettingPopup;->access$000(Lcom/android/camera/ui/SubSettingPopup;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 197
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->this$0:Lcom/android/camera/ui/SubSettingPopup;

    #getter for: Lcom/android/camera/ui/SubSettingPopup;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/SubSettingPopup;->access$000(Lcom/android/camera/ui/SubSettingPopup;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->this$0:Lcom/android/camera/ui/SubSettingPopup;

    #getter for: Lcom/android/camera/ui/SubSettingPopup;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/SubSettingPopup;->access$000(Lcom/android/camera/ui/SubSettingPopup;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    :goto_3
    return-object v6

    .line 164
    .end local v0           #FocusIndex:I
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #iconIds:[I
    .end local v6           #sv:Landroid/view/View;
    :cond_2
    move-object v6, p2

    .restart local v6       #sv:Landroid/view/View;
    goto/16 :goto_0

    .line 185
    .restart local v0       #FocusIndex:I
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #iconIds:[I
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 193
    :cond_4
    const v8, 0x7f02022b

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 200
    :cond_5
    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 201
    iget-object v8, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->this$0:Lcom/android/camera/ui/SubSettingPopup;

    #getter for: Lcom/android/camera/ui/SubSettingPopup;->ENABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/SubSettingPopup;->access$100(Lcom/android/camera/ui/SubSettingPopup;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v0

    return v0
.end method
