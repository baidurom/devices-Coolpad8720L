.class public interface abstract Lcom/android/camera/SelfCamera$Listener;
.super Ljava/lang/Object;
.source "SelfCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SelfCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract doCapture()V
.end method

.method public abstract registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V
.end method
