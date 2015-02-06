.class public Landroid/webkit/WebSettingsClassic;
.super Landroid/webkit/WebSettings;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettingsClassic$1;,
        Landroid/webkit/WebSettingsClassic$EventHandler;,
        Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "4.1.1"

.field private static final TAG:Ljava/lang/String; = "webkit"

.field private static final YULONG_FLAG:Ljava/lang/String; = "yulong"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mIsNightMode:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLinkPrefetchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPasswordEchoEnabled:Z

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWebGLEnabled:Z

.field private mWebView:Landroid/webkit/WebViewClassic;

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z

.field private mYulongs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 8
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v6, 0x64

    const/16 v7, 0x10

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-direct {p0}, Landroid/webkit/WebSettings;-><init>()V

    .line 46
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 56
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 58
    iput v6, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    .line 59
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "monospace"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 63
    const-string v1, "cursive"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 64
    const-string v1, "fantasy"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 69
    iput v4, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 70
    iput v4, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 71
    iput v7, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 72
    const/16 v1, 0xd

    iput v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 73
    iput v3, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 74
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 75
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 77
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 80
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mIsNightMode:Z

    .line 82
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 83
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 84
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 85
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 86
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 87
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 88
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mUseDoubleTree:Z

    .line 89
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 90
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 91
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 92
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 93
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 94
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 95
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mWebGLEnabled:Z

    .line 97
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 98
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 99
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 100
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 101
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 102
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 103
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 105
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 107
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 110
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 111
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 115
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 116
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 118
    iput v6, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 119
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 120
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 121
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 122
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 123
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 124
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    .line 125
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 126
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 127
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 128
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 129
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 130
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 131
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 132
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 133
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z

    .line 134
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    .line 183
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 1728
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mYulongs:Ljava/util/HashMap;

    .line 284
    new-instance v1, Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/WebSettingsClassic$EventHandler;-><init>(Landroid/webkit/WebSettingsClassic;Landroid/webkit/WebSettingsClassic$1;)V

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    .line 285
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    .line 287
    const v1, 0x104006e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 290
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 292
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 294
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 296
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 298
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 303
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v7, :cond_1

    .line 305
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 306
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 309
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_password"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 298
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettingsClassic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettingsClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettingsClassic;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 37
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 364
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 369
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 346
    if-nez p0, :cond_1

    .line 347
    const/4 p0, 0x0

    .line 359
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 349
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    const-string p0, "he"

    goto :goto_0

    .line 352
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    const-string p0, "id"

    goto :goto_0

    .line 355
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 325
    sget-object v3, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 326
    :try_start_0
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 327
    .local v1, locale:Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 331
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 333
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 327
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 383
    .local v0, locale:Ljava/util/Locale;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/webkit/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 383
    .end local v0           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 381
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "locale"

    .prologue
    const/4 v10, 0x0

    .line 399
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 402
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 403
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 405
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :goto_0
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 418
    invoke-static {v4}, Landroid/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 421
    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v8, ";"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v8, "REL"

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 431
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 432
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 433
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    .end local v6           #model:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 438
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 439
    const-string v8, " Build/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040360

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, mobile:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104035f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, base:Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v10

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 409
    .end local v0           #base:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #mobile:Ljava/lang/String;
    :cond_3
    const-string v8, "4.1.1"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 413
    :cond_4
    const-string v8, "1.0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 426
    .restart local v4       #language:Ljava/lang/String;
    :cond_5
    const-string v8, "en"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1781
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1786
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1783
    .restart local p1
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1784
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 1792
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 1793
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    :cond_0
    monitor-exit p0

    return-void

    .line 1792
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1113
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_0
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    return v0
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1549
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1550
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1551
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1552
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1553
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1555
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1555
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1549
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1427
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1419
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 1697
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    .locals 1

    .prologue
    .line 1708
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1108
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1606
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1346
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1037
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1017
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1492
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1330
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 1712
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1473
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1411
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 997
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 1575
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getNightMode()Z
    .locals 1

    .prologue
    .line 1212
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mIsNightMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1444
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1453
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 1740
    const-string/jumbo v1, "yulong"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1741
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mYulongs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1742
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, p1}, Landroid/webkit/WebViewClassic;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 1639
    invoke-virtual {p0}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 773
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x1

    .line 780
    :goto_0
    monitor-exit p0

    return v0

    .line 775
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    const/4 v0, 0x2

    goto :goto_0

    .line 777
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 778
    const/4 v0, 0x0

    goto :goto_0

    .line 780
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1525
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 1528
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1544
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1531
    :cond_1
    const/4 v1, 0x0

    .line 1532
    .local v1, doPostSync:Z
    :try_start_1
    sget-object v3, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1533
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1534
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1535
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1536
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1537
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1538
    const/4 v1, 0x1

    .line 1540
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1541
    if-eqz v1, :cond_3

    .line 1542
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1544
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1540
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1525
    .end local v1           #doPostSync:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 1560
    invoke-virtual {p0}, Landroid/webkit/WebSettingsClassic;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1646
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 1777
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 558
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 559
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 542
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 543
    return-void
.end method

.method public declared-synchronized setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1152
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1153
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 1154
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :cond_0
    monitor-exit p0

    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1142
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 1143
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    :cond_0
    monitor-exit p0

    return-void

    .line 1141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1274
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 1275
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    :cond_0
    monitor-exit p0

    return-void

    .line 1273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .parameter "appCacheMaxSize"

    .prologue
    .line 1297
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1298
    iput-wide p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 1299
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :cond_0
    monitor-exit p0

    return-void

    .line 1297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 1288
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :cond_0
    monitor-exit p0

    return-void

    .line 1286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1689
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1690
    .local v0, autoFillEnabled:Z
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1691
    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 1692
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    :cond_0
    monitor-exit p0

    return-void

    .line 1689
    .end local v0           #autoFillEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 1701
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 1702
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .line 1703
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    :cond_0
    monitor-exit p0

    return-void

    .line 1701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1077
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1078
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 1079
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :cond_0
    monitor-exit p0

    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1096
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1097
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 1098
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->verifyNetworkAccess()V

    .line 1099
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    :cond_0
    monitor-exit p0

    return-void

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 508
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 509
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 510
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1595
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 1596
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 1597
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1599
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 927
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 929
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    :cond_0
    monitor-exit p0

    return-void

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1308
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1309
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 1310
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    :cond_0
    monitor-exit p0

    return-void

    .line 1308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1249
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1250
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 1251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 1252
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    :cond_0
    monitor-exit p0

    return-void

    .line 1249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1025
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1026
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1027
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 1028
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :cond_0
    monitor-exit p0

    return-void

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1006
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1007
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 1008
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    :cond_0
    monitor-exit p0

    return-void

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 1481
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1483
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    :cond_0
    monitor-exit p0

    return-void

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 694
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 695
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 696
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->adjustDefaultZoomDensity(I)V

    .line 698
    :cond_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 525
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 526
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 527
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1320
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 1321
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    :cond_0
    monitor-exit p0

    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1716
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 1717
    sput p1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 1719
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    .line 1722
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 675
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 676
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 677
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->updateDoubleTapZoom(I)V

    .line 679
    :cond_0
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 590
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 591
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 946
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 948
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    :cond_0
    monitor-exit p0

    return-void

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 870
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 872
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :cond_0
    monitor-exit p0

    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1677
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1678
    monitor-exit p0

    return-void

    .line 1677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1261
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1264
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    :cond_0
    monitor-exit p0

    return-void

    .line 1261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1367
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1368
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 1369
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    :cond_0
    monitor-exit p0

    return-void

    .line 1367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1164
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 1165
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    :cond_0
    monitor-exit p0

    return-void

    .line 1163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1462
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1463
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1464
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    :cond_0
    monitor-exit p0

    return-void

    .line 1462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1129
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1130
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 1131
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1132
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->updateJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    :cond_0
    monitor-exit p0

    return-void

    .line 1129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 826
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne p1, v0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WebViewClassic does not support TEXT_AUTOSIZING layout mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 832
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_1

    .line 833
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 834
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 713
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 714
    return-void
.end method

.method public declared-synchronized setLinkPrefetchEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1400
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1401
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 1402
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    :cond_0
    monitor-exit p0

    return-void

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .parameter "overview"

    .prologue
    .line 574
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 575
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1059
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 1060
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    :cond_0
    monitor-exit p0

    return-void

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1628
    iget-wide v0, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 1629
    iput-wide p1, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 1630
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1632
    :cond_0
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 489
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 490
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 491
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 493
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 966
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 967
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 968
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    :cond_0
    monitor-exit p0

    return-void

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 986
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 987
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 988
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    :cond_0
    monitor-exit p0

    return-void

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    .line 456
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1568
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 1569
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 1571
    :cond_0
    return-void
.end method

.method public declared-synchronized setNightMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1200
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mIsNightMode:Z

    if-eq v0, p1, :cond_0

    .line 1201
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mIsNightMode:Z

    .line 1202
    const-string v0, "CP_Browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNightMode:  mIsNightMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mIsNightMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1204
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->updateNightMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    :cond_0
    monitor-exit p0

    return-void

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1045
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1046
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1047
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1048
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 1049
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :cond_2
    monitor-exit p0

    return-void

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1231
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1232
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    :cond_0
    monitor-exit p0

    return-void

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1222
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    monitor-exit p0

    return-void

    .line 1222
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1242
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1654
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1655
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 1659
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setAutoFillEnabled(Z)V

    .line 1661
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    :cond_0
    monitor-exit p0

    return-void

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1731
    const-string/jumbo v0, "yulong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1732
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mYulongs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 1583
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 1584
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1585
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :cond_0
    monitor-exit p0

    return-void

    .line 1583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 889
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 891
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    :cond_0
    monitor-exit p0

    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 624
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 625
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 640
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 641
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 908
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 910
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    :cond_0
    monitor-exit p0

    return-void

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1181
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1182
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 1183
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :cond_0
    monitor-exit p0

    return-void

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .parameter "shrink"

    .prologue
    .line 1616
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 1617
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 1618
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1620
    :cond_0
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 851
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 853
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    :cond_0
    monitor-exit p0

    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 807
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 808
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 809
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :cond_0
    monitor-exit p0

    return-void

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .parameter "support"

    .prologue
    .line 472
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 473
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 474
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1681
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1682
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 1683
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    :cond_0
    monitor-exit p0

    return-void

    .line 1681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1
    .parameter "textZoom"

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    if-eq v0, p1, :cond_0

    .line 657
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    .line 658
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :cond_0
    monitor-exit p0

    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 730
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 608
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 789
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 790
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :cond_0
    monitor-exit p0

    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 748
    monitor-enter p0

    const/4 v0, 0x0

    .line 749
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 750
    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 753
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 764
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 755
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 756
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 761
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .parameter "ua"

    .prologue
    .line 1500
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1501
    :cond_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1502
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1503
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1504
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1505
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1507
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1508
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1509
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 1514
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1515
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1516
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1518
    :cond_2
    monitor-exit p0

    return-void

    .line 1507
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1500
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1511
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWebGLEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1378
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mWebGLEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1379
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mWebGLEnabled:Z

    .line 1380
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    :cond_0
    monitor-exit p0

    return-void

    .line 1378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1356
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1357
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 1358
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :cond_0
    monitor-exit p0

    return-void

    .line 1356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1390
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1391
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 1392
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    :cond_0
    monitor-exit p0

    return-void

    .line 1390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .locals 4
    .parameter "frame"

    .prologue
    .line 1756
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1761
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1763
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 1764
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 1767
    :cond_0
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettingsClassic;->nativeSync(I)V

    .line 1768
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 1769
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$900(Landroid/webkit/WebSettingsClassic$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    monitor-exit p0

    return-void

    .line 1756
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
