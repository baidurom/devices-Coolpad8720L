.class public Lcom/android/camera/ui/BasicSettingList;
.super Lcom/android/camera/ui/AbstractSettingList;
.source "BasicSettingList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/SubSettingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;,
        Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;
    }
.end annotation


# instance fields
.field private final DISABLED_COLOR:I

.field private final ENABLED_COLOR:I

.field private final SELECTED_COLOR:I

.field protected mFadeIn:Landroid/view/animation/Animation;

.field protected mFadeOut:Landroid/view/animation/Animation;

.field private mListType:I

.field private mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mSeletedIndex:I

.field mSub:Landroid/widget/RelativeLayout;

.field mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

.field private mSubPreference:Lcom/android/camera/IconListPreference;

.field mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

.field mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSub:Landroid/widget/RelativeLayout;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSeletedIndex:I

    .line 60
    iput-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    .line 61
    iput-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    .line 82
    const v0, 0x7f050014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mFadeIn:Landroid/view/animation/Animation;

    .line 83
    const v0, 0x7f050015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mFadeOut:Landroid/view/animation/Animation;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingList;->DISABLED_COLOR:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingList;->ENABLED_COLOR:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingList;->SELECTED_COLOR:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/BasicSettingList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/ui/BasicSettingList;->DISABLED_COLOR:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/BasicSettingList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/ui/BasicSettingList;->ENABLED_COLOR:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/BasicSettingList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/ui/BasicSettingList;->SELECTED_COLOR:I

    return v0
.end method

.method private inFlaterSubList()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 497
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    if-nez v3, :cond_0

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 501
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1000a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 502
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f040066

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSub:Landroid/widget/RelativeLayout;

    .line 505
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSub:Landroid/widget/RelativeLayout;

    const v4, 0x7f100137

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/SubSettingPopup;

    iput-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    .line 509
    iget-boolean v3, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v3, :cond_1

    .line 510
    iget v3, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v3, :sswitch_data_0

    .line 540
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    .local v1, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v3, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v3, :cond_3

    .line 543
    iget v3, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    if-nez v3, :cond_2

    .line 544
    const/16 v3, 0xc8

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 559
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSub:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 564
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #root:Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 512
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #root:Landroid/view/ViewGroup;
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 515
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 518
    :sswitch_2
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 521
    :sswitch_3
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 525
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v3, :sswitch_data_1

    goto :goto_0

    .line 527
    :sswitch_4
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 530
    :sswitch_5
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 533
    :sswitch_6
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 536
    :sswitch_7
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 546
    .restart local v1       #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 548
    :cond_3
    iget v3, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    if-nez v3, :cond_4

    .line 549
    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 551
    :cond_4
    const/16 v3, 0xc8

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 525
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method private subItemClick(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 567
    invoke-direct {p0}, Lcom/android/camera/ui/BasicSettingList;->inFlaterSubList()V

    .line 569
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v3, v4, :cond_0

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSeletedIndex:I

    if-eq v3, p2, :cond_3

    .line 570
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v3, p2}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    iput-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    .line 571
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_restore_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v3}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onRestorePreferencesClicked()V

    .line 573
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 574
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/SubSettingPopup;->dismissPopup()V

    .line 593
    :cond_1
    :goto_0
    return-void

    .line 576
    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 577
    .local v0, globalPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 578
    aget v3, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 579
    .local v1, x:I
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 580
    .local v2, y:I
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/SubSettingPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 581
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/SubSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/SubSettingPopup$Listener;)V

    .line 583
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    iget v4, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/SubSettingPopup;->showPopup(I)V

    .line 584
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/camera/ui/SubSettingPopup;->setArrorPosition(IIZ)V

    .line 585
    iput p2, p0, Lcom/android/camera/ui/BasicSettingList;->mSeletedIndex:I

    goto :goto_0

    .line 592
    .end local v0           #globalPos:[I
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/SubSettingPopup;->dismissPopup()V

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, res:Z
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 368
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    const/4 v0, 0x1

    .line 373
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 375
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 380
    const/4 v0, 0x1

    .line 382
    :cond_1
    return v0
.end method

.method public getSettingSubListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    return-object v0
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;I)V
    .locals 3
    .parameter "preferenceGroup"
    .parameter "index"

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_capturemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingList;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/BasicSettingList;->mListType:I

    .line 323
    new-instance v0, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;-><init>(Lcom/android/camera/ui/BasicSettingList;Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_1
    return-void
.end method

.method public initializeGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 3
    .parameter "preferenceGroup"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 300
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/BasicSettingList;->mListType:I

    .line 303
    new-instance v1, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;-><init>(Lcom/android/camera/ui/BasicSettingList;Landroid/content/Context;Lcom/android/camera/PreferenceGroup;)V

    iput-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    .line 304
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_1
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 338
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "index"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 466
    iget v1, p0, Lcom/android/camera/ui/BasicSettingList;->mListType:I

    if-ne v1, v2, :cond_4

    .line 467
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 468
    if-ne p3, v2, :cond_3

    .line 470
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_selfCamera_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findIndexOfPreference(Ljava/lang/String;)I

    move-result v0

    .line 471
    .local v0, selfIndex:I
    if-ltz v0, :cond_0

    .line 472
    invoke-direct {p0, p2, v0}, Lcom/android/camera/ui/BasicSettingList;->subItemClick(Landroid/view/View;I)V

    .line 473
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local v0           #selfIndex:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    if-eqz v1, :cond_2

    .line 486
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 495
    :cond_2
    :goto_1
    return-void

    .line 478
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingList;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/BasicSettingList;->subItemClick(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onSubSettingChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_restore_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 600
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onRestorePreferencesClicked()V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 606
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/SubSettingPopup;->dismissPopup()V

    .line 607
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mlistAdapter:Lcom/android/camera/ui/BasicSettingList$BasicListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubListAdapter:Lcom/android/camera/ui/BasicSettingList$BasicSubListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 611
    :cond_3
    return-void

    .line 603
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_selfCamera_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingList;->mSubPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArrorPosition(IIZ)V
    .locals 1
    .parameter "xArrow"
    .parameter "yArrow"
    .parameter "bAnimator"

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v0, :cond_0

    .line 354
    iput p1, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetX:I

    .line 355
    iput p2, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetY:I

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetX:I

    .line 358
    iput p2, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetY:I

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 404
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateListLayout;->setOrientation(IZ)V

    .line 406
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateListLayout;->setOrientation(IZ)V

    .line 409
    iget-boolean v1, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v1, :cond_1

    .line 410
    sparse-switch p1, :sswitch_data_0

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 443
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v1, :cond_3

    .line 444
    if-nez p1, :cond_2

    .line 445
    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 455
    .end local v0           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 412
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 415
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 418
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 421
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 425
    :cond_1
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 427
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 430
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 433
    :sswitch_6
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 436
    :sswitch_7
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingList;->mSubSetting:Lcom/android/camera/ui/SubSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateListLayout;->setLayoutType(I)V

    goto :goto_0

    .line 447
    .restart local v0       #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 449
    :cond_3
    if-nez p1, :cond_4

    .line 450
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 452
    :cond_4
    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 425
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "preferListener"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingList;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 401
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public showPopup(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 341
    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 342
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    invoke-virtual {p0, p1, v2}, Lcom/android/camera/ui/BasicSettingList;->setOrientation(IZ)V

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingList;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 351
    :cond_1
    return-void
.end method
