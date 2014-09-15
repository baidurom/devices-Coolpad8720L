.class public final Lcom/android/gallery3d/app/Gallery;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private filesafebox:Z

.field public lightenessMax:F

.field private mCryptoManagerClient:Ljava/lang/Object;

.field public mGps:Z

.field private mHandler:Landroid/os/Handler;

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

.field private mVersionCheckDialog:Landroid/app/Dialog;

.field private safeboxalbum:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->mGps:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->filesafebox:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->safeboxalbum:Z

    .line 101
    const/high16 v0, 0x437f

    iput v0, p0, Lcom/android/gallery3d/app/Gallery;->lightenessMax:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/Gallery;)Lcom/yulong/android/view/dialog/LoginDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/Gallery;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->filesafebox:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->safeboxalbum:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/Gallery;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getBundle(Landroid/content/Intent;Lcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .parameter "intent"
    .parameter "albumPath"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 348
    if-eqz p2, :cond_0

    const-string v3, "SingleItemOnly"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    .line 350
    .local v0, singleItemOnly:Z
    :goto_0
    if-nez v0, :cond_2

    .line 351
    const-string v3, "media-set-path"

    invoke-virtual {p2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v3, "treat-back-as-up"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 357
    :cond_1
    const-string v1, "treat-back-as-up"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    :cond_2
    return-object p3

    .end local v0           #singleItemOnly:Z
    :cond_3
    move v0, v1

    .line 348
    goto :goto_0
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 253
    const-string v3, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "image/jpeg"

    .line 262
    .end local v1           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 257
    .restart local v1       #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 259
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 5

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 172
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 199
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    const-string v3, "Gallery"

    const-string v4, "action PICK is not supported"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, type:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const-string v3, "/image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :cond_1
    const-string v3, "/video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    .end local v2           #type:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_5
    if-eqz v0, :cond_7

    const-string v3, "android.intent.action.CROP_PICTURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.intent.action.MOVE_PICTURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startMoveOfCropPic(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 227
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-content"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 229
    .local v1, typeBits:I
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 233
    return-void

    .line 224
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #typeBits:I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startMoveOfCropPic(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 239
    .local v1, data:Landroid/os/Bundle;
    :goto_0
    const-string v4, "move-picture"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 240
    .local v2, move:Z
    const-string v4, "copy-picture"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 241
    .local v0, crop:Z
    const-string v4, "move-picture"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v4, "copy-picture"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v3

    .line 244
    .local v3, typeBits:I
    const-string v4, "type-bits"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v4, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v4, v5, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 248
    return-void

    .line 236
    .end local v0           #crop:Z
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #move:Z
    .end local v3           #typeBits:I
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 22
    .parameter "intent"

    .prologue
    .line 364
    const-string v19, "slideshow"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 365
    .local v15, slideshow:Ljava/lang/Boolean;
    const-string v19, "filesafebox"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/Gallery;->filesafebox:Z

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 367
    .local v18, uri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 368
    .local v17, targetUri:Ljava/lang/String;
    const/16 v16, 0x0

    .line 369
    .local v16, str:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 370
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 371
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 373
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 374
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/app/Gallery;->startSlideShow(Landroid/content/Intent;)V

    .line 452
    :goto_0
    return-void

    .line 375
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/Gallery;->filesafebox:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->loginSecureBox()V

    goto :goto_0

    .line 377
    :cond_2
    if-eqz v17, :cond_3

    const-string v19, "/data/yulong_secure/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "file:"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 380
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/Gallery;->safeboxalbum:Z

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->loginSecureBox()V

    goto :goto_0

    .line 383
    :cond_3
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v8, data:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 385
    .local v9, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, contentType:Ljava/lang/String;
    const-string v19, "CameraLaunched"

    const-string v20, "CameraLaunched"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    const-string v19, "Gallery"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "-------startViewAction---contentType = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " uri = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-eqz v7, :cond_4

    if-nez v18, :cond_5

    .line 392
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/gallery3d/app/Gallery;->finishOrStartAlbumSetPage(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 394
    :cond_5
    const-string v19, "vnd.android.cursor.dir"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 396
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/app/Gallery;->StartAlbumSetPageOrDefaultPage(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 399
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v7}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    .line 400
    .local v11, itemPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v9, v11}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 401
    .local v5, albumPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "save_path"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 402
    .local v13, mSavePath:Ljava/lang/String;
    const-string v19, "media-item-path"

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v8}, Lcom/android/gallery3d/app/Gallery;->getBundle(Landroid/content/Intent;Lcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 406
    const/4 v10, 0x0

    .line 407
    .local v10, is_filepath:Z
    const-string v19, "SingleItemOnly"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 421
    .local v14, singleItem:Z
    const-string v19, "file:"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    if-nez v5, :cond_8

    .line 422
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 424
    .local v6, baseuri:Landroid/net/Uri;
    sget-object v19, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/Gallery;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 425
    const-string v3, "/local/all/"

    .line 427
    .local v3, AlbumPath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/app/Gallery;->getBucketId(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v12

    .line 428
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/Gallery;->mItemPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, UitemPath:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    if-nez v14, :cond_7

    if-eqz v3, :cond_7

    .line 432
    const-string v19, "media-set-path"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_7
    const-string v19, "media-item-path"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v10, 0x1

    .line 439
    .end local v3           #AlbumPath:Ljava/lang/String;
    .end local v4           #UitemPath:Ljava/lang/String;
    .end local v6           #baseuri:Landroid/net/Uri;
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    if-nez v10, :cond_9

    .line 440
    const-string v19, "media-item-path"

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_9
    const-string v19, "treat-back-as-up"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 444
    const-string v19, "treat-back-as-up"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    :cond_a
    const-string v19, "save_path"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v19

    const-class v20, Lcom/android/gallery3d/app/PhotoPage;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public StartAlbumSetPageOrDefaultPage(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 308
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 309
    .local v6, uri:Landroid/net/Uri;
    const-string v7, "mediaTypes"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 310
    .local v4, mediaType:I
    if-eqz v4, :cond_0

    .line 311
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "mediaTypes"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 316
    :cond_0
    const-string v7, "gpspic_path"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, mGpsPath:Ljava/lang/String;
    const-string v7, "gpspic"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/gallery3d/app/Gallery;->mGps:Z

    .line 318
    if-eqz v2, :cond_1

    .line 319
    const-string v7, "gps_pic"

    iget-boolean v8, p0, Lcom/android/gallery3d/app/Gallery;->mGps:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    const-string v7, "media-path"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v8, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v8, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 343
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 324
    .local v5, setPath:Lcom/android/gallery3d/data/Path;
    const/4 v3, 0x0

    .line 325
    .local v3, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v5, :cond_2

    .line 326
    invoke-virtual {v1, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .end local v3           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    check-cast v3, Lcom/android/gallery3d/data/MediaSet;

    .line 328
    .restart local v3       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    if-eqz v3, :cond_4

    .line 329
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 330
    const-string v7, "media-path"

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v7, "parent-media-path"

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v8, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v8, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 335
    :cond_3
    const-string v7, "media-path"

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v8, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v7, v8, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto :goto_0
.end method

.method public checkCoolPassword()V
    .locals 2

    .prologue
    .line 581
    new-instance v0, Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {v0, p0}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    .line 582
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    new-instance v1, Lcom/android/gallery3d/app/Gallery$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/Gallery$2;-><init>(Lcom/android/gallery3d/app/Gallery;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 638
    return-void
.end method

.method public finishOrStartAlbumSetPage(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 4
    .parameter "contentType"
    .parameter "uri"
    .parameter "intent"

    .prologue
    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, data:Landroid/os/Bundle;
    if-nez p1, :cond_1

    .line 290
    const v2, 0x7f0e00a1

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    if-nez p2, :cond_0

    .line 296
    invoke-static {p0, p3}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 297
    .local v1, typeBits:I
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getBrightness()I
    .locals 3

    .prologue
    .line 756
    const/4 v0, 0x1

    .line 758
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 763
    :goto_0
    return v0

    .line 760
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBucketId(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 9
    .parameter "baseuri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 721
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 722
    .local v8, targetUri:Ljava/lang/String;
    const-string v3, "lower(_data) = lower(?)"

    .line 723
    .local v3, whereClause:Ljava/lang/String;
    const/4 v6, 0x0

    .line 725
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "bucket_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 729
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :cond_0
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 738
    :goto_0
    return-object v7

    .line 733
    :catch_0
    move-exception v1

    .line 736
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public loginSecureBox()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "coolpadSystem"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 538
    .local v4, mSystemManager:Lcom/yulong/android/server/systeminterface/SystemManager;
    invoke-virtual {v4}, Lcom/yulong/android/server/systeminterface/SystemManager;->isSecurityManagerPasswordExist()Z

    move-result v1

    .line 540
    .local v1, isExist:Z
    const-string v7, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v8, "isVerifyCheck"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 543
    .local v6, method:Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 544
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 545
    .local v2, isVerifyCheck:Z
    if-nez v1, :cond_1

    .line 547
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, mIntent:Landroid/content/Intent;
    const-string v7, "com.yulong.android.seccenter"

    const-string v8, "com.yulong.android.createpassword.CreateSecurityPasswordStep1Activity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v2           #isVerifyCheck:Z
    .end local v3           #mIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 552
    .restart local v2       #isVerifyCheck:Z
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 555
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    if-eqz v2, :cond_4

    .line 557
    const-string v7, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v8, "notifySecureServer"

    new-array v9, v12, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v7, "Gallery"

    const-string v8, "loginSecureBox() notifySecureServer VERTIFY = 1"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v5, 0x1

    .line 563
    .local v5, message:I
    iget-boolean v7, p0, Lcom/android/gallery3d/app/Gallery;->filesafebox:Z

    if-eqz v7, :cond_3

    .line 564
    const/4 v5, 0x1

    .line 568
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xb4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 565
    :cond_3
    iget-boolean v7, p0, Lcom/android/gallery3d/app/Gallery;->safeboxalbum:Z

    if-eqz v7, :cond_2

    .line 566
    const/4 v5, 0x2

    goto :goto_1

    .line 572
    .end local v5           #message:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->checkCoolPassword()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mBackPressed:Z

    .line 467
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 469
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 525
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 115
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "dismiss-keyguard"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CameraLaunched"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "setbrightness"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, brightness:I
    invoke-virtual {p0, v0, v8}, Lcom/android/gallery3d/app/Gallery;->setBrightness(IZ)V

    .line 128
    .end local v0           #brightness:I
    :cond_1
    const-string v4, "sys.ui.retailmode.start"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, startStr:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "setbrightness"

    const/16 v6, 0xff

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 131
    .restart local v0       #brightness:I
    invoke-virtual {p0, v0, v8}, Lcom/android/gallery3d/app/Gallery;->setBrightness(IZ)V

    .line 133
    .end local v0           #brightness:I
    :cond_2
    const v4, 0x7f040031

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 137
    :try_start_0
    const-string v4, "com.yulong.android.crypto.CryptoManagerClient"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 139
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v4}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    new-instance v4, Lcom/android/gallery3d/app/Gallery$1;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/app/Gallery$1;-><init>(Lcom/android/gallery3d/app/Gallery;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    .line 162
    if-eqz p1, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 167
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/app/Gallery;->setMenuKey(Z)V

    .line 168
    return-void

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/Gallery;->initializeByIntent()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 488
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 489
    const-string v3, "Gallery"

    const-string v4, "enter onDestroy()"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-boolean v3, p0, Lcom/android/gallery3d/app/Gallery;->safeboxalbum:Z

    if-eqz v3, :cond_1

    .line 491
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "notifySecureServer"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 495
    .local v0, notifyMethod:Ljava/lang/reflect/Method;
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "release"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 497
    .local v1, releaseMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 498
    iget-object v3, p0, Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v3, "Gallery"

    const-string v4, "onDestroy notifySecureServer LONGIN_OFF = 0"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    if-eqz v1, :cond_1

    .line 502
    iget-object v3, p0, Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .end local v0           #notifyMethod:Ljava/lang/reflect/Method;
    .end local v1           #releaseMethod:Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 507
    .local v2, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    iget-object v3, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 513
    iget-object v3, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 515
    :cond_2
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 518
    return-void

    .line 512
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 513
    iget-object v4, p0, Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v4}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 515
    :cond_3
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v3
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 472
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 473
    iget-object v2, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 476
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CameraLaunched"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mBackPressed:Z

    if-nez v2, :cond_1

    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 479
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCameraModeHandler()Landroid/os/Handler;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_1

    .line 481
    const v2, 0xe969

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #handler:Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->filesafebox:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/Gallery;->safeboxalbum:Z

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 459
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 463
    :cond_1
    return-void

    .line 457
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pickSafeAlbum()V
    .locals 17

    .prologue
    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 658
    .local v8, intent:Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v6, data:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 660
    .local v7, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 661
    .local v14, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, contentType:Ljava/lang/String;
    invoke-virtual {v7, v14, v5}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    .line 663
    .local v10, itemPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v7, v10}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 664
    .local v3, albumPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "save_path"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 665
    .local v12, mSavePath:Ljava/lang/String;
    const-string v15, "media-item-path"

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v6}, Lcom/android/gallery3d/app/Gallery;->getBundle(Landroid/content/Intent;Lcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 668
    const/4 v9, 0x0

    .line 669
    .local v9, is_filepath:Z
    const-string v15, "SingleItemOnly"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 671
    .local v13, singleItem:Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v15, "secure"

    invoke-static {v15}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 674
    .local v4, baseuri:Landroid/net/Uri;
    sget-object v15, Lcom/android/gallery3d/data/LocalImage;->ITEM_SECURE_PATH:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/app/Gallery;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 675
    const-string v1, "/local/image/secure/"

    .line 676
    .local v1, AlbumPath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/app/Gallery;->getBucketId(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    .line 677
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/Gallery;->mItemPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, UitemPath:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    if-nez v13, :cond_0

    if-eqz v1, :cond_0

    .line 681
    const-string v15, "media-set-path"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    const-string v15, "media-item-path"

    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v9, 0x1

    .line 688
    .end local v2           #UitemPath:Ljava/lang/String;
    :cond_1
    if-nez v9, :cond_2

    .line 689
    const-string v15, "media-item-path"

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_2
    const-string v15, "treat-back-as-up"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 692
    const-string v15, "treat-back-as-up"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 694
    :cond_3
    const-string v15, "save_path"

    invoke-virtual {v6, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v15

    const-class v16, Lcom/android/gallery3d/app/PhotoPage;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 696
    return-void
.end method

.method public pickSefeBox()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 646
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->sendScannerBroadcast(Landroid/content/Context;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 648
    .local v0, dm:Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 649
    .local v1, secureData:Landroid/os/Bundle;
    const-string v2, "secure-path"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 650
    const-string v2, "type-bits"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 651
    const-string v2, "media-path"

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 653
    return-void
.end method

.method public setBrightness(IZ)V
    .locals 5
    .parameter "brightness"
    .parameter "oncreate"

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 744
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getBrightness()I

    move-result v1

    .line 745
    .local v1, mCurrBrightness:I
    if-lt p1, v1, :cond_0

    const/4 v2, 0x1

    .line 747
    .local v2, setting:Z
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    .line 748
    int-to-float v3, p1

    iget v4, p0, Lcom/android/gallery3d/app/Gallery;->lightenessMax:F

    div-float/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 752
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 753
    return-void

    .line 745
    .end local v2           #setting:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 750
    .restart local v2       #setting:Z
    :cond_1
    const/high16 v3, -0x4080

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method

.method public setMenuKey(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 769
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 770
    .local v0, config:Landroid/view/ViewConfiguration;
    const-class v3, Landroid/view/ViewConfiguration;

    const-string v4, "sHasPermanentMenuKey"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 771
    .local v2, menuKeyField:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 772
    if-eqz p1, :cond_1

    .line 773
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 774
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 783
    .end local v0           #config:Landroid/view/ViewConfiguration;
    .end local v2           #menuKeyField:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 776
    .restart local v0       #config:Landroid/view/ViewConfiguration;
    .restart local v2       #menuKeyField:Ljava/lang/reflect/Field;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 777
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v0           #config:Landroid/view/ViewConfiguration;
    .end local v2           #menuKeyField:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 781
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Gallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    .line 202
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, data:Landroid/os/Bundle;
    const/4 v1, 0x1

    .line 206
    .local v1, typeBits:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/4 v1, 0x2

    .line 210
    :cond_0
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 217
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 218
    iget-object v2, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 221
    :cond_1
    return-void
.end method

.method public startSlideShow(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 269
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 270
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 271
    .local v2, path:Lcom/android/gallery3d/data/Path;
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v3, v3, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_1

    .line 273
    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 276
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "media-set-path"

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v3, "random-order"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    const-string v3, "repeat"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    const-string v3, "dream"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    const-string v3, "dream"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 284
    return-void
.end method
