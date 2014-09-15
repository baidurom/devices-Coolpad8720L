.class public interface abstract Lcom/android/camera/CameraModule;
.super Ljava/lang/Object;
.source "CameraModule.java"


# virtual methods
.method public abstract CoverStateChange(Z)V
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract getModuleHandler()Landroid/os/Handler;
.end method

.method public abstract getPreviewSize()Landroid/hardware/Camera$Size;
.end method

.method public abstract hideGpsOnScreenIndicator()V
.end method

.method public abstract init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V
.end method

.method public abstract installIntentFilter()V
.end method

.method public abstract isCanGotoGallery()Z
.end method

.method public abstract isCaptureIntent()Z
.end method

.method public abstract isModuleIdle()Z
.end method

.method public abstract needsSwitcher()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCaptureTextureCopied()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onMenuHide()V
.end method

.method public abstract onMenuShowed()V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onPauseAfterSuper()V
.end method

.method public abstract onPauseBeforeSuper()V
.end method

.method public abstract onPreviewTextureCopied()V
.end method

.method public abstract onResumeAfterSuper()V
.end method

.method public abstract onResumeBeforeSuper()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onStop()V
.end method

.method public abstract setFocusRect(IIII)V
.end method

.method public abstract showGpsOnScreenIndicator(Z)V
.end method

.method public abstract updateCameraAppView()V
.end method
