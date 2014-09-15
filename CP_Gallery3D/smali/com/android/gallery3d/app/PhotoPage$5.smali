.class Lcom/android/gallery3d/app/PhotoPage$5;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->doHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "message"

    .prologue
    .line 553
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 712
    :pswitch_0
    new-instance v10, Ljava/lang/AssertionError;

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(I)V

    throw v10

    .line 555
    :pswitch_1
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->hideBars()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1000(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 714
    :cond_0
    :goto_0
    :pswitch_2
    return-void

    .line 559
    :pswitch_3
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/PhotoPage;->pickSefeBox()V

    goto :goto_0

    .line 571
    :pswitch_4
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v11

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/gallery3d/app/AppBridge;->onFullScreenChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 575
    :pswitch_5
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 579
    :pswitch_6
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->wantBars()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 583
    :pswitch_7
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v10, v10, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    goto :goto_0

    .line 587
    :pswitch_8
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 588
    .local v4, nextUpdate:J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_2

    .line 589
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v11, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$1502(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 590
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1600(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xe

    invoke-virtual {v10, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 597
    .end local v4           #nextUpdate:J
    :pswitch_9
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v11, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$1702(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 598
    const/4 v9, 0x0

    .line 599
    .local v9, stayedOnCamera:Z
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v10

    if-nez v10, :cond_3

    .line 600
    const/4 v9, 0x1

    .line 610
    :goto_2
    if-eqz v9, :cond_0

    .line 611
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v10

    if-nez v10, :cond_6

    .line 613
    const-string v10, "PhotoPage"

    const-string v11, "stayedOnCamera launchCamera() >>>>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$2000(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 619
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto/16 :goto_0

    .line 601
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v12}, Lcom/android/gallery3d/app/PhotoPage;->access$1800(Lcom/android/gallery3d/app/PhotoPage;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 604
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto :goto_2

    .line 606
    :cond_4
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 607
    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    .line 621
    :cond_6
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 622
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v11}, Lcom/android/gallery3d/app/PhotoPage;->access$2100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 628
    .end local v9           #stayedOnCamera:Z
    :pswitch_a
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v10

    const v11, 0x8000

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 630
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto/16 :goto_0

    .line 635
    :pswitch_b
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    .line 636
    .local v7, photo:Lcom/android/gallery3d/data/MediaItem;
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v11, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;

    .line 637
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v10, v7}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 641
    .end local v7           #photo:Lcom/android/gallery3d/data/MediaItem;
    :pswitch_c
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$1600(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 645
    :pswitch_d
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 649
    :pswitch_e
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v10, v11, :cond_0

    .line 650
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_8

    const/4 v1, 0x1

    .line 651
    .local v1, isPanorama360:Z
    :goto_3
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 652
    .local v0, contentUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 653
    .local v6, panoramaIntent:Landroid/content/Intent;
    if-eqz v1, :cond_7

    .line 654
    #calls: Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2400(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    .line 656
    :cond_7
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    #calls: Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$2500(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v8

    .line 658
    .local v8, shareIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v10

    invoke-virtual {v10, v6, v8}, Lcom/android/gallery3d/app/GalleryActionBar;->setShareIntents(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 659
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V
    invoke-static {v10, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2600(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 650
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #isPanorama360:Z
    .end local v6           #panoramaIntent:Landroid/content/Intent;
    .end local v8           #shareIntent:Landroid/content/Intent;
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 664
    :pswitch_f
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v10, v11, :cond_0

    .line 665
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_9

    const/4 v1, 0x1

    .line 666
    .restart local v1       #isPanorama360:Z
    :goto_4
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V
    invoke-static {v10, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2700(Lcom/android/gallery3d/app/PhotoPage;Z)V

    goto/16 :goto_0

    .line 665
    .end local v1           #isPanorama360:Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 671
    :pswitch_10
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->savePicToCollect()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$2800(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 675
    :pswitch_11
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSavePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/gallery3d/app/PhotoPage;->access$2900(Lcom/android/gallery3d/app/PhotoPage;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/gallery3d/app/PhotoPage;->dosavefile(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :pswitch_12
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->movePicToSecureBox()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3100(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 683
    :pswitch_13
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->removePicFromSecureBox()V
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3200(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 687
    :pswitch_14
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v11, 0x1

    #calls: Lcom/android/gallery3d/app/PhotoPage;->managePrivateModel(Z)V
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$3300(Lcom/android/gallery3d/app/PhotoPage;Z)V

    goto/16 :goto_0

    .line 691
    :pswitch_15
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v11, 0x0

    #calls: Lcom/android/gallery3d/app/PhotoPage;->managePrivateModel(Z)V
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$3300(Lcom/android/gallery3d/app/PhotoPage;Z)V

    goto/16 :goto_0

    .line 695
    :pswitch_16
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 696
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MoreMenuListView;

    move-result-object v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    new-instance v11, Lcom/android/gallery3d/ui/MoreMenuListView;

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v12, v12, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v11, v12}, Lcom/android/gallery3d/ui/MoreMenuListView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/PhotoPage;->access$3502(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/MoreMenuListView;)Lcom/android/gallery3d/ui/MoreMenuListView;

    .line 698
    :cond_a
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->getMoreMenuListArray()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3600(Lcom/android/gallery3d/app/PhotoPage;)Ljava/util/ArrayList;

    move-result-object v3

    .line 699
    .local v3, moreMenuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->getMoreMenuList(Ljava/util/ArrayList;)Ljava/util/List;
    invoke-static {v10, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$3700(Lcom/android/gallery3d/app/PhotoPage;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 700
    .local v2, mapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v2, :cond_0

    .line 701
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MoreMenuListView;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/gallery3d/ui/MoreMenuListView;->initialize(Ljava/util/List;)V

    .line 702
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MoreMenuListView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/gallery3d/app/PhotoPage;->access$3800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->moveX()I
    invoke-static {v12}, Lcom/android/gallery3d/app/PhotoPage;->access$3900(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/gallery3d/ui/MoreMenuListView;->show(Landroid/widget/LinearLayout;II)V

    .line 703
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MoreMenuListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/MoreMenuListView;->getMoreMenuListView()Lcom/android/gallery3d/ui/GeneralListView;

    move-result-object v10

    new-instance v11, Lcom/android/gallery3d/app/PhotoPage$5$1;

    invoke-direct {v11, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$5$1;-><init>(Lcom/android/gallery3d/app/PhotoPage$5;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_3
    .end packed-switch
.end method
