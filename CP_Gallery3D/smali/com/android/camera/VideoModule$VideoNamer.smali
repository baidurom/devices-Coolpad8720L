.class Lcom/android/camera/VideoModule$VideoNamer;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoNamer"
.end annotation


# instance fields
.field private mOwer:Lcom/android/camera/CameraActivity;

.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 4217
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4218
    iput-object p1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mOwer:Lcom/android/camera/CameraActivity;

    .line 4219
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 4220
    return-void
.end method

.method private cleanOldUri()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4284
    iget-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 4287
    :goto_0
    return-void

    .line 4285
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4286
    iput-object v2, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 3

    .prologue
    .line 4275
    const-string v1, "content://media/external/video/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4276
    .local v0, videoTable:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mOwer:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mIsSecuredBoxMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mOwer:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mIsVideoSupportSecureBoxMode:Z

    if-eqz v1, :cond_0

    .line 4277
    const-string v1, "secure"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4279
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoModule$VideoNamer;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    .line 4280
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 4269
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mStop:Z

    .line 4270
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4271
    monitor-exit p0

    return-void

    .line 4269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 4234
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4236
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4237
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4241
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;

    .line 4242
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4243
    monitor-exit p0

    return-object v0

    .line 4234
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "resolver"
    .parameter "values"

    .prologue
    .line 4225
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z

    .line 4226
    iput-object p1, p0, Lcom/android/camera/VideoModule$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    .line 4227
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mValues:Landroid/content/ContentValues;

    .line 4228
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4229
    monitor-exit p0

    return-void

    .line 4225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 4250
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 4264
    invoke-direct {p0}, Lcom/android/camera/VideoModule$VideoNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4265
    monitor-exit p0

    return-void

    .line 4251
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4253
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4254
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4259
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule$VideoNamer;->cleanOldUri()V

    .line 4260
    invoke-direct {p0}, Lcom/android/camera/VideoModule$VideoNamer;->generateUri()V

    .line 4261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule$VideoNamer;->mRequestPending:Z

    .line 4262
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
