.class public abstract Lcom/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field protected mBackgroundColor:[F

.field private mContentPane:Lcom/android/gallery3d/ui/GLView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mCryptoManagerClient:Ljava/lang/Object;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field protected mHapticsEnabled:Z

.field private mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field private mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mSecureGuidView:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mSecureGuidView:Landroid/view/View;

    .line 76
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 82
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 154
    new-instance v0, Lcom/android/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ActivityState$1;-><init>(Lcom/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ActivityState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/ActivityState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ActivityState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    return-void
.end method

.method private setScreenFlags()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 171
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 172
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 178
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 179
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 183
    :goto_1
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 184
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 188
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 189
    return-void

    .line 176
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 181
    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 186
    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2
.end method


# virtual methods
.method protected clearStateResult()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method protected getBackgroundColor()[F
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 139
    const/high16 v0, 0x7f0b

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getSupportMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 104
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 105
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 119
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    .line 149
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 311
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "transition-in"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;)V

    .line 211
    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 215
    const-string v1, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v2, "release"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 217
    .local v0, method:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 276
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v4

    const-string v5, "fade_texture"

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/RawTexture;

    .line 278
    .local v3, fade:Lcom/android/gallery3d/ui/RawTexture;
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v4

    const-string v5, "transition-in"

    sget-object v6, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 280
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v5, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v4, v5, :cond_0

    .line 281
    new-instance v4, Lcom/android/gallery3d/anim/StateTransitionAnimation;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-direct {v4, v5, v3}, Lcom/android/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/android/gallery3d/ui/RawTexture;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 282
    sget-object v4, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 288
    .local v1, context:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.yulong.android.crypto.CryptoManagerClient"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 290
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v2

    .line 292
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 131
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 134
    return-void
.end method

.method resume()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 225
    .local v1, activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 226
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 227
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    .line 228
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 232
    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v6

    .line 233
    .local v6, stateCount:I
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v10

    if-le v6, v8, :cond_5

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7, v8}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 235
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 238
    .end local v6           #stateCount:I
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 240
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    .line 242
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    move v5, v8

    .line 243
    .local v5, lightsOut:Z
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 244
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 248
    .local v3, entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v3, :cond_2

    .line 249
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 250
    iget v7, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v10, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v11, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 253
    :cond_2
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    .line 255
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "haptic_feedback_enabled"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    :goto_3
    iput-boolean v8, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 270
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/TransitionStore;->clear()V

    .line 271
    return-void

    .line 230
    .end local v3           #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .end local v5           #lightsOut:Z
    :cond_4
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v6       #stateCount:I
    :cond_5
    move v7, v9

    .line 233
    goto :goto_1

    .end local v6           #stateCount:I
    :cond_6
    move v5, v9

    .line 242
    goto :goto_2

    .restart local v3       #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .restart local v5       #lightsOut:Z
    :cond_7
    move v8, v9

    .line 261
    goto :goto_3

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v9, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z

    goto :goto_4
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setIntroAnimation(Lcom/android/gallery3d/anim/StateTransitionAnimation;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 100
    :cond_1
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V
    .locals 1
    .parameter
    .parameter
    .parameter "hint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, outgoing:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    .local p2, incoming:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    const-class v0, Lcom/android/gallery3d/app/PhotoPage;

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p2, v0, :cond_0

    .line 194
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/android/gallery3d/app/PhotoPage;

    if-ne p2, v0, :cond_1

    .line 196
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 198
    :cond_1
    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0
.end method
