.class public Lcom/android/camera/CameraDialogActivity;
.super Landroid/app/Activity;
.source "CameraDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBackPressed:Z

.field mCameraDialog:Landroid/app/Dialog;

.field mDialogButton:Landroid/widget/Button;

.field mDialogView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraDialogActivity;->mBackPressed:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "CameraDialogActivity"

    const-string v1, "-------onBackPressed()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraDialogActivity;->mBackPressed:Z

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 109
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100021

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraDialogActivity;->mBackPressed:Z

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/CameraDialogActivity;->showDialog()V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 123
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iput-boolean v0, p0, Lcom/android/camera/CameraDialogActivity;->mBackPressed:Z

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 130
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    iget-boolean v2, p0, Lcom/android/camera/CameraDialogActivity;->mBackPressed:Z

    if-nez v2, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 51
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getCameraModeHandler()Landroid/os/Handler;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    const v2, 0xe969

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    .end local v1           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraDialogActivity;->mBackPressed:Z

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    return-void
.end method

.method showDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 81
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mDialogView:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mDialogView:Landroid/view/View;

    const v2, 0x7f100021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mDialogButton:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mDialogButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    .line 87
    iget-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/camera/CameraDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraDialogActivity$1;-><init>(Lcom/android/camera/CameraDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 100
    iget-object v1, p0, Lcom/android/camera/CameraDialogActivity;->mCameraDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/camera/CameraDialogActivity;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 101
    return-void
.end method
