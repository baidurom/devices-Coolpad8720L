.class Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$2;
.super Ljava/lang/Object;
.source "TouchProtectScreen.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 261
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    float-to-double v0, v3

    .line 268
    .local v0, distance:D
    const-string v3, "TouchProtectScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged start distance == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    const-wide/high16 v4, 0x4014

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v3, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    .line 272
    const-string v2, "TouchProtectScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSensorBeCovered == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 274
    return-void
.end method
