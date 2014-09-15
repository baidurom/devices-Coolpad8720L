.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# instance fields
.field private dlg:Landroid/app/Dialog;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field intCryptoKey:Z

.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field protected mCryptoManagerClient:Ljava/lang/Object;

.field private mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

.field private final mHandler:Landroid/os/Handler;

.field mOperation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

.field private mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

.field private mRenameDlg:Landroid/app/Dialog;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field mShowDialog:Z

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 7
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->intCryptoKey:Z

    .line 142
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 143
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 146
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    .local v1, context:Landroid/content/Context;
    const-string v2, "com.yulong.android.crypto.CryptoManagerClient"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 149
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCryptoManagerClient:Ljava/lang/Object;

    .line 153
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$1;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/yulong/android/view/dialog/LoginDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/yulong/android/view/dialog/AnimatedDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->dismissRenameDlg()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    return-object p1
.end method

.method private copytoClipboard()V
    .locals 20

    .prologue
    .line 434
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v14

    .line 435
    .local v14, path:Lcom/android/gallery3d/data/Path;
    if-nez v14, :cond_1

    .line 478
    .end local v14           #path:Lcom/android/gallery3d/data/Path;
    :cond_0
    :goto_0
    return-void

    .line 438
    .restart local v14       #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaItem;

    .line 439
    .local v9, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v11

    .line 441
    .local v11, mimeType:I
    const/4 v15, 0x2

    if-eq v11, v15, :cond_2

    .line 442
    const-string v15, "MenuExecutor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "optionCopytoClipboard mimeType = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 468
    .end local v5           #filePath:Ljava/lang/String;
    .end local v9           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v11           #mimeType:I
    .end local v14           #path:Lcom/android/gallery3d/data/Path;
    :catch_0
    move-exception v3

    .line 469
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v15, "decode_file_outofmemory"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->launchBugReportSystemByReflect(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02e4

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 471
    const-string v15, "MenuExecutor"

    const-string v16, "copy to clipboard occur out of memory error!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #filePath:Ljava/lang/String;
    .restart local v9       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .restart local v11       #mimeType:I
    .restart local v14       #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 446
    .local v2, activity:Landroid/app/Activity;
    const-string v15, "clipboard"

    invoke-virtual {v2, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipboardManager;

    .line 449
    .local v8, mClipboardManager:Landroid/content/ClipboardManager;
    const-string v15, "android.content.ClipboardManager"

    const-string v16, "IS_NOT_IMAGE"

    invoke-static/range {v15 .. v16}, Lcom/android/gallery3d/common/ApiHelper;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 450
    .local v6, isNotImage:Ljava/lang/CharSequence;
    const-string v15, "android.content.ClipboardManager"

    const-string v16, "IS_TOO_BIG"

    invoke-static/range {v15 .. v16}, Lcom/android/gallery3d/common/ApiHelper;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 451
    .local v7, isTooBig:Ljava/lang/CharSequence;
    const/4 v15, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    .line 452
    .local v13, pa:Ljava/lang/CharSequence;
    const-string v15, "android.content.ClipboardManager"

    const-string v16, "setImage"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Ljava/lang/CharSequence;

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 453
    .local v10, method:Ljava/lang/reflect/Method;
    if-eqz v10, :cond_0

    .line 454
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    invoke-static {v10, v8, v15}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 456
    .local v12, nRet:Ljava/lang/CharSequence;
    const-string v15, "MenuExecutor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clipboard filePath = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-nez v12, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02e2

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 473
    .end local v2           #activity:Landroid/app/Activity;
    .end local v5           #filePath:Ljava/lang/String;
    .end local v6           #isNotImage:Ljava/lang/CharSequence;
    .end local v7           #isTooBig:Ljava/lang/CharSequence;
    .end local v8           #mClipboardManager:Landroid/content/ClipboardManager;
    .end local v9           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v10           #method:Ljava/lang/reflect/Method;
    .end local v11           #mimeType:I
    .end local v12           #nRet:Ljava/lang/CharSequence;
    .end local v13           #pa:Ljava/lang/CharSequence;
    .end local v14           #path:Lcom/android/gallery3d/data/Path;
    :catch_1
    move-exception v4

    .line 474
    .local v4, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02e4

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 475
    const-string v15, "MenuExecutor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "copy to clipboard occur exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v5       #filePath:Ljava/lang/String;
    .restart local v6       #isNotImage:Ljava/lang/CharSequence;
    .restart local v7       #isTooBig:Ljava/lang/CharSequence;
    .restart local v8       #mClipboardManager:Landroid/content/ClipboardManager;
    .restart local v9       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .restart local v10       #method:Ljava/lang/reflect/Method;
    .restart local v11       #mimeType:I
    .restart local v12       #nRet:Ljava/lang/CharSequence;
    .restart local v13       #pa:Ljava/lang/CharSequence;
    .restart local v14       #path:Lcom/android/gallery3d/data/Path;
    :cond_3
    if-ne v12, v6, :cond_4

    .line 461
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02e2

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 462
    :cond_4
    if-ne v12, v7, :cond_5

    .line 463
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02e3

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 465
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02e1

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Lcom/yulong/android/view/dialog/AnimatedDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    new-instance v0, Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-direct {v0, p0}, Lcom/yulong/android/view/dialog/AnimatedDialog;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, dialog:Lcom/yulong/android/view/dialog/AnimatedDialog;
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 123
    invoke-virtual {v0, p2}, Lcom/yulong/android/view/dialog/ProgressDialog;->setMax(I)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/AlertDialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/ProgressDialog;->setIndeterminate(Z)V

    .line 126
    if-le p2, v2, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Lcom/yulong/android/view/dialog/ProgressDialog;->setProgressStyle(I)V

    .line 129
    :cond_0
    return-object v0
.end method

.method private dismissRenameDlg()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mRenameDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mRenameDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 228
    :cond_0
    return-void
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 13
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 964
    const/4 v5, 0x1

    .line 965
    .local v5, result:Z
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execute cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 968
    .local v6, startTime:J
    sparse-switch p3, :sswitch_data_0

    .line 1024
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 970
    :sswitch_0
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 1026
    :cond_0
    :goto_0
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It takes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms to execute cmd for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return v5

    .line 973
    :sswitch_1
    const/16 v8, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 976
    :sswitch_2
    const/16 v8, -0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 979
    :sswitch_3
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 980
    .local v4, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v1

    .line 981
    .local v1, cacheFlag:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 982
    const/4 v1, 0x1

    .line 986
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 984
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 990
    .end local v1           #cacheFlag:I
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_4
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 991
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v8, 0x2

    new-array v3, v8, [D

    .line 992
    .local v3, latlng:[D
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 993
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 994
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto :goto_0

    .line 999
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #latlng:[D
    :sswitch_5
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 1000
    .restart local v4       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->Import()Z

    move-result v5

    .line 1001
    goto :goto_0

    .line 1004
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_6
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->savePicToCollect(Lcom/android/gallery3d/data/Path;)Z

    goto/16 :goto_0

    .line 1008
    :sswitch_7
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->movePicToSecureBox(Lcom/android/gallery3d/data/Path;)Z

    goto/16 :goto_0

    .line 1012
    :sswitch_8
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->removePicFromSecureBox(Lcom/android/gallery3d/data/Path;)Z

    goto/16 :goto_0

    .line 1016
    :sswitch_9
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8, v9}, Lcom/android/gallery3d/data/DataManager;->managePrivateModel(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 1020
    :sswitch_a
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8, v9}, Lcom/android/gallery3d/data/DataManager;->managePrivateModel(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 968
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100000 -> :sswitch_3
        0x7f10017d -> :sswitch_5
        0x7f10017f -> :sswitch_0
        0x7f100181 -> :sswitch_2
        0x7f100182 -> :sswitch_1
        0x7f100185 -> :sswitch_6
        0x7f100186 -> :sswitch_7
        0x7f100187 -> :sswitch_8
        0x7f100188 -> :sswitch_9
        0x7f100189 -> :sswitch_a
        0x7f10018b -> :sswitch_4
    .end sparse-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "action"

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 331
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 332
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, mimeType:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 953
    packed-switch p0, :pswitch_data_0

    .line 958
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 955
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 957
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 953
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSecureBoxIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    move-object v8, p1

    .line 934
    .local v8, secureBoxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, len:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 935
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    .line 936
    .local v6, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    instance-of v9, v6, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v9, :cond_0

    .line 937
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 938
    .local v7, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 939
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 940
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 941
    .local v0, count:I
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 942
    .local v5, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 943
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaItem;

    .line 944
    .local v4, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 934
    .end local v0           #count:I
    .end local v2           #j:I
    .end local v4           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v7           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    .end local v6           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    return-object v8
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 326
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 325
    goto :goto_0
.end method

.method private onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 338
    return-void
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    return-void
.end method

.method private onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method private onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    return-void
.end method

.method private rename()V
    .locals 19

    .prologue
    .line 484
    const/4 v13, 0x0

    .line 485
    .local v13, isAlbumRename:Z
    const-string v11, ""

    .line 486
    .local v11, editText:Ljava/lang/String;
    const/4 v14, 0x0

    .line 487
    .local v14, item:Lcom/android/gallery3d/data/MediaObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 488
    .local v6, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v14

    .line 489
    :cond_0
    if-eqz v14, :cond_3

    .line 490
    instance-of v2, v14, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v2, :cond_4

    .line 491
    const/4 v13, 0x1

    .line 492
    check-cast v14, Lcom/android/gallery3d/data/LocalAlbum;

    .end local v14           #item:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v14}, Lcom/android/gallery3d/data/LocalAlbum;->getAlbumDir()Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, albumDir:Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 499
    .end local v8           #albumDir:Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mRenameDlg:Landroid/app/Dialog;

    if-nez v2, :cond_2

    .line 500
    new-instance v2, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v17, 0x7f0f003f

    move/from16 v0, v17

    invoke-direct {v2, v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mRenameDlg:Landroid/app/Dialog;

    .line 501
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mRenameDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 502
    .local v12, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040037

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 503
    .local v10, custom:Landroid/view/View;
    const v2, 0x7f1000b3

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 504
    .local v16, title:Landroid/widget/TextView;
    const v2, 0x7f1000af

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 505
    .local v4, text:Landroid/widget/EditText;
    const v2, 0x7f1000b1

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 506
    .local v15, okBtn:Landroid/widget/Button;
    const v2, 0x7f1000b0

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 508
    .local v9, cancelBtn:Landroid/widget/Button;
    move-object v5, v11

    .line 509
    .local v5, oldTitle:Ljava/lang/String;
    move v7, v13

    .line 510
    .local v7, isRenameAlbum:Z
    const v2, 0x7f0e02ea

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 511
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mRenameDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mRenameDlg:Landroid/app/Dialog;

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/ui/MenuExecutor$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/ui/MenuExecutor$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/widget/EditText;)V

    const-wide/16 v17, 0x118

    move-wide/from16 v0, v17

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/MenuExecutor$3;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/ui/MenuExecutor$4;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    .end local v4           #text:Landroid/widget/EditText;
    .end local v5           #oldTitle:Ljava/lang/String;
    .end local v7           #isRenameAlbum:Z
    .end local v9           #cancelBtn:Landroid/widget/Button;
    .end local v10           #custom:Landroid/view/View;
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    .end local v15           #okBtn:Landroid/widget/Button;
    .end local v16           #title:Landroid/widget/TextView;
    :cond_3
    return-void

    .line 494
    .restart local v14       #item:Lcom/android/gallery3d/data/MediaObject;
    :cond_4
    instance-of v2, v14, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_1

    .line 495
    check-cast v14, Lcom/android/gallery3d/data/LocalImage;

    .end local v14           #item:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v14}, Lcom/android/gallery3d/data/LocalImage;->getTitle()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private static setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 319
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 320
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    :cond_0
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 196
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AlertDialog;->dismiss()V

    .line 199
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 200
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 202
    :cond_1
    return-void
.end method

.method public static updateMenuForPanorama(Landroid/view/Menu;ZZ)V
    .locals 2
    .parameter "menu"
    .parameter "shareAsPanorama360"
    .parameter "disablePanorama360Options"

    .prologue
    const/4 v1, 0x0

    .line 311
    const v0, 0x7f10017e

    invoke-static {p0, v0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 312
    if-eqz p2, :cond_0

    .line 313
    const v0, 0x7f100181

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 314
    const v0, 0x7f100182

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 316
    :cond_0
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 31
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 245
    and-int/lit8 v26, p1, 0x1

    if-eqz v26, :cond_2

    const/4 v10, 0x1

    .line 246
    .local v10, supportDelete:Z
    :goto_0
    and-int/lit8 v26, p1, 0x2

    if-eqz v26, :cond_3

    const/16 v20, 0x1

    .line 247
    .local v20, supportRotate:Z
    :goto_1
    and-int/lit8 v26, p1, 0x8

    if-eqz v26, :cond_4

    const/4 v9, 0x1

    .line 249
    .local v9, supportCrop:Z
    :goto_2
    and-int/lit8 v26, p1, 0x4

    if-eqz v26, :cond_5

    const/16 v24, 0x1

    .line 250
    .local v24, supportShare:Z
    :goto_3
    and-int/lit8 v26, p1, 0x20

    if-eqz v26, :cond_6

    const/16 v23, 0x1

    .line 251
    .local v23, supportSetAs:Z
    :goto_4
    and-int/lit8 v26, p1, 0x10

    if-eqz v26, :cond_7

    const/16 v25, 0x1

    .line 252
    .local v25, supportShowOnMap:Z
    :goto_5
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v26, v0

    if-eqz v26, :cond_8

    const/4 v7, 0x1

    .line 253
    .local v7, supportCache:Z
    :goto_6
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v26, v0

    if-eqz v26, :cond_9

    const/4 v11, 0x1

    .line 254
    .local v11, supportEdit:Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-eqz v26, :cond_a

    const/4 v13, 0x1

    .line 255
    .local v13, supportInfo:Z
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v26, v0

    if-eqz v26, :cond_b

    const/4 v12, 0x1

    .line 257
    .local v12, supportImport:Z
    :goto_9
    const/high16 v26, 0x2

    and-int v26, v26, p1

    if-eqz v26, :cond_c

    const/16 v21, 0x1

    .line 258
    .local v21, supportSave:Z
    :goto_a
    const/high16 v26, 0x20

    and-int v26, v26, p1

    if-eqz v26, :cond_d

    const/16 v22, 0x1

    .line 259
    .local v22, supportSaveOtherPic:Z
    :goto_b
    const/high16 v26, 0x4

    and-int v26, v26, p1

    if-eqz v26, :cond_e

    const/4 v15, 0x1

    .line 260
    .local v15, supportMoveTo:Z
    :goto_c
    const/high16 v26, 0x8

    and-int v26, v26, p1

    if-eqz v26, :cond_f

    const/16 v19, 0x1

    .line 261
    .local v19, supportReoveFrom:Z
    :goto_d
    const/high16 v26, 0x40

    and-int v26, v26, p1

    if-eqz v26, :cond_10

    const/16 v17, 0x1

    .line 262
    .local v17, supportPrivateSet:Z
    :goto_e
    const/high16 v26, 0x80

    and-int v26, v26, p1

    if-eqz v26, :cond_11

    const/16 v16, 0x1

    .line 263
    .local v16, supportPrivateCancel:Z
    :goto_f
    const/high16 v26, 0x100

    and-int v26, v26, p1

    if-eqz v26, :cond_12

    const/4 v14, 0x1

    .line 264
    .local v14, supportMovePic:Z
    :goto_10
    const/high16 v26, 0x200

    and-int v26, v26, p1

    if-eqz v26, :cond_13

    const/4 v8, 0x1

    .line 265
    .local v8, supportCopyPic:Z
    :goto_11
    const/high16 v26, 0x400

    and-int v26, v26, p1

    if-eqz v26, :cond_14

    const/16 v18, 0x1

    .line 269
    .local v18, supportRename:Z
    :goto_12
    const-string v26, "com.yulong.android.feature.FeatureConfig"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 271
    .local v4, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 272
    .local v5, instance:Ljava/lang/Object;
    const-string v26, "com.yulong.android.feature.FeatureConfig"

    const-string v27, "getBooleanValue"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, Ljava/lang/String;

    aput-object v30, v28, v29

    invoke-static/range {v26 .. v28}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 274
    .local v6, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 275
    .local v3, SupportSecureBox:Z
    if-eqz v6, :cond_0

    .line 276
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "enable_secure"

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v6, v5, v0}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 279
    :cond_0
    const v26, 0x7f10017f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 280
    const v26, 0x7f100181

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 281
    const v26, 0x7f100182

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 282
    const v26, 0x7f100183

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 284
    const v26, 0x7f10018f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 287
    const v26, 0x7f10017e

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 288
    const v26, 0x7f10017c

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 289
    const v26, 0x7f100184

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 290
    const v26, 0x7f10018b

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 291
    const v26, 0x7f100180

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 292
    const v26, 0x7f10018a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 293
    const v26, 0x7f10017d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 295
    const v26, 0x7f100185

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 296
    const v26, 0x7f10018e

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 297
    if-eqz v3, :cond_1

    .line 298
    const v26, 0x7f100186

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v15}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 299
    const v26, 0x7f100187

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 300
    const v26, 0x7f100188

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 301
    const v26, 0x7f100189

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 304
    :cond_1
    const v26, 0x7f10018c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v14}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 305
    const v26, 0x7f10018d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 306
    const v26, 0x7f100191

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 307
    return-void

    .line 245
    .end local v3           #SupportSecureBox:Z
    .end local v4           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #instance:Ljava/lang/Object;
    .end local v6           #method:Ljava/lang/reflect/Method;
    .end local v7           #supportCache:Z
    .end local v8           #supportCopyPic:Z
    .end local v9           #supportCrop:Z
    .end local v10           #supportDelete:Z
    .end local v11           #supportEdit:Z
    .end local v12           #supportImport:Z
    .end local v13           #supportInfo:Z
    .end local v14           #supportMovePic:Z
    .end local v15           #supportMoveTo:Z
    .end local v16           #supportPrivateCancel:Z
    .end local v17           #supportPrivateSet:Z
    .end local v18           #supportRename:Z
    .end local v19           #supportReoveFrom:Z
    .end local v20           #supportRotate:Z
    .end local v21           #supportSave:Z
    .end local v22           #supportSaveOtherPic:Z
    .end local v23           #supportSetAs:Z
    .end local v24           #supportShare:Z
    .end local v25           #supportShowOnMap:Z
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 246
    .restart local v10       #supportDelete:Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 247
    .restart local v20       #supportRotate:Z
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 249
    .restart local v9       #supportCrop:Z
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 250
    .restart local v24       #supportShare:Z
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 251
    .restart local v23       #supportSetAs:Z
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 252
    .restart local v25       #supportShowOnMap:Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 253
    .restart local v7       #supportCache:Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 254
    .restart local v11       #supportEdit:Z
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 255
    .restart local v13       #supportInfo:Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 257
    .restart local v12       #supportImport:Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 258
    .restart local v21       #supportSave:Z
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_b

    .line 259
    .restart local v22       #supportSaveOtherPic:Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 260
    .restart local v15       #supportMoveTo:Z
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_d

    .line 261
    .restart local v19       #supportReoveFrom:Z
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 262
    .restart local v17       #supportPrivateSet:Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_f

    .line 263
    .restart local v16       #supportPrivateCancel:Z
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_10

    .line 264
    .restart local v14       #supportMovePic:Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_11

    .line 265
    .restart local v8       #supportCopyPic:Z
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_12
.end method


# virtual methods
.method public checkCoolPassword()V
    .locals 2

    .prologue
    .line 1196
    new-instance v0, Lcom/yulong/android/view/dialog/LoginDialog;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    .line 1197
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 1199
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/MenuExecutor$10;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 1247
    return-void
.end method

.method public checkCryptoKeyExist()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1106
    const/4 v1, 0x0

    .line 1107
    .local v1, hasCryptoKey:Z
    const-string v2, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v3, "isCryptoKeyExist"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1109
    .local v0, checkKey:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 1110
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1113
    :cond_0
    return v1
.end method

.method public checkSecurityPassExist()Z
    .locals 6

    .prologue
    .line 1088
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "coolpadSystem"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 1090
    .local v3, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    invoke-virtual {v3}, Lcom/yulong/android/server/systeminterface/SystemManager;->isSecurityManagerPasswordExist()Z

    move-result v1

    .line 1091
    .local v1, isExist:Z
    if-nez v1, :cond_0

    .line 1093
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v2, mIntent:Landroid/content/Intent;
    const-string v4, "com.yulong.android.seccenter"

    const-string v5, "com.yulong.android.createpassword.CreateSecurityPasswordStep1Activity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    const/4 v1, 0x0

    .line 1102
    .end local v1           #isExist:Z
    .end local v2           #mIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v1

    .line 1098
    .restart local v1       #isExist:Z
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 218
    :cond_0
    return-void
.end method

.method public initKey()V
    .locals 2

    .prologue
    .line 1118
    new-instance v0, Lcom/yulong/android/view/dialog/LoginDialog;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    .line 1120
    .local v0, passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1121
    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 1122
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$9;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor$9;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/yulong/android/view/dialog/LoginDialog;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 1155
    return-void
.end method

.method public loginSecureBox()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1171
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "isVerifyCheck"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1173
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1174
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1176
    .local v1, isVerifyCheck:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->checkSecurityPassExist()Z

    move-result v0

    .line 1177
    .local v0, isExist:Z
    if-nez v0, :cond_1

    .line 1193
    .end local v0           #isExist:Z
    .end local v1           #isVerifyCheck:Z
    :cond_0
    :goto_0
    return-void

    .line 1179
    .restart local v0       #isExist:Z
    .restart local v1       #isVerifyCheck:Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1180
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "notifySecureServer"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xb4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1189
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1190
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->checkCoolPassword()V

    goto :goto_0
.end method

.method public onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 10
    .parameter "action"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    const/4 v1, 0x1

    .line 343
    const/4 v6, 0x0

    .line 344
    .local v6, isSecure:Z
    const/4 v7, 0x0

    .line 345
    .local v7, isMoveToSecure:Z
    sparse-switch p1, :sswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 347
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 356
    :sswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->copytoClipboard()V

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 363
    :sswitch_2
    const-string v0, "com.android.camera.action.EDITOR_CROP"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 365
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 369
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_3
    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 371
    .restart local v9       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v9, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 375
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_4
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 377
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v0, "mimeType"

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 379
    .local v8, activity:Landroid/app/Activity;
    const v0, 0x7f0e00a7

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    .end local v8           #activity:Landroid/app/Activity;
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_5
    const-string v0, "MenuExecutor"

    const-string v1, "rename operation success response"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->rename()V

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 390
    :sswitch_6
    const v2, 0x7f0e008f

    .local v2, title:I
    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 429
    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZZZ)V

    goto/16 :goto_0

    .line 393
    .end local v2           #title:I
    :sswitch_7
    const v2, 0x7f0e00a0

    .line 394
    .restart local v2       #title:I
    goto :goto_1

    .line 396
    .end local v2           #title:I
    :sswitch_8
    const v2, 0x7f0e009f

    .line 397
    .restart local v2       #title:I
    goto :goto_1

    .line 399
    .end local v2           #title:I
    :sswitch_9
    const v2, 0x7f0e012d

    .line 400
    .restart local v2       #title:I
    goto :goto_1

    .line 402
    .end local v2           #title:I
    :sswitch_a
    const v2, 0x7f0e0139

    .line 403
    .restart local v2       #title:I
    const/4 v6, 0x1

    .line 404
    const/4 v7, 0x1

    .line 405
    goto :goto_1

    .line 408
    .end local v2           #title:I
    :sswitch_b
    const v2, 0x7f0e013a

    .line 409
    .restart local v2       #title:I
    const/4 v6, 0x1

    .line 410
    goto :goto_1

    .line 413
    .end local v2           #title:I
    :sswitch_c
    const v2, 0x7f0e0140

    .line 414
    .restart local v2       #title:I
    goto :goto_1

    .line 417
    .end local v2           #title:I
    :sswitch_d
    const v2, 0x7f0e0141

    .line 418
    .restart local v2       #title:I
    goto :goto_1

    .line 421
    .end local v2           #title:I
    :sswitch_e
    const v2, 0x7f0e009e

    .line 422
    .restart local v2       #title:I
    goto :goto_1

    .line 424
    .end local v2           #title:I
    :sswitch_f
    const v2, 0x7f0e00ed

    .line 425
    .restart local v2       #title:I
    goto :goto_1

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100001 -> :sswitch_0
        0x7f10017d -> :sswitch_f
        0x7f10017f -> :sswitch_6
        0x7f100180 -> :sswitch_3
        0x7f100181 -> :sswitch_8
        0x7f100182 -> :sswitch_7
        0x7f100183 -> :sswitch_2
        0x7f100184 -> :sswitch_4
        0x7f100185 -> :sswitch_9
        0x7f100186 -> :sswitch_a
        0x7f100187 -> :sswitch_b
        0x7f100188 -> :sswitch_c
        0x7f100189 -> :sswitch_d
        0x7f10018b -> :sswitch_e
        0x7f10018f -> :sswitch_1
        0x7f100191 -> :sswitch_5
    .end sparse-switch
.end method

.method public onMenuClicked(ILjava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 9
    .parameter "action"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 833
    if-eqz p2, :cond_1

    .line 834
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 835
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 837
    .local v1, cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v6, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f003f

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    .line 838
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 839
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 841
    .local v3, custom:Landroid/view/View;
    const v6, 0x7f10004c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 842
    .local v2, content:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    const v6, 0x7f10004e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 844
    .local v5, okBtn:Landroid/widget/Button;
    const v6, 0x7f10004d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 845
    .local v0, cancelBtn:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 846
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 847
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 848
    new-instance v6, Lcom/android/gallery3d/ui/MenuExecutor$7;

    invoke-direct {v6, p0, p1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$7;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    new-instance v6, Lcom/android/gallery3d/ui/MenuExecutor$8;

    invoke-direct {v6, p0}, Lcom/android/gallery3d/ui/MenuExecutor$8;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    .end local v0           #cancelBtn:Landroid/widget/Button;
    .end local v1           #cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    .end local v2           #content:Landroid/widget/TextView;
    .end local v3           #custom:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #okBtn:Landroid/widget/Button;
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 10
    .parameter "menuItem"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 795
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 797
    .local v0, action:I
    if-eqz p2, :cond_1

    .line 798
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 799
    :cond_0
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v2, p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 801
    .local v2, cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v7, Landroid/app/Dialog;

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f003f

    invoke-direct {v7, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    .line 802
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 803
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040018

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 805
    .local v4, custom:Landroid/view/View;
    const v7, 0x7f10004c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 806
    .local v3, content:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    const v7, 0x7f10004e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 808
    .local v6, okBtn:Landroid/widget/Button;
    const v7, 0x7f10004d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 809
    .local v1, cancelBtn:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 810
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v7, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 811
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 812
    new-instance v7, Lcom/android/gallery3d/ui/MenuExecutor$5;

    invoke-direct {v7, p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor$5;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    new-instance v7, Lcom/android/gallery3d/ui/MenuExecutor$6;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/MenuExecutor$6;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    .end local v1           #cancelBtn:Landroid/widget/Button;
    .end local v2           #cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    .end local v3           #content:Landroid/widget/TextView;
    .end local v4           #custom:Landroid/view/View;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #okBtn:Landroid/widget/Button;
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->dismissRenameDlg()V

    .line 213
    return-void
.end method

.method public pickSefeBox()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 1159
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 1160
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 1161
    .local v0, dm:Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v1, secureData:Landroid/os/Bundle;
    const-string v2, "secure-path"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1163
    const-string v2, "type-bits"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1165
    const-string v2, "media-path"

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1168
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZZZ)V
    .locals 15
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"
    .parameter "isSecure"
    .parameter "isMoveToSecure"

    .prologue
    .line 872
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 873
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 874
    const v1, 0x7f10018b

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 875
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/gallery3d/data/Path;

    .line 876
    .local v11, id:Lcom/android/gallery3d/data/Path;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/MediaItem;

    .line 878
    .local v12, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v1, 0x2

    new-array v13, v1, [D

    .line 879
    .local v13, latlng:[D
    invoke-virtual {v12, v13}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 880
    const/4 v1, 0x0

    aget-wide v1, v13, v1

    const/4 v3, 0x1

    aget-wide v5, v13, v3

    invoke-static {v1, v2, v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    aget-wide v2, v13, v2

    const/4 v5, 0x1

    aget-wide v5, v13, v5

    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto :goto_0

    .line 885
    .end local v11           #id:Lcom/android/gallery3d/data/Path;
    .end local v12           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v13           #latlng:[D
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 919
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 888
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 889
    .local v8, activity:Landroid/app/Activity;
    const/4 v9, 0x0

    .line 890
    .local v9, hasCryptoKey:Z
    if-eqz p6, :cond_4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->getSecureBoxIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 891
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    const/16 p5, 0x0

    .line 893
    :cond_5
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mOperation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    .line 894
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 895
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p2

    invoke-static {v8, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Lcom/yulong/android/view/dialog/AnimatedDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 896
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mShowDialog:Z

    .line 897
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p2

    invoke-static {v8, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Lcom/yulong/android/view/dialog/AnimatedDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 900
    const v1, 0x7f100186

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 902
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->checkSecurityPassExist()Z

    move-result v14

    .line 903
    .local v14, securityPassExist:Z
    if-eqz v14, :cond_2

    .line 905
    if-eqz v14, :cond_6

    .line 906
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->checkCryptoKeyExist()Z

    move-result v9

    .line 907
    if-nez v9, :cond_6

    .line 908
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->initKey()V

    goto :goto_1

    .line 913
    .end local v14           #securityPassExist:Z
    :cond_6
    if-eqz p5, :cond_7

    .line 914
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 916
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mOperation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;)V

    goto :goto_1
.end method

.method public startAction(Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;)V
    .locals 2
    .parameter "operation"

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mShowDialog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 924
    return-void
.end method
