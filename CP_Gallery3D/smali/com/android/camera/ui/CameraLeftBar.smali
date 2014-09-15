.class public Lcom/android/camera/ui/CameraLeftBar;
.super Landroid/widget/RelativeLayout;
.source "CameraLeftBar.java"

# interfaces
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraLeftBar$MenuListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mListState:I

.field mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

.field private mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

.field private mOrientation:I

.field private mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mSubRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    .line 146
    iput v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mCameraId:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    .line 146
    iput v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mCameraId:I

    .line 75
    iput-object p1, p0, Lcom/android/camera/ui/CameraLeftBar;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CameraLeftBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mCameraId:I

    return v0
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BasicSettingList;

    iput-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/BasicSettingList;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_1
    return-void
.end method

.method private registerBtnListener()V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MyPreferenceButton;->setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 156
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MyPreferenceButton;->setBufferOwner(Lcom/android/camera/ui/CameraLeftBar;)V

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method private setBtnPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MyPreferenceButton;->setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/android/camera/ProductConfig;->getFlashModeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MyPreferenceButton;->setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MyPreferenceButton;->setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/android/camera/ui/CameraLeftBar;->initList()V

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v4

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/MyPreferenceButton;->setBtnClickListener(Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/camera/ui/CameraLeftBar$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/CameraLeftBar$1;-><init>(Lcom/android/camera/ui/CameraLeftBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->setIntroductionListener(Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;)V

    .line 248
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_video_flashmode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MyPreferenceButton;->setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_scenemode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MyPreferenceButton;->setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismissPupup()Z
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v1}, Lcom/android/camera/ui/BasicSettingList;->dismissPopup()Z

    move-result v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraLeftBar$MenuListener;->onMenuHide()V

    .line 265
    :cond_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSettingListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    return-object v0
.end method

.method public getSettingSubListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingList;->getSettingSubListView()Landroid/view/View;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mSubRootView:Landroid/view/View;

    return-object v0
.end method

.method public initSubBar(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .parameter "mActivity"
    .parameter "mRoot"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;

    .line 106
    const v1, 0x7f10003e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mSubRootView:Landroid/view/View;

    .line 107
    iget-object v2, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    const v1, 0x7f10003f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MyPreferenceButton;

    aput-object v1, v2, v3

    .line 109
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    array-length v0, v1

    .line 110
    .local v0, numOfCameras:I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v3

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    const v1, 0x7f100040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MyPreferenceButton;

    aput-object v1, v2, v4

    .line 114
    invoke-static {}, Lcom/android/camera/ProductConfig;->getFlashModeSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v4

    const v2, 0x7f0201e6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    const/4 v3, 0x3

    const v1, 0x7f100027

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MyPreferenceButton;

    aput-object v1, v2, v3

    .line 118
    invoke-direct {p0}, Lcom/android/camera/ui/CameraLeftBar;->registerBtnListener()V

    .line 119
    return-void
.end method

.method public isListShowed()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwnerEnabled()Z
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingList;->notifyDataSetChanged()V

    .line 276
    :cond_0
    return-void
.end method

.method public onCameraPickerClicked(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 355
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/android/camera/IconListPreference;)V
    .locals 9
    .parameter "view"
    .parameter "pref"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 388
    invoke-direct {p0}, Lcom/android/camera/ui/CameraLeftBar;->initList()V

    .line 389
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    if-ne v3, v8, :cond_1

    .line 391
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v3}, Lcom/android/camera/ui/BasicSettingList;->dismissPopup()Z

    .line 392
    iput v7, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    .line 393
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    invoke-interface {v3}, Lcom/android/camera/ui/CameraLeftBar$MenuListener;->onMenuHide()V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    new-array v0, v8, [I

    .line 397
    .local v0, globalPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 398
    aget v3, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 399
    .local v1, x:I
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 400
    .local v2, y:I
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v5, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findIndexOfPreference(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/BasicSettingList;->initialize(Lcom/android/camera/PreferenceGroup;I)V

    .line 401
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    iget v4, p0, Lcom/android/camera/ui/CameraLeftBar;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/BasicSettingList;->showPopup(I)V

    .line 402
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v3, v1, v2, v7}, Lcom/android/camera/ui/BasicSettingList;->setArrorPosition(IIZ)V

    .line 403
    iput v8, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    .line 404
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    if-eqz v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    invoke-interface {v3}, Lcom/android/camera/ui/CameraLeftBar$MenuListener;->onMenuShowed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Lcom/android/camera/PreferenceGroup;)V
    .locals 7
    .parameter "view"
    .parameter "group"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    invoke-direct {p0}, Lcom/android/camera/ui/CameraLeftBar;->initList()V

    .line 361
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    if-ne v3, v6, :cond_1

    .line 363
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v3}, Lcom/android/camera/ui/BasicSettingList;->dismissPopup()Z

    .line 364
    iput v5, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    .line 365
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    invoke-interface {v3}, Lcom/android/camera/ui/CameraLeftBar$MenuListener;->onMenuHide()V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 369
    .local v0, globalPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 370
    aget v3, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 371
    .local v1, x:I
    aget v3, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 372
    .local v2, y:I
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/BasicSettingList;->initializeGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 373
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    iget v4, p0, Lcom/android/camera/ui/CameraLeftBar;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/BasicSettingList;->showPopup(I)V

    .line 374
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/camera/ui/BasicSettingList;->setArrorPosition(IIZ)V

    .line 375
    iput v6, p0, Lcom/android/camera/ui/CameraLeftBar;->mListState:I

    .line 376
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    if-eqz v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    invoke-interface {v3}, Lcom/android/camera/ui/CameraLeftBar$MenuListener;->onMenuShowed()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/ui/MyPreferenceButton;

    iput-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    .line 132
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    const/4 v2, 0x2

    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MyPreferenceButton;

    aput-object v0, v1, v2

    .line 135
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onRestorePreferencesClicked()V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    .line 342
    return-void
.end method

.method public onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "pref_camera_capturemode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "selfcamera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraLeftBar;->dismissPupup()Z

    .line 334
    :cond_1
    return-void
.end method

.method public setCameraID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 148
    iput p1, p0, Lcom/android/camera/ui/CameraLeftBar;->mCameraId:I

    .line 149
    return-void
.end method

.method public setDefaultIconFromPreference(Lcom/android/camera/ComboPreferences;)V
    .locals 2
    .parameter "pref"

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-static {}, Lcom/android/camera/ProductConfig;->getFlashModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v0, v0, v1

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/MyPreferenceButton;->setDefaultIcon(Lcom/android/camera/ComboPreferences;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setMenuListener(Lcom/android/camera/ui/CameraLeftBar$MenuListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/ui/CameraLeftBar;->mMenuListener:Lcom/android/camera/ui/CameraLeftBar$MenuListener;

    .line 169
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/MyPreferenceButton;->setOrientation(IZ)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/CameraLeftBar;->mOrientation:I

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/BasicSettingList;->setOrientation(IZ)V

    .line 101
    :cond_1
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 171
    const-string v0, "CameraLeftBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferenceGroup group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-object p1, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 175
    invoke-direct {p0}, Lcom/android/camera/ui/CameraLeftBar;->setBtnPreference()V

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingList;->dismissPopup()Z

    .line 181
    :cond_0
    return-void
.end method

.method public setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/camera/ui/CameraLeftBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mMainSettingList:Lcom/android/camera/ui/BasicSettingList;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/BasicSettingList;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 166
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mSubRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/CameraLeftBar;->mSubRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public updateGpsIndicator(I)V
    .locals 4
    .parameter "gpsState"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, iconId:I
    packed-switch p1, :pswitch_data_0

    .line 294
    const v0, 0x7f020269

    .line 300
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    const v0, 0x7f02026a

    .line 283
    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    const v0, 0x7f020268

    .line 287
    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraLeftBar;->mBtnItems:[Lcom/android/camera/ui/MyPreferenceButton;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    const v0, 0x7f020269

    .line 292
    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
