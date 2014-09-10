.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final FEEDBACK:I = 0x3

.field public static final NOTIFY:I = 0x2

.field public static final RING:I = 0x1

.field public static final YLTEST:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public cpVibratorSetLevel(I)Z
    .locals 1
    .parameter "vibratorLevel"

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public abstract hasVibrator()Z
.end method

.method public setYLVibrate(IJ)V
    .locals 0
    .parameter "type"
    .parameter "milliseconds"

    .prologue
    .line 132
    return-void
.end method

.method public setYLVibrate(I[JI)V
    .locals 0
    .parameter "type"
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 144
    return-void
.end method

.method public abstract vibrate(ILjava/lang/String;J)V
.end method

.method public abstract vibrate(ILjava/lang/String;[JI)V
.end method

.method public abstract vibrate(J)V
.end method

.method public abstract vibrate([JI)V
.end method
