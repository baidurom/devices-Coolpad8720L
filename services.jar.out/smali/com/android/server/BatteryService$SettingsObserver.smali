.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1148
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1149
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 1150
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 1210
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isSettingsChanged()V
    .locals 3

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "yulong_breath_light_charging"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/server/BatteryService;->ylBreathLightCharging:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2102(Lcom/android/server/BatteryService;Z)Z

    .line 1198
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "yulong_breath_light_notify"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/server/BatteryService;->ylBreathLightNotify:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1902(Lcom/android/server/BatteryService;Z)Z

    .line 1199
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "yulong_breath_light_lowpower"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/server/BatteryService;->ylBreathLightLowpower:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2202(Lcom/android/server/BatteryService;Z)Z

    .line 1201
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "kavass_forbid_led"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/BatteryService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/BatteryService;->ylBreathLightDisturb:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;I)I

    .line 1204
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "savepower_adjust_cpu"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/BatteryService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/BatteryService;->enableAdjustCpuValue:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$3102(Lcom/android/server/BatteryService;I)I

    .line 1205
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "savepower_lowbattery_level"

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/android/server/BatteryService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/BatteryService;->lowBatteryValue:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$3202(Lcom/android/server/BatteryService;I)I

    .line 1207
    return-void
.end method

.method private updateSettings()V
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1189
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver;->isSettingsChanged()V

    .line 1190
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1192
    return-void

    .line 1190
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method RegisterObserverAndUpdateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1155
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_charging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_lowpower"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1165
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "kavass_forbid_led"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1170
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "savepower_adjust_cpu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1173
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "savepower_lowbattery_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1178
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver;->updateSettings()V

    .line 1179
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver;->updateSettings()V

    .line 1185
    return-void
.end method
