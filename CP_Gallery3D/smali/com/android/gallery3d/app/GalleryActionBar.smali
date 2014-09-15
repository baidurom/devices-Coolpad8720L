.class public Lcom/android/gallery3d/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;,
        Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;,
        Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;,
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

.field private static final sClusterItemsVideo:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;


# instance fields
.field private isVideo:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

.field private mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

.field private mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastAlbumModeSelected:I

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareIntent:Landroid/content/Intent;

.field private mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharePanoramaIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 100
    new-array v11, v13, [Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0e00f8

    const v5, 0x7f0e00ae

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0e00fa

    const v9, 0x7f0e00c4

    const v10, 0x7f0e00a9

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0e00f9

    const v9, 0x7f0e00c3

    const v10, 0x7f0e00ab

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/4 v5, 0x5

    const v8, 0x7f0e00fb

    const v9, 0x7f0e00fb

    const v10, 0x7f0e00aa

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v14

    sput-object v11, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 114
    new-array v11, v14, [Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0e006e

    const v5, 0x7f0e00ae

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0e00fa

    const v9, 0x7f0e00c4

    const v10, 0x7f0e00a9

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0e00f9

    const v9, 0x7f0e00c3

    const v10, 0x7f0e00ab

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    sput-object v11, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItemsVideo:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    .line 65
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->isVideo:Z

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mDialog:Landroid/app/AlertDialog;

    .line 217
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 218
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 219
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 221
    iput v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 224
    return-void
.end method

.method static synthetic access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/GalleryActionBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->isVideo:Z

    return v0
.end method

.method static synthetic access$400()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItemsVideo:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public static getClusterByTypeString(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "video"

    .prologue
    .line 203
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 205
    .local v0, ClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    if-eqz p2, :cond_0

    .line 206
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItemsVideo:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 208
    :cond_0
    move-object v1, v0

    .local v1, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v1, v2

    .line 209
    .local v3, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v5, v3, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v5, p1, :cond_1

    .line 210
    iget v5, v3, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->clusterBy:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .end local v3           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :goto_1
    return-object v5

    .line 208
    .restart local v3       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v3           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 405
    :cond_0
    return-void
.end method

.method public createActionBarMenu(ILandroid/view/Menu;)V
    .locals 3
    .parameter "menuRes"
    .parameter "menu"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 462
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    .line 464
    const v1, 0x7f10017e

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 465
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    .line 468
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    const-string v2, "panorama_share_history.xml"

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 473
    :cond_0
    const v1, 0x7f10017c

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 477
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v2, "share_history.xml"

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 481
    :cond_1
    return-void
.end method

.method public disableAlbumModeMenu(Z)V
    .locals 2
    .parameter "hideMenu"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public disableClusterMenu(Z)V
    .locals 2
    .parameter "hideMenu"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 300
    :cond_0
    return-void
.end method

.method public dismissClusterDialog()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mDialog:Landroid/app/AlertDialog;

    .line 364
    :cond_0
    return-void
.end method

.method public enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V
    .locals 0
    .parameter "selected"
    .parameter "listener"

    .prologue
    .line 327
    return-void
.end method

.method public enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 2
    .parameter "action"
    .parameter "runner"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->isVideo:Z

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->setSelectedAction(I)Z

    .line 286
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 288
    :cond_0
    return-void
.end method

.method public getClusterTypeAction()I
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    iget v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 401
    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 305
    .local v0, listener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
    iget v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mLastAlbumModeSelected:I

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 307
    .end local v0           #listener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 431
    iget v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v0, :cond_2

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;->onAlbumModeSelected(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 451
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 440
    :cond_3
    :try_start_1
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 441
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    const-string v2, "click"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 445
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0

    .line 442
    :cond_5
    :try_start_2
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "time"

    const-string v2, "click"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 409
    :cond_0
    return-void
.end method

.method public setClusterItemEnabled(IZ)V
    .locals 6
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 248
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 249
    .local v0, ClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->isVideo:Z

    if-eqz v5, :cond_0

    .line 250
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItemsVideo:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 252
    :cond_0
    move-object v1, v0

    .local v1, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 253
    .local v3, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v5, v3, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v5, p1, :cond_2

    .line 254
    iput-boolean p2, v3, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 258
    .end local v3           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    return-void

    .line 252
    .restart local v3       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setClusterItemVisibility(IZ)V
    .locals 6
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 261
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 262
    .local v0, ClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->isVideo:Z

    if-eqz v5, :cond_0

    .line 263
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItemsVideo:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 265
    :cond_0
    move-object v1, v0

    .local v1, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 266
    .local v3, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v5, v3, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v5, p1, :cond_2

    .line 267
    iput-boolean p2, v3, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    .line 271
    .end local v3           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    return-void

    .line 265
    .restart local v3       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDisplayOptions(ZZ)V
    .locals 3
    .parameter "displayHomeAsUp"
    .parameter "showTitle"

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, options:I
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 374
    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 378
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setSelectedAction(I)Z
    .locals 6
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v5, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v4

    .line 413
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 414
    .local v0, ClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget-boolean v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->isVideo:Z

    if-eqz v5, :cond_2

    .line 415
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItemsVideo:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .line 418
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v0

    .local v3, n:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 419
    sget-object v5, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v2, v5, v1

    .line 420
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v5, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v5, p1, :cond_3

    .line 421
    iget-object v4, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 422
    iput v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 423
    const/4 v4, 0x1

    goto :goto_0

    .line 418
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setShareIntents(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1
    .parameter "sharePanoramaIntent"
    .parameter "shareIntent"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaIntent:Landroid/content/Intent;

    .line 489
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 492
    :cond_0
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareIntent:Landroid/content/Intent;

    .line 493
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 496
    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 393
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 397
    :cond_0
    return-void
.end method
