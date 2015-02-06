.class public Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;
.super Lcom/android/internal/policy/impl/keyguard/YLKeyguardWidgetFrame;
.source "KeyguardImageAnimationView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeShowingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.yulong.android.provider.coolshow"

.field private static final CACHE_NUM:I = 0x6

.field public static final COLUMN_FILE_PATH:Ljava/lang/String; = "wallpaper_file_path"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PATH_WALLPAPERLANTERINFO:Ljava/lang/String; = "/wallpaperLanterInfo"

.field public static final SCHEME:Ljava/lang/String; = "content://"

.field public static final TABLE_NAME:Ljava/lang/String; = "wallpaperLanterInfo"

.field private static final TAG:Ljava/lang/String; = "KeyguardImageTransitionView"

.field public static count:I

.field public static handler:Landroid/os/Handler;

.field private static isEverStartThread:Z

.field private static isRunWorkThread:Z

.field public static juage:Z

.field private static mCacheBitmaps:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultBitmap:Landroid/graphics/Bitmap;

.field private static mIsRunnableOnceStart:Z

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static mStatusBarHeight:I

.field private static mWorkThread:Ljava/lang/Thread;

.field private static waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field alphaAnimationOut:Landroid/view/animation/AlphaAnimation;

.field public animation1:Landroid/view/animation/Animation;

.field public animation2:Landroid/view/animation/Animation;

.field private animationSetInList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation
.end field

.field private animationSetOutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation
.end field

.field public images:[I

.field private mAnimateDuration:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mChangeFrequency:I

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mImageViewIds:[I

.field private mImageViews:[Landroid/widget/ImageView;

.field private mIsOnScreenTurnOff:Z

.field private mIsOnScreenTurnOn:Z

.field private mIsOpenWallpaperLantern:Z

.field private mIsShowDateTime:Z

.field private mKeyguardStatusView:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

.field private mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSetView:Landroid/widget/TextView;

.field rotateAnimationOut:Landroid/view/animation/RotateAnimation;

.field private runnable:Ljava/lang/Runnable;

.field scaleAnimationOut:Landroid/view/animation/ScaleAnimation;

.field private themeChoose:Ljava/lang/String;

.field translateAnimationOut:Landroid/view/animation/TranslateAnimation;

.field private translateImageView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->juage:Z

    .line 61
    sput v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mStatusBarHeight:I

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    .line 95
    const-string v0, "content://com.yulong.android.provider.coolshow/wallpaperLanterInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->CONTENT_URI:Landroid/net/Uri;

    .line 104
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mCacheBitmaps:Landroid/util/LruCache;

    .line 107
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 114
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->isEverStartThread:Z

    .line 133
    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->isRunWorkThread:Z

    .line 135
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mWorkThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 291
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/YLKeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->images:[I

    .line 69
    const/16 v2, 0x7d0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mAnimateDuration:I

    .line 70
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->translateAnimationOut:Landroid/view/animation/TranslateAnimation;

    .line 77
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b4

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->rotateAnimationOut:Landroid/view/animation/RotateAnimation;

    .line 79
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->scaleAnimationOut:Landroid/view/animation/ScaleAnimation;

    .line 80
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->alphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    .line 110
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    .line 112
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViewIds:[I

    .line 115
    const/16 v2, 0x7d0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    .line 116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOpenWallpaperLantern:Z

    .line 117
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsShowDateTime:Z

    .line 121
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;

    .line 285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    .line 620
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    .line 294
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 296
    .local v14, inflater:Landroid/view/LayoutInflater;
    :try_start_0
    const-string v2, "style"

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->YLUIThemeService_getThemeProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->themeChoose:Ljava/lang/String;

    .line 297
    const-string v2, "Rigo"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->themeChoose:Ljava/lang/String;

    .line 298
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "....................themeChoose = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->themeChoose:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->themeChoose:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->themeChoose:Ljava/lang/String;

    const-string v3, "Rigo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const v2, 0x10900e4

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->translateImageView:Landroid/view/View;

    .line 306
    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080633

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x4b

    const/16 v3, 0x4b

    const/16 v4, 0x33

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 309
    .local v16, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x208

    const/16 v3, 0x352

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .end local v16           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v13, v2, :cond_1

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->translateImageView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViewIds:[I

    aget v4, v4, v13

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v13

    .line 335
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 299
    .end local v13           #i:I
    :catch_0
    move-exception v12

    .line 301
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardImageTransitionView"

    const-string v3, "............................YLUIThemeService_getThemeProperty is exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 332
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_0
    const v2, 0x10900e3

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->translateImageView:Landroid/view/View;

    goto :goto_1

    .line 339
    .restart local v13       #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->translateImageView:Landroid/view/View;

    const v3, 0x10202e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mKeyguardStatusView:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->createInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/SettingManager;

    move-result-object v19

    .line 349
    .local v19, settingManager:Lcom/android/internal/policy/impl/keyguard/SettingManager;
    const-string v2, "wallpaperFrequency"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getIntData(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    .line 351
    const-string v2, "wallpaperLantern"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getBooleanData(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOpenWallpaperLantern:Z

    .line 356
    const-string v2, "KeyguardImageTransitionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mChangeFrequency = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsOpenWallpaperLantern = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOpenWallpaperLantern:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsShowDateTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsShowDateTime:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 361
    .local v18, scale:F
    const-string v2, "Density"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mScreenWidth:I

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mScreenHeight:I

    .line 365
    sget v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mStatusBarHeight:I

    if-gez v2, :cond_2

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 368
    .local v17, res:Landroid/content/res/Resources;
    const v2, 0x105000c

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mStatusBarHeight:I

    .line 371
    .end local v17           #res:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080636

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 372
    .local v11, defaultBitmap:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_3

    .line 373
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->createKeyguardThumbBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 376
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->addAnimationSet()V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->translateImageView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->getPathList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 388
    new-instance v15, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V

    .line 389
    .local v15, itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v15, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;->path:Ljava/lang/String;

    .line 394
    .end local v15           #itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    :cond_4
    const-string v2, "KeyguardImageTransitionView"

    const-string v3, "create keyguardTransLationView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mFilter:Landroid/content/IntentFilter;

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "com.yulong.android.keyguardBackGournd.changed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v2, "KeyguardImageTransitionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- isEverStartThread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->isEverStartThread:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOpenWallpaperLantern:Z

    if-nez v2, :cond_5

    .line 407
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 408
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    .line 409
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mAnimateDuration:I

    .line 413
    :goto_3
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->isEverStartThread:Z

    if-nez v2, :cond_6

    .line 417
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->isEverStartThread:Z

    .line 419
    :cond_6
    return-void

    .line 411
    :cond_7
    const/16 v2, 0x5dc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mAnimateDuration:I

    goto :goto_3

    .line 55
    nop

    :array_0
    .array-data 0x4
        0x5at 0x6t 0x8t 0x1t
        0x5et 0x6t 0x8t 0x1t
        0x36t 0x6t 0x8t 0x1t
        0x1et 0x2t 0x8t 0x1t
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xa5t 0x3t 0x2t 0x1t
        0xa6t 0x3t 0x2t 0x1t
    .end array-data
.end method

.method public static YLUIThemeService_getThemeProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 719
    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    const-string v2, "uitechnoService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x111

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 723
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOnScreenTurnOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOpenWallpaperLantern:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->isRunWorkThread:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mCacheBitmaps:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    return v0
.end method

.method public static createKeyguardThumbBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 695
    move-object v0, p0

    .line 696
    .local v0, bitmapCacche:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    invoke-static {v0, v4, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 707
    return-object v0
.end method

.method public static createKeyguardThumbBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 681
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 683
    .local v0, bitmapCacche:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 684
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz p0, :cond_0

    .line 685
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x4

    .line 686
    .local v3, start:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v2, v4, 0x4

    .line 687
    .local v2, offset:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v4, v3, v6, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v1, p0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 691
    .end local v2           #offset:I
    .end local v3           #start:I
    :cond_0
    return-object v0
.end method

.method private static decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 651
    .local v2, keyguardImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 652
    if-nez v0, :cond_0

    .line 654
    const-string v4, "KeyguardImageTransitionView"

    const-string v5, "bitmap == null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 656
    .local v1, index:I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data/wallpaper-lanter/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 660
    .end local v1           #index:I
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 661
    const-string v4, "KeyguardImageTransitionView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeBitmap bitmap.getWidth() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " decodeBitmap bitmap.getHeight() ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget v5, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mScreenWidth:I

    if-eq v4, v5, :cond_2

    .line 666
    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mScreenWidth:I

    sget v5, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mScreenHeight:I

    sget v6, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mStatusBarHeight:I

    sub-int/2addr v5, v6

    invoke-static {v0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->createKeyguardThumbBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 668
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 675
    :cond_1
    :goto_0
    return-object v2

    .line 670
    :cond_2
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->createKeyguardThumbBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 671
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;II)V
    .locals 6
    .parameter "imageView"
    .parameter "imageViewIndex"
    .parameter "pathListposition"

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, imageBitmap:Landroid/graphics/Bitmap;
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------setImageBitmap() imageViewIndex ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pathListposition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mCacheBitmaps:Landroid/util/LruCache;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageBitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 255
    .restart local v0       #imageBitmap:Landroid/graphics/Bitmap;
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz v0, :cond_0

    .line 257
    const-string v3, "KeyguardImageTransitionView"

    const-string v4, "------setImageBitmap() imageBitmap != null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V

    .line 260
    .local v1, itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    add-int/lit8 v4, p3, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;->path:Ljava/lang/String;

    .line 262
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_0
    return-void

    .line 264
    .end local v1           #itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    :cond_0
    const-string v3, "KeyguardImageTransitionView"

    const-string v4, "------setImageBitmap() imageBitmap = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------setImageBitmap() position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v4, "KeyguardImageTransitionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPathList.get("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V

    .line 272
    .restart local v1       #itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    iput-object p1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;->imageView:Landroid/widget/ImageView;

    .line 273
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;->path:Ljava/lang/String;

    .line 274
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V

    .line 279
    .local v2, itemInfo1:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    add-int/lit8 v4, p3, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;->path:Ljava/lang/String;

    .line 281
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->waitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public OnChallengeShowingChanged(Z)V
    .locals 2
    .parameter "showChallenge"

    .prologue
    .line 730
    if-eqz p1, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mSetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public addAnimationSet()V
    .locals 34

    .prologue
    .line 474
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 482
    .local v2, translateOutToLeft:Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 490
    .local v3, translateOutToRight:Landroid/view/animation/TranslateAnimation;
    new-instance v4, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x43b4

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 493
    .local v4, rotateAnimationOut:Landroid/view/animation/RotateAnimation;
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/high16 v6, 0x43b4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 497
    .local v5, rotateAnimationOut1:Landroid/view/animation/RotateAnimation;
    new-instance v32, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    move-object/from16 v0, v32

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 498
    .local v32, scaleAnimationOut:Landroid/view/animation/ScaleAnimation;
    new-instance v33, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f80

    const/high16 v11, 0x40a0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x40a0

    move-object/from16 v0, v33

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 500
    .local v33, scaleAnimationOut1:Landroid/view/animation/ScaleAnimation;
    new-instance v17, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 502
    .local v17, alhpaAnimationOut:Landroid/view/animation/AlphaAnimation;
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 509
    .local v6, translateInFromLeft:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/high16 v9, -0x4080

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 516
    .local v7, translateInFromRight:Landroid/view/animation/TranslateAnimation;
    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x43b4

    const/4 v11, 0x1

    const/high16 v12, 0x3f00

    const/4 v13, 0x1

    const/high16 v14, 0x3f00

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 519
    .local v8, rotateAnimationIn:Landroid/view/animation/RotateAnimation;
    new-instance v9, Landroid/view/animation/RotateAnimation;

    const/high16 v10, 0x43b4

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    const/4 v14, 0x1

    const/high16 v15, 0x3f00

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 523
    .local v9, rotateAnimationIn1:Landroid/view/animation/RotateAnimation;
    new-instance v30, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    move-object/from16 v0, v30

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 524
    .local v30, scaleAnimationIn:Landroid/view/animation/ScaleAnimation;
    new-instance v31, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x40a0

    const/high16 v11, 0x3f80

    const/high16 v12, 0x40a0

    const/high16 v13, 0x3f80

    move-object/from16 v0, v31

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 525
    .local v31, scaleAnimationIn1:Landroid/view/animation/ScaleAnimation;
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 527
    .local v16, alhpaAnimationIn:Landroid/view/animation/AlphaAnimation;
    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 528
    .local v24, animationSetOut1:Landroid/view/animation/AnimationSet;
    new-instance v25, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 529
    .local v25, animationSetOut2:Landroid/view/animation/AnimationSet;
    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 530
    .local v26, animationSetOut3:Landroid/view/animation/AnimationSet;
    new-instance v27, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 531
    .local v27, animationSetOut4:Landroid/view/animation/AnimationSet;
    new-instance v28, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 532
    .local v28, animationSetOut5:Landroid/view/animation/AnimationSet;
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v29

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 534
    .local v29, animationSetOut6:Landroid/view/animation/AnimationSet;
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 535
    .local v18, animationSetIn1:Landroid/view/animation/AnimationSet;
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 536
    .local v19, animationSetIn2:Landroid/view/animation/AnimationSet;
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 537
    .local v20, animationSetIn3:Landroid/view/animation/AnimationSet;
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 538
    .local v21, animationSetIn4:Landroid/view/animation/AnimationSet;
    new-instance v22, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 539
    .local v22, animationSetIn5:Landroid/view/animation/AnimationSet;
    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 541
    .local v23, animationSetIn6:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 542
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 543
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 545
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 546
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 548
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 550
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 551
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 553
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 554
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->alphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 557
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->alphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 569
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 570
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 572
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 573
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 575
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 577
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 578
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 580
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 581
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 582
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 584
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 585
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mCacheBitmaps:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 423
    return-void
.end method

.method public getAnimationSetIn()Landroid/view/animation/AnimationSet;
    .locals 4

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 611
    const-string v1, "KeyguardImageTransitionView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animationSetInList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 614
    .local v0, n:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetInList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 616
    .end local v0           #n:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAnimationSetOut()Landroid/view/animation/AnimationSet;
    .locals 4

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 599
    const-string v1, "KeyguardImageTransitionView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animationSetOutList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 603
    .local v0, n:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->animationSetOutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 605
    .end local v0           #n:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .prologue
    .line 643
    sget v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mStatusBarHeight:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 428
    const-string v0, "KeyguardImageTransitionView"

    const-string v1, "----onAttachedToWindow---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onAttachedToWindow()V

    .line 432
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "KeyguardImageTransitionView"

    const-string v1, "----onDetachedFromWindow---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->juage:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->clear()V

    .line 444
    return-void
.end method

.method public onScreenTurnOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/YLKeyguardWidgetFrame;->onScreenTurnOff()V

    .line 450
    const-string v0, "KeyguardImageTransitionView"

    const-string v1, "----onScreenTurnOff----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->juage:Z

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOnScreenTurnOff:Z

    .line 455
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOnScreenTurnOn:Z

    .line 456
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 461
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/YLKeyguardWidgetFrame;->onScreenTurnOn()V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOnScreenTurnOff:Z

    .line 463
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mIsOnScreenTurnOn:Z

    .line 464
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->juage:Z

    .line 465
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->isRunWorkThread:Z

    .line 466
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    const-string v0, "KeyguardImageTransitionView"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 289
    return-void
.end method

.method public startBitmapSwithing()V
    .locals 8

    .prologue
    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 195
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->getPathList()Ljava/util/ArrayList;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 196
    const-string v3, "KeyguardImageTransitionView"

    const-string v4, "mPathList != KeyguardBitmapManager.getPathList()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->getPathList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    .line 201
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 202
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 203
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->getAnimationSetOut()Landroid/view/animation/AnimationSet;

    move-result-object v2

    .line 206
    .local v2, animationSetOut:Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->getAnimationSetIn()Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 207
    .local v1, animationSetIn:Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mAnimateDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 210
    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 212
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mAnimateDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 213
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 217
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----mPathList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---mPathList.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-direct {p0, v3, v7, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->setImageBitmap(Landroid/widget/ImageView;II)V

    .line 222
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count++ before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    .line 224
    const-string v3, "KeyguardImageTransitionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count++ after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-direct {p0, v3, v6, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->setImageBitmap(Landroid/widget/ImageView;II)V

    .line 226
    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 227
    sput v7, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->count:I

    .line 241
    :cond_0
    :goto_1
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->juage:Z

    if-eqz v3, :cond_1

    .line 243
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    :cond_1
    const-string v3, "handler"

    const-string v4, "handler"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 199
    .end local v0           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v1           #animationSetIn:Landroid/view/animation/AnimationSet;
    .end local v2           #animationSetOut:Landroid/view/animation/AnimationSet;
    :cond_2
    const-string v3, "KeyguardImageTransitionView"

    const-string v4, "mPathList == KeyguardBitmapManager.getPathList()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    .restart local v0       #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    .restart local v1       #animationSetIn:Landroid/view/animation/AnimationSet;
    .restart local v2       #animationSetOut:Landroid/view/animation/AnimationSet;
    :cond_3
    const-string v3, "KeyguardImageTransitionView"

    const-string v4, "-----mPathList = null or mPathList.size() < 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
