.class public Lcom/android/gallery3d/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryContext;


# static fields
.field private static bIsRegister:Z

.field public static mCameraName:Ljava/lang/String;

.field public static mExsdcardCameraName:Ljava/lang/String;

.field public static mExsdcardname:Ljava/lang/String;

.field private static mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

.field private static mMultiWndStateRecvFilter:Landroid/content/IntentFilter;

.field public static mSdcardCameraName:Ljava/lang/String;

.field public static mSdcardname:Ljava/lang/String;

.field public static moreSet:Ljava/lang/String;


# instance fields
.field public LIMIT_VOLUME:I

.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field public mBackPressed:Z

.field private mCandrawInmove:Z

.field private mDisableToggleStatusBar:Z

.field public mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

.field private mStateManager:Lcom/android/gallery3d/app/StateManager;

.field private mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Lcom/android/gallery3d/app/TransitionStore;

    invoke-direct {v0}, Lcom/android/gallery3d/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    .line 73
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mCandrawInmove:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mBackPressed:Z

    .line 77
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->LIMIT_VOLUME:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 84
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public static calculateFileSize(J)J
    .locals 5
    .parameter "filesize"

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, mFileSize:F
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-lez v3, :cond_0

    .line 432
    const-wide/32 v1, 0x100000

    .line 433
    .local v1, unit:J
    long-to-float v3, p0

    const/high16 v4, 0x4980

    div-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float v0, v3, v4

    .line 434
    float-to-long v3, v0

    .line 439
    .end local v1           #unit:J
    :goto_0
    return-wide v3

    :cond_0
    float-to-long v3, v0

    goto :goto_0
.end method

.method private static clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V
    .locals 0
    .parameter "pool"

    .prologue
    .line 325
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 326
    :cond_0
    return-void
.end method

.method public static getMultiWndStateInstance()Lcom/android/gallery3d/util/MultiWndStateSubject;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    return-object v0
.end method

.method private getPath()V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mExsdcardname:Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e012a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSdcardname:Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0124

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->moreSet:Ljava/lang/String;

    .line 449
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0101

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mCameraName:Ljava/lang/String;

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mCameraName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSdcardname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSdcardCameraName:Ljava/lang/String;

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mCameraName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mExsdcardname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mExsdcardCameraName:Ljava/lang/String;

    .line 455
    return-void
.end method

.method private static initMultiWndState()V
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "MultiWndState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object is not null, bIsRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/MultiWndStateReceiver;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    .line 131
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateRecvFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateRecvFilter:Landroid/content/IntentFilter;

    .line 133
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateRecvFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.yulong.multiwindow.state.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    .line 136
    return-void
.end method

.method public static launchBugReportSystemByReflect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "sType"
    .parameter "filepath"

    .prologue
    const/4 v8, 0x1

    .line 477
    const/4 v5, 0x0

    .line 479
    .local v5, myClassBugReportTrigger:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v7, "com.yulong.android.server.BugReportTrigger"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 486
    :goto_0
    if-eqz v5, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 491
    .local v0, MyClass_Constructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    :try_start_1
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 501
    :goto_1
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 505
    const/4 v7, 0x0

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 507
    .local v6, myObjectBugReportTrigger:Ljava/lang/Object;
    const-string v7, "LaunchBugReportSystem"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/app/ApplicationErrorReport$CrashInfo;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 510
    .local v1, MyMethod_LaunchBugReportSystem:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 511
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 513
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "gallery_crash"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8

    .line 537
    .end local v0           #MyClass_Constructor:Ljava/lang/reflect/Constructor;
    .end local v1           #MyMethod_LaunchBugReportSystem:Ljava/lang/reflect/Method;
    .end local v6           #myObjectBugReportTrigger:Ljava/lang/Object;
    :cond_0
    :goto_2
    return-void

    .line 481
    :catch_0
    move-exception v3

    .line 483
    .local v3, e1:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 493
    .end local v3           #e1:Ljava/lang/ClassNotFoundException;
    .restart local v0       #MyClass_Constructor:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v4

    .line 495
    .local v4, e2:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 496
    .end local v4           #e2:Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 498
    .local v4, e2:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 517
    .end local v4           #e2:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 519
    .local v2, e:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 520
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 522
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 523
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 525
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 526
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_6
    move-exception v2

    .line 528
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 529
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v2

    .line 531
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 532
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v2

    .line 533
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static registerMultiWndState(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateRecvFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    check-cast v0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;

    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateRecvFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    .line 107
    const-string v0, "MultiWndState"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method private static setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 272
    const v0, 0x1010355

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 273
    return-void
.end method

.method private toggleStatusBarByOrientation()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 396
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    if-eqz v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 398
    .local v0, win:Landroid/view/Window;
    instance-of v1, p0, Lcom/android/gallery3d/app/CropImage;

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/app/PhotoPage;

    if-eqz v1, :cond_2

    .line 403
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 405
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private static unRegisterMultiWndState(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 112
    sget-boolean v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    if-nez v1, :cond_0

    .line 113
    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 114
    .local v0, isNull:Z
    :goto_0
    const-string v1, "MultiWndState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bIsRegister: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0           #isNull:Z
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMultiWndStateReceiver:Lcom/android/gallery3d/util/MultiWndStateSubject;

    check-cast v1, Lcom/android/gallery3d/ui/MultiWndStateReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const-string v1, "MultiWndState"

    const-string v3, "unRegisterReceiver"

    invoke-static {v1, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sput-boolean v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->bIsRegister:Z

    .line 122
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 113
    goto :goto_0
.end method


# virtual methods
.method protected disableToggleStatusBar()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    .line 392
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 183
    return-object p0
.end method

.method public getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/android/gallery3d/app/StateManager;
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/StateManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    return-object v0
.end method

.method protected isFullscreen()Z
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 352
    :cond_0
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 358
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 366
    :cond_0
    return-void

    .line 363
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->onConfigurationChanged()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 172
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 173
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Lcom/android/gallery3d/app/OrientationManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onCreate()V

    .line 146
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPath()V

    .line 148
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->initMultiWndState()V

    .line 149
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 339
    :cond_0
    return-void

    .line 336
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 378
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 383
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 386
    :goto_0
    return v1

    .line 383
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1

    .line 386
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 306
    invoke-static {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unRegisterMultiWndState(Landroid/content/Context;)V

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->pause()V

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->pause()V

    .line 313
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 318
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V

    .line 319
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V

    .line 321
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BytesBufferPool;->clear()V

    .line 322
    return-void

    .line 315
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    invoke-static {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerMultiWndState(Landroid/content/Context;)V

    .line 290
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->resume()V

    .line 294
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onResume()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->resume()V

    .line 301
    return-void

    .line 296
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 156
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 162
    :cond_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onStart()V
    .locals 9

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 232
    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->hasInitialize()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/util/VolumeUtil;->initialize(Landroid/content/Context;)V

    .line 233
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/CacheManager;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, availablePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v5

    iget v7, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->LIMIT_VOLUME:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 235
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e030f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->LIMIT_VOLUME:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, toast:Ljava/lang/String;
    const/16 v5, 0x96

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 238
    const-string v5, "AbstractGalleryActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "space: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/gallery3d/util/CacheManager;->calRemaining(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v4           #toast:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/util/CacheManager;->getExternalCacheDirEx()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    .line 241
    new-instance v2, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 247
    .local v2, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 253
    .local v3, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e0108

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0109

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 258
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sget-boolean v5, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    if-eqz v5, :cond_3

    .line 259
    invoke-static {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V

    .line 263
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 264
    iget-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .end local v3           #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v5}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onStart()V

    .line 267
    return-void

    .line 261
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .restart local v3       #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    const v5, 0x1080027

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onStop()V

    .line 284
    return-void
.end method

.method protected onStorageReady()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setCandrawFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mCandrawInmove:Z

    .line 82
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 218
    const v0, 0x7f100099

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 219
    return-void
.end method
