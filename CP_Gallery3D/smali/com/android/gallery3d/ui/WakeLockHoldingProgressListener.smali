.class public Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;
.super Ljava/lang/Object;
.source "WakeLockHoldingProgressListener.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V
    .locals 3
    .parameter "galleryActivity"
    .parameter "label"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 36
    iget-object v1, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    iget-object v1, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getActivity()Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .parameter "confirmed"

    .prologue
    .line 63
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 46
    return-void
.end method

.method public onProgressStart()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 51
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 59
    return-void
.end method
