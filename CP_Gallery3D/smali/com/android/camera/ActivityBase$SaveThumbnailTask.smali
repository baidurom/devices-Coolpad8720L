.class Lcom/android/camera/ActivityBase$SaveThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/camera/ActivityBase$SaveThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$SaveThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 766
    check-cast p1, [Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$SaveThumbnailTask;->doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 769
    iget-object v4, p0, Lcom/android/camera/ActivityBase$SaveThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v5, v4, Lcom/android/camera/ActivityBase;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v5

    .line 770
    :try_start_0
    array-length v2, p1

    .line 771
    .local v2, n:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getCameraStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, thumbNailPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, filedes:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 775
    aget-object v4, p1, v1

    invoke-virtual {v4, v0}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    :cond_0
    monitor-exit v5

    .line 778
    const/4 v4, 0x0

    return-object v4

    .line 777
    .end local v0           #filedes:Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #thumbNailPath:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
