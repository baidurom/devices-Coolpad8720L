.class final Landroid/webkit/JWebCoreJavaBridge;
.super Landroid/os/Handler;
.source "JWebCoreJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JWebCoreJavaBridge$SimpleCrypto;
    }
.end annotation


# static fields
.field private static final FUNCPTR_MESSAGE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit-timers"

.field static final REFRESH_PLUGINS:I = 0x64

.field private static final RES_EXTREME_NUM:I = 0xd

.field private static final TIMER_MESSAGE:I = 0x1

.field private static final encResLoading:[Ljava/lang/String;

.field private static mPowerDaemonRun:Z

.field private static mPowerDaemonRunInited:Z

.field private static mUrl:Ljava/lang/String;

.field private static pResLoading:[Ljava/util/regex/Pattern;

.field private static sCurrentMainWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field

.field private static timeoutSetting:[I


# instance fields
.field private mContentUriToFilePathMap:Ljava/util/HashMap;
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

.field private mContext:Landroid/content/Context;

.field private mHasDeferredTimers:Z

.field private mHasInstantTimer:Z

.field private mLastBoostTime:J

.field private mNativeBridge:I

.field private mTimerPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    const/4 v2, 0x0

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    .line 68
    const-string v0, ""

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->mUrl:Ljava/lang/String;

    .line 71
    sput-boolean v2, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    .line 72
    sput-boolean v2, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    .line 289
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "FC6C29B8BBA8D1232E96BE52A6707B7DEB2E1076128EAE4C08A6BFB5C3FBA5E290A47389BCF4F5A17F7B33550CF09FD41A51442EB35F82C73621BFF4160B002E77A9CBBED145F3CAC56137376AD821FB"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DEB2E1076128EAE4C08A6BFB5C3FBA5E22F7D2FBE27B3AB74B55C2C98F68251C00DE044E1063162DAFFC08E6CAA4E8E3EE84F940C7FC955E9F46CE3798023C381"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DF87B100BB1CFE5999D3321F44D8CF3B9756EADC702335C764EC5ED66A3E5EBFDD9F4F6B862A57324834262B88E65714B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DDFF926747E2ED30784944388894AE4D6F2CCD80D3F43C97C9854CAA5EC52073B3BC555CFA0F67D58B3FFF73C565C77E4C417BDAC9FCE7060435D7E8557A943C2AF3973241036785759E68AF3CCB44393C4631F771AB8A94AF8B01D4AFB387468"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7D32C2A5544047534B8107CE4D225A2BB5804982E3E03136A75717554864FA054D1F64B448CE51E30D9EA09BB3BC85F96D67F0B12CC1DD9F551A60B13C8FEEB58D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DA1B8932D3E73B6A2E375367F7D7FA260A7521A6871015E0D4F08FAA399AE92873CFA63B5401EE7DD7E0AEEE5E21D33AE4FB55CF2F5D4E688C9A1BBA94D7A4530"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DB93B8A15A3DA7548C67602B0B53CC3DBDBF0184FF4786720795241064C7C271081CB060637E8A5D48260AF6FD60556F675E7E3898107F291411D92997D139F63"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7D6A12C467357C78BD1E275D45994BEEBAFD9EC8E09D6B4204BA6DDDF6A212ED31AAF890BB9CEED43EEE5863F477427E80"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DB58DB85FE63CAEC57433A87FD85D90A5557D14EC9493D60B8E3965FFDCBB5A87DF354C5DFF8C48967A5067B06894E8BD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DE001BA86C1C9A70DC3443618DDBCADA17063FA86775EA81357D49D5A2966810B"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7D7DD3B0AD4BC109DE342135FA8A97C1F3F8CC036D99F1BFA024922122CA795195270FA999BDE5EC73F74B8BAA1BAF15FFF7D0E2281AB0E73673B96324B45D3CB6CD213CC0FD822633646BDC0121CDC24E2757966FA1A26F0D9DBD51F184F71FDF"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7D983D3CEA16F30CA3DEC423DCD14AF1DFFCA3702A1699C07ACD9B23FA81CC99AC8CD30D602C43749F2101FC13B42735FE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FC6C29B8BBA8D1232E96BE52A6707B7DF9A902E902B2B6E627A09A135D8F6A745E448C3BA63FA9C607BCDD5745FB4A887A641E65DEA68675AA7E0B1E42C4D23D"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->encResLoading:[Ljava/lang/String;

    .line 318
    new-array v0, v3, [Ljava/util/regex/Pattern;

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->pResLoading:[Ljava/util/regex/Pattern;

    .line 320
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->timeoutSetting:[I

    return-void

    :array_0
    .array-data 0x4
        0x80t 0xeet 0x36t 0x0t
        0x80t 0xeet 0x36t 0x0t
        0x80t 0xeet 0x36t 0x0t
        0xe0t 0x22t 0x2t 0x0t
        0x0t 0x53t 0x7t 0x0t
        0xc8t 0xaft 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t
        0x0t 0x53t 0x7t 0x0t
        0x20t 0x12t 0xat 0x0t
        0x0t 0xe2t 0x4t 0x0t
        0x20t 0xbt 0x20t 0x0t
        0x80t 0xeet 0x36t 0x0t
        0x80t 0xeet 0x36t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mLastBoostTime:J

    .line 78
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeConstructor()V

    .line 80
    return-void
.end method

.method private cookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 212
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cookiesEnabled()Z
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method private fireSharedTimer()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 109
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->sharedTimerFired()V

    .line 110
    return-void
.end method

.method private getKeyStrengthList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Landroid/webkit/CertTool;->getKeyStrengthList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginDirectories()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginSharedDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginSharedDataDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSignedPublicKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "index"
    .parameter "challenge"
    .parameter "url"

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    .line 456
    .local v0, current:Landroid/webkit/WebViewClassic;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/webkit/CertTool;->getSignedPublicKey(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 463
    :goto_0
    monitor-exit p0

    return-object v1

    .line 462
    :cond_0
    :try_start_1
    const-string/jumbo v1, "webkit-timers"

    const-string v2, "There is no active WebView for getSignedPublicKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 455
    .end local v0           #current:Landroid/webkit/WebViewClassic;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeServiceFuncPtrQueue()V
.end method

.method private native nativeUpdatePluginDirectories([Ljava/lang/String;Z)V
.end method

.method static declared-synchronized removeActiveWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "webview"

    .prologue
    .line 96
    const-class v1, Landroid/webkit/JWebCoreJavaBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 101
    :goto_0
    monitor-exit v1

    return-void

    .line 100
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resolveFilePathForContentUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 469
    iget-object v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    .local v0, fileName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 479
    .end local v0           #fileName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 478
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 479
    .local v1, jUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized setActiveWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "webview"

    .prologue
    .line 88
    const-class v1, Landroid/webkit/JWebCoreJavaBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    monitor-exit v1

    return-void

    .line 92
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "url"
    .parameter "value"

    .prologue
    const/4 v7, -0x1

    .line 183
    const-string v6, "\r"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 185
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 186
    .local v5, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 188
    .local v1, i:I
    :goto_0
    if-eq v1, v7, :cond_6

    if-ge v1, v5, :cond_6

    .line 189
    const/16 v6, 0xd

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 190
    .local v3, ir:I
    const/16 v6, 0xa

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 191
    .local v2, in:I
    if-ne v3, v7, :cond_2

    move v4, v2

    .line 193
    .local v4, newi:I
    :goto_1
    if-le v4, v1, :cond_5

    .line 194
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    add-int/lit8 v1, v4, 0x1

    .line 200
    goto :goto_0

    .line 191
    .end local v4           #newi:I
    :cond_2
    if-ne v2, v7, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    if-ge v3, v2, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_1

    .line 195
    .restart local v4       #newi:I
    :cond_5
    if-ne v4, v7, :cond_1

    .line 196
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 201
    .end local v2           #in:I
    .end local v3           #ir:I
    .end local v4           #newi:I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 203
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v5           #size:I
    :cond_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private setSharedTimer(J)V
    .locals 4
    .parameter "timemillis"

    .prologue
    const/4 v3, 0x1

    .line 243
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 248
    iget-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    if-eqz v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 252
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 256
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 257
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private native sharedTimerFired()V
.end method

.method private signalServiceFuncPtrQueue()V
    .locals 2

    .prologue
    .line 142
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void
.end method

.method private stopSharedTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 270
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 271
    return-void
.end method


# virtual methods
.method public native addPackageName(Ljava/lang/String;)V
.end method

.method public native addPackageNames(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeFinalize()V

    .line 85
    return-void
.end method

.method public getBrowserUrlProp(Ljava/lang/String;)I
    .locals 10
    .parameter "url"

    .prologue
    const/16 v9, 0xd

    const/4 v5, -0x1

    .line 352
    if-nez p1, :cond_1

    move v2, v5

    .line 378
    :cond_0
    :goto_0
    return v2

    .line 355
    :cond_1
    new-instance v4, Landroid/webkit/JWebCoreJavaBridge$SimpleCrypto;

    invoke-direct {v4, p0}, Landroid/webkit/JWebCoreJavaBridge$SimpleCrypto;-><init>(Landroid/webkit/JWebCoreJavaBridge;)V

    .line 356
    .local v4, simpleCrypto:Landroid/webkit/JWebCoreJavaBridge$SimpleCrypto;
    sget-object v6, Landroid/webkit/JWebCoreJavaBridge;->pResLoading:[Ljava/util/regex/Pattern;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-nez v6, :cond_2

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, i:I
    :goto_1
    if-ge v1, v9, :cond_2

    .line 360
    :try_start_0
    sget-object v6, Landroid/webkit/JWebCoreJavaBridge;->pResLoading:[Ljava/util/regex/Pattern;

    const-string/jumbo v7, "mrvl"

    sget-object v8, Landroid/webkit/JWebCoreJavaBridge;->encResLoading:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v4, v7, v8}, Landroid/webkit/JWebCoreJavaBridge$SimpleCrypto;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    aput-object v7, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    .line 369
    .local v2, index:I
    :goto_2
    if-ge v2, v9, :cond_4

    .line 370
    sget-object v6, Landroid/webkit/JWebCoreJavaBridge;->pResLoading:[Ljava/util/regex/Pattern;

    aget-object v6, v6, v2

    if-eqz v6, :cond_3

    .line 371
    sget-object v6, Landroid/webkit/JWebCoreJavaBridge;->pResLoading:[Ljava/util/regex/Pattern;

    aget-object v6, v6, v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 372
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_0

    .line 376
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v5

    .line 378
    goto :goto_0
.end method

.method public getLastUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Landroid/webkit/JWebCoreJavaBridge;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 122
    :sswitch_0
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    goto :goto_0

    .line 130
    :sswitch_1
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeServiceFuncPtrQueue()V

    goto :goto_0

    .line 133
    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdatePluginDirectories([Ljava/lang/String;Z)V

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public native nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 156
    :cond_0
    return-void
.end method

.method public native removePackageName(Ljava/lang/String;)V
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-eqz v0, :cond_0

    .line 163
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    .line 164
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    if-eqz v0, :cond_0

    .line 165
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 166
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    .line 169
    :cond_0
    return-void
.end method

.method public sendBoostMessageForExtreme(I)V
    .locals 3
    .parameter "extremeIndex"

    .prologue
    .line 396
    sget-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    if-nez v1, :cond_0

    .line 397
    const-string/jumbo v1, "marvell.browser.powerdaemon"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    .line 398
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    .line 400
    :cond_0
    sget-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    if-eqz v1, :cond_1

    .line 401
    if-ltz p1, :cond_1

    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.MRVL_DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "DURATION"

    sget-object v2, Landroid/webkit/JWebCoreJavaBridge;->timeoutSetting:[I

    aget v2, v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "BOOST_REASON"

    const-string v2, "BROWSER_EXTREME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public sendBoostMessageForJSRunning()V
    .locals 9

    .prologue
    .line 413
    sget-boolean v5, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    if-nez v5, :cond_0

    .line 414
    const-string/jumbo v5, "marvell.browser.powerdaemon"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    .line 415
    const/4 v5, 0x1

    sput-boolean v5, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    .line 417
    :cond_0
    sget-boolean v5, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    if-eqz v5, :cond_1

    sget-object v5, Landroid/webkit/JWebCoreJavaBridge;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/webkit/JWebCoreJavaBridge;->getBrowserUrlProp(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 419
    .local v1, mCurrentBoostTime:J
    iget-wide v5, p0, Landroid/webkit/JWebCoreJavaBridge;->mLastBoostTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    iget-wide v5, p0, Landroid/webkit/JWebCoreJavaBridge;->mLastBoostTime:J

    sub-long v3, v1, v5

    .line 420
    .local v3, mTimeInterval:J
    :goto_0
    const-wide/16 v5, 0x50

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.MRVL_DVFS_BOOSTER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v5, "DURATION"

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v5, "BOOST_REASON"

    const-string v6, "BROWSER_FAST"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/webkit/JWebCoreJavaBridge;->mLastBoostTime:J

    .line 426
    iget-object v5, p0, Landroid/webkit/JWebCoreJavaBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    .end local v1           #mCurrentBoostTime:J
    .end local v3           #mTimeInterval:J
    :cond_1
    return-void

    .line 419
    .restart local v1       #mCurrentBoostTime:J
    :cond_2
    const-wide/16 v3, 0x64

    goto :goto_0
.end method

.method public sendBoostMessageForLoading()V
    .locals 4

    .prologue
    .line 382
    sget-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    if-nez v1, :cond_0

    .line 383
    const-string/jumbo v1, "marvell.browser.powerdaemon"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    .line 384
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    .line 386
    :cond_0
    sget-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    if-eqz v1, :cond_1

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.MRVL_DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v1, "DURATION"

    sget-object v2, Landroid/webkit/JWebCoreJavaBridge;->timeoutSetting:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "BOOST_REASON"

    const-string v2, "BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public sendFinishBoostMessage(Z)V
    .locals 3
    .parameter "isOnLoading"

    .prologue
    .line 432
    sget-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    if-nez v1, :cond_0

    .line 433
    const-string/jumbo v1, "marvell.browser.powerdaemon"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    .line 434
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRunInited:Z

    .line 436
    :cond_0
    sget-boolean v1, Landroid/webkit/JWebCoreJavaBridge;->mPowerDaemonRun:Z

    if-eqz v1, :cond_1

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 438
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.MRVL_DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "DURATION"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    if-eqz p1, :cond_2

    .line 441
    const-string v1, "BOOST_REASON"

    const-string v2, "BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    :goto_0
    iget-object v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 443
    .restart local v0       #dvfsLockIntent:Landroid/content/Intent;
    :cond_2
    const-string v1, "BOOST_REASON"

    const-string v2, "BROWSER_EXTREME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public native setCacheSize(I)V
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 283
    iput-object p1, p0, Landroid/webkit/JWebCoreJavaBridge;->mContext:Landroid/content/Context;

    .line 284
    return-void
.end method

.method public native setNetworkOnLine(Z)V
.end method

.method public native setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 275
    sput-object p1, Landroid/webkit/JWebCoreJavaBridge;->mUrl:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "contentUri"

    .prologue
    .line 483
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    .line 486
    :cond_0
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method public updateProxy(Landroid/net/ProxyProperties;)V
    .locals 4
    .parameter "proxyProperties"

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 491
    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v1

    .line 497
    .local v1, port:I
    if-eqz v1, :cond_1

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    :cond_1
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
