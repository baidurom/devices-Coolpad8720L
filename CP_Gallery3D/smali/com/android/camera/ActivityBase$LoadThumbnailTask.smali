.class Lcom/android/camera/ActivityBase$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;Z)V
    .locals 0
    .parameter
    .parameter "lookAtCache"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 684
    iput-boolean p2, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    .line 685
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 690
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 691
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getCameraStoragePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    .local v5, thumbNailPath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 693
    .local v4, t:Lcom/android/camera/Thumbnail;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v1, filedes:Ljava/io/File;
    iget-boolean v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v8, :cond_0

    .line 695
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v8, v8, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v8, :cond_2

    .line 696
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v9, v9, Lcom/android/camera/ActivityBase;->mbImage:Z

    invoke-static {v8, v2, v9}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;Z)Lcom/android/camera/Thumbnail;

    move-result-object v4

    .line 700
    :goto_0
    if-eqz v4, :cond_0

    .line 701
    invoke-virtual {v4}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 702
    .local v6, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iput-object v6, v8, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    .line 703
    const-string v8, "ActivityBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LoadThumbnailTask uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    #getter for: Lcom/android/camera/ActivityBase;->mPause:Z
    invoke-static {v8}, Lcom/android/camera/ActivityBase;->access$300(Lcom/android/camera/ActivityBase;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 705
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v8, v6}, Lcom/android/camera/Util;->startCameraService(Landroid/content/Context;Landroid/net/Uri;)V

    .line 710
    .end local v6           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v4, v7

    .line 732
    .end local v4           #t:Lcom/android/camera/Thumbnail;
    :cond_1
    :goto_1
    return-object v4

    .line 698
    .restart local v4       #t:Lcom/android/camera/Thumbnail;
    :cond_2
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v8, v8, Lcom/android/camera/ActivityBase;->mbImage:Z

    invoke-static {v1, v2, v8}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;Z)Lcom/android/camera/Thumbnail;

    move-result-object v4

    goto :goto_0

    .line 712
    :cond_3
    if-nez v4, :cond_1

    .line 713
    new-array v3, v11, [Lcom/android/camera/Thumbnail;

    .line 715
    .local v3, result:[Lcom/android/camera/Thumbnail;
    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v8, v8, Lcom/android/camera/ActivityBase;->mbImage:Z

    invoke-static {v2, v3, v8}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Z)I

    move-result v0

    .line 717
    .local v0, code:I
    if-eq v0, v11, :cond_4

    iget-object v8, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v8, v8, Lcom/android/camera/ActivityBase;->mbImage:Z

    if-nez v8, :cond_4

    .line 718
    invoke-static {v2, v3, v11}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Z)I

    move-result v0

    .line 722
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v4, v7

    .line 726
    goto :goto_1

    .line 724
    :pswitch_1
    const/4 v7, 0x0

    aget-object v4, v3, v7

    goto :goto_1

    .line 728
    :pswitch_2
    invoke-virtual {p0, v11}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-object v4, v7

    .line 729
    goto :goto_1

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 737
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iput-object p1, v0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 739
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v1, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->updateThumbnailView(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
