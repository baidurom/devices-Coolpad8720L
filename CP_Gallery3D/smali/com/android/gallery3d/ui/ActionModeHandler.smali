.class public Lcom/android/gallery3d/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;,
        Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;
    }
.end annotation


# static fields
.field public static SHARE_ITEMS_LIMIT:I

.field private static SUPPORT_MULTIPLE_MASK:I


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

.field public mHasCrypto:Z

.field private mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMenuTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareMenuItem:Landroid/view/MenuItem;

.field private mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharePanoramaMenuItem:Landroid/view/MenuItem;

.field private final mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x1f4

    sput v0, Lcom/android/gallery3d/ui/ActionModeHandler;->SHARE_ITEMS_LIMIT:I

    .line 67
    const v0, 0x3100907

    sput v0, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasCrypto:Z

    .line 234
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 137
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 138
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 139
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/ActionModeHandler;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->computeUris(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/ActionModeHandler;->computePanoramaSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private computeMenuOptions(Ljava/util/ArrayList;)I
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    const/4 v10, -0x1

    .line 301
    .local v10, operation:I
    const/4 v13, 0x0

    .line 302
    .local v13, type:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaObject;

    .line 303
    .local v7, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v12

    .line 304
    .local v12, support:I
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v14

    or-int/2addr v13, v14

    .line 305
    and-int/2addr v10, v12

    .line 306
    goto :goto_0

    .line 308
    .end local v7           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    .end local v12           #support:I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 316
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaObject;

    .line 317
    .restart local v7       #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    instance-of v14, v7, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v14, :cond_3

    .line 319
    const v14, -0x80001

    and-int/2addr v10, v14

    .line 320
    const v14, -0x40001

    and-int/2addr v10, v14

    .line 323
    const v14, -0x1000001

    and-int/2addr v10, v14

    .line 324
    const v14, -0x4000001

    and-int/2addr v10, v14

    .line 366
    .end local v7           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    :goto_1
    sget v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    and-int/2addr v10, v14

    .line 369
    :cond_2
    :goto_2
    return v10

    .line 310
    :pswitch_0
    invoke-static {v13}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v14, v9}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 312
    and-int/lit16 v10, v10, -0x201

    goto :goto_2

    .line 332
    .end local v9           #mimeType:Ljava/lang/String;
    .restart local v7       #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_3
    instance-of v14, v7, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v14, :cond_1

    .line 333
    check-cast v7, Lcom/android/gallery3d/data/LocalImage;

    .end local v7           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, filePath:Ljava/lang/String;
    const-string v14, "com.yulong.android.crypto.PrivateFile"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-static {v14, v15}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 336
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const-string v14, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v15, "notifySecureServer"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasCrypto:Z

    .line 339
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasCrypto:Z

    if-eqz v14, :cond_5

    const-string v14, "com.yulong.android.crypto.PrivateFile"

    const-string v15, "setPrivateFile"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasCrypto:Z

    .line 341
    const-string v14, "/data/yulong_secure/"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasCrypto:Z

    if-eqz v14, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 343
    .local v2, context:Landroid/content/Context;
    const-string v14, "coolpadSystem"

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 347
    .local v6, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v1, v14}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 348
    .local v11, privateFile:Ljava/lang/Object;
    const-string v14, "com.yulong.android.crypto.PrivateFile"

    const-string v15, "isPrivateFile"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 351
    .local v8, method:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_4

    .line 352
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-static {v8, v11, v14}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 353
    .local v5, isPrivate:Z
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/yulong/android/server/systeminterface/SystemManager;->isPrivateMode()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 354
    if-eqz v5, :cond_6

    .line 355
    sget v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    const/high16 v15, 0x80

    or-int/2addr v14, v15

    sput v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    .line 361
    .end local v5           #isPrivate:Z
    :cond_4
    :goto_4
    sget v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    const/high16 v15, 0x8

    or-int/2addr v14, v15

    sput v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    goto/16 :goto_1

    .line 339
    .end local v2           #context:Landroid/content/Context;
    .end local v6           #mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v11           #privateFile:Ljava/lang/Object;
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 357
    .restart local v2       #context:Landroid/content/Context;
    .restart local v5       #isPrivate:Z
    .restart local v6       #mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    .restart local v8       #method:Ljava/lang/reflect/Method;
    .restart local v11       #privateFile:Ljava/lang/Object;
    :cond_6
    sget v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    const/high16 v15, 0x40

    or-int/2addr v14, v15

    sput v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    goto :goto_4

    .line 362
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #isPrivate:Z
    .end local v6           #mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v11           #privateFile:Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/ui/ActionModeHandler;->mHasCrypto:Z

    if-eqz v14, :cond_1

    .line 363
    sget v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    const/high16 v15, 0x4

    or-int/2addr v14, v15

    sput v14, Lcom/android/gallery3d/ui/ActionModeHandler;->SUPPORT_MULTIPLE_MASK:I

    goto/16 :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private computePanoramaSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;
    .locals 9
    .parameter "jc"
    .parameter
    .parameter "isSecureBoxPic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, paths:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/Path;>;"
    const/4 v8, 0x1

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v5, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 405
    .local v2, manager:Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v1, intent:Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 407
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 408
    .local v3, path:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    .line 425
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #path:Lcom/android/gallery3d/data/Path;
    :cond_0
    :goto_1
    return-object v1

    .line 409
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    .end local v3           #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 412
    .local v4, size:I
    if-lez v4, :cond_0

    .line 413
    if-le v4, v8, :cond_3

    .line 414
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v6, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 422
    :goto_2
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 418
    :cond_3
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v6, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v7, "android.intent.extra.STREAM"

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;
    .locals 12
    .parameter "jc"
    .parameter
    .parameter "isSecureBoxPic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p2, mPaths:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/Path;>;"
    const/4 v11, 0x1

    .line 431
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v8, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v9, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 433
    .local v2, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v7, 0x0

    .line 434
    .local v7, type:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 435
    .local v1, intent:Landroid/content/Intent;
    if-nez p3, :cond_3

    .line 436
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 437
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2, v4}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v6

    .line 438
    .local v6, support:I
    invoke-virtual {v2, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v9

    or-int/2addr v7, v9

    .line 439
    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_1

    .line 440
    invoke-virtual {v2, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sget v10, Lcom/android/gallery3d/ui/ActionModeHandler;->SHARE_ITEMS_LIMIT:I

    if-le v9, v10, :cond_0

    .line 444
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    .end local v6           #support:I
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 445
    .local v5, size:I
    if-lez v5, :cond_5

    .line 446
    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, mimeType:Ljava/lang/String;
    if-le v5, v11, :cond_4

    .line 449
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 455
    :goto_0
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    invoke-direct {p0, v9}, Lcom/android/gallery3d/ui/ActionModeHandler;->setNfcBeamPushUris([Landroid/net/Uri;)V

    .line 461
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #size:I
    :cond_3
    :goto_1
    return-object v1

    .line 452
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v5       #size:I
    :cond_4
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v10, "android.intent.extra.STREAM"

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 458
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/gallery3d/ui/ActionModeHandler;->setNfcBeamPushUris([Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private computeUris(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/List;
    .locals 8
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x400

    const/4 v6, 0x0

    .line 386
    iget-object v4, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 387
    .local v1, expandedPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 388
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setNfcBeamPushUris([Landroid/net/Uri;)V

    .line 397
    :cond_0
    :goto_0
    return-object v2

    .line 391
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 392
    .local v3, pathsize:I
    const/16 v0, 0x400

    .line 393
    .local v0, SUPPORT_SHARE:I
    invoke-virtual {v1, v6, v3}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 394
    .local v2, paths:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/Path;>;"
    if-le v3, v7, :cond_0

    .line 395
    invoke-interface {v2, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 8
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 279
    .local v4, unexpandedPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 293
    :cond_0
    :goto_0
    return-object v3

    .line 284
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v3, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 286
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    .line 287
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 288
    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setNfcBeamPushUris([Landroid/net/Uri;)V
    .locals 3
    .parameter "uris"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 378
    :cond_0
    return-void
.end method

.method private updateSelectionMenu()V
    .locals 5

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 225
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, format:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionMenu;->updateSelectAllMode(Z)V

    .line 232
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->destroy()V

    .line 557
    :cond_0
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 157
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 171
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    .line 172
    .local v4, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 179
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    if-eqz v5, :cond_0

    .line 180
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v5, p2}, Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v3

    .line 181
    .local v3, result:Z
    if-eqz v3, :cond_0

    .line 182
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 204
    .end local v3           #result:Z
    :goto_0
    return v3

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 187
    .local v2, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    const/4 v1, 0x0

    .line 188
    .local v1, confirmMsg:Ljava/lang/String;
    :try_start_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 189
    .local v0, action:I
    const v5, 0x7f10017d

    if-ne v0, v5, :cond_2

    .line 190
    new-instance v2, Lcom/android/gallery3d/ui/ImportCompleteListener;

    .end local v2           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v5}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 200
    .restart local v2       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v5, p2, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 204
    const/4 v3, 0x1

    goto :goto_0

    .line 191
    :cond_2
    const v5, 0x7f10017f

    if-ne v0, v5, :cond_1

    .line 192
    :try_start_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f11

    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    if-nez v5, :cond_3

    .line 195
    new-instance v5, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    iget-object v6, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v7, "Gallery Delete Progress Listener"

    invoke-direct {v5, v6, v7}, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mDeleteProgressListener:Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 202
    .end local v0           #action:I
    .end local v1           #confirmMsg:Ljava/lang/String;
    .end local v2           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v5
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f12000a

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 252
    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 253
    const v0, 0x7f10017e

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    const-string v1, "panorama_share_history.xml"

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 261
    :cond_0
    const v0, 0x7f10017c

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v1, "share_history.xml"

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 269
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 275
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 6
    .parameter "itemId"

    .prologue
    const/4 v5, 0x1

    .line 209
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 210
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 212
    const v1, 0x7f100001

    if-ne p1, v1, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 214
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v5

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 552
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 561
    :cond_0
    return-void
.end method

.method public setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .line 165
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public startActionMode()V
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 146
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    .line 147
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, customView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 150
    new-instance v3, Lcom/android/gallery3d/ui/SelectionMenu;

    const v2, 0x7f100003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {v3, v0, v2, p0}, Lcom/android/gallery3d/ui/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/android/gallery3d/ui/SelectionMenu;

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 153
    return-void
.end method

.method public updateSupportedOperation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 477
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSharePanoramaMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$2;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    .line 544
    return-void
.end method

.method public updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V
    .locals 0
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 467
    return-void
.end method
