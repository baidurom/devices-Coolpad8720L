.class Lcom/android/camera/CameraDialogActivity$1;
.super Ljava/lang/Object;
.source "CameraDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraDialogActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/CameraDialogActivity$1;->this$0:Lcom/android/camera/CameraDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/CameraDialogActivity$1;->this$0:Lcom/android/camera/CameraDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/camera/CameraDialogActivity$1;->this$0:Lcom/android/camera/CameraDialogActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/CameraDialogActivity;->mBackPressed:Z

    .line 95
    iget-object v0, p0, Lcom/android/camera/CameraDialogActivity$1;->this$0:Lcom/android/camera/CameraDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 97
    :cond_0
    return-void
.end method
