.class public interface abstract Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;
.super Ljava/lang/Object;
.source "AutoTestBroadCastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/autoTest/AutoTestBroadCastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCameraPickerClicked(I)V
.end method

.method public abstract onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
.end method

.method public abstract onShutterButtonFocus(Z)V
.end method
