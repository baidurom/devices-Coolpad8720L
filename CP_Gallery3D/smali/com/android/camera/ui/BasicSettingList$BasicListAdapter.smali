.class Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BasicSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BasicSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicListAdapter"
.end annotation


# instance fields
.field mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field final synthetic this$0:Lcom/android/camera/ui/BasicSettingList;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/BasicSettingList;Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "preferenceGroup"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    iput-object p3, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 93
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/camera/PreferenceGroup;->getInvisibleCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    .local v6, textView:Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 144
    .local v7, textView2:Landroid/widget/TextView;
    if-nez p2, :cond_3

    .line 145
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 148
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040065

    invoke-virtual {v1, v8, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 154
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .local v5, sv:Landroid/view/View;
    :goto_0
    const v8, 0x7f100135

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 155
    .restart local v6       #textView:Landroid/widget/TextView;
    const v8, 0x7f100136

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #textView2:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 157
    .restart local v7       #textView2:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v8, p1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v2

    .line 158
    .local v2, obj:Lcom/android/camera/CameraPreference;
    const/4 v3, 0x0

    .line 159
    .local v3, pref:Lcom/android/camera/IconListPreference;
    instance-of v8, v2, Lcom/android/camera/IconListPreference;

    if-eqz v8, :cond_2

    move-object v3, v2

    .line 160
    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 161
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_restore_key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 162
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 165
    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 167
    .local v4, selectedIndex:I
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    .local v0, entries:[Ljava/lang/CharSequence;
    if-ltz v4, :cond_1

    array-length v8, v0

    if-ge v4, v8, :cond_1

    .line 170
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_restore_key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 171
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 172
    aget-object v8, v0, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 180
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$000(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->DISABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$000(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v4           #selectedIndex:I
    :cond_2
    :goto_2
    return-object v5

    .line 151
    .end local v2           #obj:Lcom/android/camera/CameraPreference;
    .end local v3           #pref:Lcom/android/camera/IconListPreference;
    .end local v5           #sv:Landroid/view/View;
    :cond_3
    move-object v5, p2

    .restart local v5       #sv:Landroid/view/View;
    goto/16 :goto_0

    .line 175
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #obj:Lcom/android/camera/CameraPreference;
    .restart local v3       #pref:Lcom/android/camera/IconListPreference;
    .restart local v4       #selectedIndex:I
    :cond_4
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 184
    :cond_5
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->ENABLED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$100(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v8, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->this$0:Lcom/android/camera/ui/BasicSettingList;

    #getter for: Lcom/android/camera/ui/BasicSettingList;->SELECTED_COLOR:I
    invoke-static {v8}, Lcom/android/camera/ui/BasicSettingList;->access$200(Lcom/android/camera/ui/BasicSettingList;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, p1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 128
    .local v0, obj:Lcom/android/camera/CameraPreference;
    const/4 v1, 0x0

    .line 129
    .local v1, pref:Lcom/android/camera/IconListPreference;
    instance-of v2, v0, Lcom/android/camera/IconListPreference;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 130
    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 132
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v2

    .line 134
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
