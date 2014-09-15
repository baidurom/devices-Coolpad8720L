.class public Lcom/android/camera/ui/CameraFaceEffectBar;
.super Landroid/widget/RelativeLayout;
.source "CameraFaceEffectBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;
    }
.end annotation


# instance fields
.field isSetValues:Z

.field private mContext:Landroid/content/Context;

.field private mFaceEffectButton:Landroid/widget/ImageView;

.field mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

.field private mListState:I

.field private mMenuListener:Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;

.field private mOrientation:I

.field private mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CameraFaceEffectBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->isSetValues:Z

    .line 50
    iput v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mListState:I

    .line 67
    iput-object p1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/camera/ui/CameraFaceEffectBar;->setBtnPreference()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_0
    return-void
.end method

.method private registerBtnListener()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceEffectButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/android/camera/ui/CameraFaceEffectBar;->initList()V

    .line 82
    return-void
.end method

.method private setBtnPreference()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "CameraFaceEffectBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtnPreference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->isSetValues:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_capturemode_key"

    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BasicSettingGridView;->setPreference(Lcom/android/camera/IconListPreference;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->isSetValues:Z

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissPupup()Z
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v1}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mMenuListener:Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mMenuListener:Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;->onMenuHide()V

    .line 134
    :cond_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 228
    invoke-direct {p0}, Lcom/android/camera/ui/CameraFaceEffectBar;->initList()V

    .line 229
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v5, :cond_0

    .line 230
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 231
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    iget v6, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mOrientation:I

    invoke-virtual {v5, v6, v8}, Lcom/android/camera/ui/BasicSettingGridView;->setDisplayOrientation(IZ)V

    .line 234
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 235
    .local v0, globalPos:[I
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/BasicSettingGridView;->getViewWidth()I

    move-result v4

    .line 236
    .local v4, width:I
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/BasicSettingGridView;->getViewHeight()I

    move-result v1

    .line 239
    .local v1, height:I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 240
    const-string v5, "CameraFaceEffectBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v2, 0x0

    .local v2, left:I
    const/4 v3, 0x0

    .line 242
    .local v3, top:I
    iget v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mOrientation:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mOrientation:I

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_4

    .line 243
    :cond_2
    aget v5, v0, v9

    sub-int/2addr v5, v4

    add-int/lit8 v2, v5, 0x1e

    .line 244
    aget v5, v0, v8

    sub-int v3, v5, v1

    .line 249
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 250
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 251
    iget-object v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    goto :goto_0

    .line 245
    :cond_4
    iget v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mOrientation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mOrientation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_3

    .line 246
    :cond_5
    aget v5, v0, v9

    sub-int/2addr v5, v4

    add-int/lit8 v2, v5, 0x1e

    .line 247
    aget v3, v0, v8

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 73
    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceEffectButton:Landroid/widget/ImageView;

    .line 74
    invoke-direct {p0}, Lcom/android/camera/ui/CameraFaceEffectBar;->registerBtnListener()V

    .line 75
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onRestorePreferencesClicked()V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraFaceEffectBar;->dismissPupup()Z

    .line 167
    return-void
.end method

.method public onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v1}, Lcom/android/camera/ui/BasicSettingGridView;->getPreference()Lcom/android/camera/IconListPreference;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraFaceEffectBar;->dismissPupup()Z

    .line 159
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mOrientation:I

    .line 291
    return-void
.end method

.method public setMenuListener(Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mMenuListener:Lcom/android/camera/ui/CameraFaceEffectBar$MenuListener;

    .line 92
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 295
    iput p1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mOrientation:I

    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/BasicSettingGridView;->setOrientation(IZ)V

    .line 300
    :cond_0
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 96
    invoke-direct {p0}, Lcom/android/camera/ui/CameraFaceEffectBar;->setBtnPreference()V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    .line 100
    :cond_0
    return-void
.end method

.method public setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/CameraFaceEffectBar;->mFaceSettingView:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/BasicSettingGridView;->setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 88
    :cond_0
    return-void
.end method
