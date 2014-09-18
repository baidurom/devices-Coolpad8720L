.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1098
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1099
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1102
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1103
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 91
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method public run()V
    .locals 142

    .prologue
    .line 97
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 100
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 102
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 105
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 106
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 110
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v115

    .line 112
    .local v115, shutdownAction:Ljava/lang/String;
    if-eqz v115, :cond_0

    invoke-virtual/range {v115 .. v115}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 113
    const/4 v7, 0x0

    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_10

    const/16 v109, 0x1

    .line 116
    .local v109, reboot:Z
    :goto_0
    invoke-virtual/range {v115 .. v115}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_11

    .line 117
    const/4 v7, 0x1

    invoke-virtual/range {v115 .. v115}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v115

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v108

    .line 122
    .local v108, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v109

    move-object/from16 v1, v108

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 126
    .end local v108           #reason:Ljava/lang/String;
    .end local v109           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 127
    .local v85, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v85

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v84, 0x0

    .line 129
    .local v84, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 131
    .local v33, headless:Z
    const/16 v90, 0x0

    .line 132
    .local v90, installer:Lcom/android/server/pm/Installer;
    const/16 v59, 0x0

    .line 133
    .local v59, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v72, 0x0

    .line 134
    .local v72, contentService:Lcom/android/server/content/ContentService;
    const/16 v92, 0x0

    .line 135
    .local v92, lights:Lcom/android/server/LightsService;
    const/16 v107, 0x0

    .line 136
    .local v107, power:Lcom/android/server/power/PowerManagerService;
    const/16 v78, 0x0

    .line 137
    .local v78, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v64, 0x0

    .line 138
    .local v64, battery:Lcom/android/server/BatteryService;
    const/16 v131, 0x0

    .line 139
    .local v131, vibrator:Lcom/android/server/VibratorService;
    const/16 v61, 0x0

    .line 140
    .local v61, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v98, 0x0

    .line 141
    .local v98, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 142
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 143
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v100, 0x0

    .line 144
    .local v100, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v70, 0x0

    .line 145
    .local v70, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v138, 0x0

    .line 146
    .local v138, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v136, 0x0

    .line 147
    .local v136, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v114, 0x0

    .line 148
    .local v114, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v106, 0x0

    .line 149
    .local v106, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 150
    .local v5, context:Landroid/content/Context;
    const/16 v140, 0x0

    .line 151
    .local v140, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v65, 0x0

    .line 152
    .local v65, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v79, 0x0

    .line 153
    .local v79, dock:Lcom/android/server/DockObserver;
    const/16 v129, 0x0

    .line 154
    .local v129, usb:Lcom/android/server/usb/UsbService;
    const/16 v112, 0x0

    .line 155
    .local v112, serial:Lcom/android/server/SerialService;
    const/16 v123, 0x0

    .line 156
    .local v123, twilight:Lcom/android/server/TwilightService;
    const/16 v126, 0x0

    .line 157
    .local v126, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v110, 0x0

    .line 158
    .local v110, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v102, 0x0

    .line 159
    .local v102, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v67, 0x0

    .line 160
    .local v67, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v89, 0x0

    .line 161
    .local v89, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v119, 0x0

    .line 167
    .local v119, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v128, 0x0

    .line 168
    .local v128, uitechnoObject:Ljava/lang/Object;
    const/16 v118, 0x0

    .line 176
    .local v118, systemInterObject:Ljava/lang/Object;
    new-instance v125, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v125

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 177
    .local v125, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v125 .. v125}, Ljava/lang/Thread;->start()V

    .line 178
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v125 .. v125}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    new-instance v141, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v141

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 197
    .local v141, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v141 .. v141}, Ljava/lang/Thread;->start()V

    .line 198
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v141 .. v141}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    const/16 v24, 0x0

    .line 221
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v91, Lcom/android/server/pm/Installer;

    invoke-direct/range {v91 .. v91}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_50

    .line 223
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .local v91, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/pm/Installer;->ping()Z

    .line 225
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_51

    .line 227
    .end local v107           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 229
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static/range {v84 .. v84}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 232
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_52

    .line 234
    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 236
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v120, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_53

    .line 238
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v120, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 244
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 247
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 254
    .local v75, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v75

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 255
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v24, 0x1

    .line 262
    :cond_2
    :goto_3
    if-eqz v84, :cond_14

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v91

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v106

    .line 265
    const/16 v86, 0x0

    .line 267
    .local v86, firstBoot:Z
    :try_start_5
    invoke-interface/range {v106 .. v106}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v86

    .line 271
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 273
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 275
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 280
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 284
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v60, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 286
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v60, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_8
    const-string v7, "account"

    move-object/from16 v0, v60

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5a
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_54

    move-object/from16 v59, v60

    .line 291
    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_6
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v7, 0x1

    move/from16 v0, v84

    if-ne v0, v7, :cond_15

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v72

    .line 295
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 298
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 301
    .end local v92           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_55

    .line 303
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 305
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v132, Lcom/android/server/VibratorService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_56

    .line 307
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .local v132, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v7, "vibrator"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 311
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 314
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_57

    .line 316
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 318
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 322
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_58

    .line 325
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_16

    const/16 v22, 0x1

    :goto_8
    if-nez v86, :cond_17

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v140

    .line 330
    const-string v7, "window"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 333
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v140

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 335
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 336
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 338
    move-object/from16 v0, v140

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 339
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 352
    const-string v7, "SystemServer"

    const-string v9, "SystemInterface Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {v5}, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl_init(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v118

    .line 356
    const/4 v7, 0x0

    move-object/from16 v0, v118

    invoke-static {v0, v7}, Lcom/yulong/android/reflect/YLReflect;->mSystemInterface_setMode(Ljava/lang/Object;Z)Z

    .line 359
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v7

    check-cast v118, Landroid/os/IBinder;

    .end local v118           #systemInterObject:Ljava/lang/Object;
    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 366
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 367
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    :goto_a
    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v131, v132

    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .line 384
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    const/16 v76, 0x0

    .line 385
    .local v76, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v116, 0x0

    .line 386
    .local v116, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v87, 0x0

    .line 387
    .local v87, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v62, 0x0

    .line 388
    .local v62, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v104, 0x0

    .line 389
    .local v104, notification:Lcom/android/server/NotificationManagerService;
    const/16 v134, 0x0

    .line 390
    .local v134, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v93, 0x0

    .line 391
    .local v93, location:Lcom/android/server/LocationManagerService;
    const/16 v73, 0x0

    .line 392
    .local v73, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v121, 0x0

    .line 393
    .local v121, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v95, 0x0

    .line 394
    .local v95, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v81, 0x0

    .line 397
    .local v81, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_3

    .line 399
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v88, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v88

    move-object/from16 v1, v140

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 401
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .local v88, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_10
    const-string v7, "input_method"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4f

    move-object/from16 v87, v88

    .line 407
    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    .line 416
    :cond_3
    :goto_d
    :try_start_12
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    .line 422
    :goto_e
    :try_start_13
    invoke-interface/range {v106 .. v106}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 428
    :goto_f
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x104040e

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4e

    .line 435
    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v84

    if-eq v0, v7, :cond_1c

    .line 436
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 442
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v99, Lcom/android/server/MountService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    .line 444
    .end local v98           #mountService:Lcom/android/server/MountService;
    .local v99, mountService:Lcom/android/server/MountService;
    :try_start_16
    const-string v7, "mount"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4d

    move-object/from16 v98, v99

    .line 451
    .end local v99           #mountService:Lcom/android/server/MountService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_11
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v96, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v96

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8

    .line 453
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v96, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_18
    const-string v7, "lock_settings"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4c

    move-object/from16 v95, v96

    .line 459
    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_12
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v77, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9

    .line 461
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v77, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1a
    const-string v7, "device_policy"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4b

    move-object/from16 v76, v77

    .line 467
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v117, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v117

    move-object/from16 v1, v140

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    .line 469
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v117, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1c
    const-string v7, "statusbar"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4a

    move-object/from16 v116, v117

    .line 475
    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    .line 483
    :goto_15
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 485
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_c

    .line 491
    :goto_16
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v122, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_d

    .line 493
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v122, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_20
    const-string v7, "textservices"

    move-object/from16 v0, v122

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_49

    move-object/from16 v121, v122

    .line 499
    .end local v122           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v101, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v101

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_e

    .line 501
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v101, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_22
    const-string v7, "netstats"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_48

    move-object/from16 v29, v101

    .line 507
    .end local v101           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_f

    .line 511
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_24
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_47

    .line 517
    :goto_19
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v139, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_10

    .line 519
    .end local v138           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v139, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_26
    const-string v7, "wifip2p"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_46

    move-object/from16 v138, v139

    .line 525
    .end local v139           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v138       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v137, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_11

    .line 527
    .end local v136           #wifi:Lcom/android/server/wifi/WifiService;
    .local v137, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_28
    const-string v7, "wifi"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_45

    move-object/from16 v136, v137

    .line 533
    .end local v137           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v136       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_1b
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v71, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v71

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_12

    .line 536
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .local v71, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2a
    const-string v7, "connectivity"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 537
    move-object/from16 v0, v29

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 538
    move-object/from16 v0, v25

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 539
    invoke-virtual/range {v136 .. v136}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 540
    invoke-virtual/range {v138 .. v138}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_44

    move-object/from16 v70, v71

    .line 546
    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v114

    .line 548
    const-string v7, "servicediscovery"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_13

    .line 555
    :goto_1d
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_14

    .line 567
    :goto_1e
    if-eqz v98, :cond_5

    .line 568
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 572
    :cond_5
    if-eqz v59, :cond_6

    .line 573
    :try_start_2d
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_15

    .line 579
    :cond_6
    :goto_1f
    if-eqz v72, :cond_7

    .line 580
    :try_start_2e
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 586
    :cond_7
    :goto_20
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v105, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v116

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_17

    .line 588
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .local v105, notification:Lcom/android/server/NotificationManagerService;
    :try_start_30
    const-string v7, "notification"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 589
    move-object/from16 v0, v25

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_43

    move-object/from16 v104, v105

    .line 595
    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    :goto_21
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 603
    :goto_22
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v94, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 605
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .local v94, location:Lcom/android/server/LocationManagerService;
    :try_start_33
    const-string v7, "location"

    move-object/from16 v0, v94

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_42

    move-object/from16 v93, v94

    .line 611
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    :goto_23
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v74, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 613
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v74, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_35
    const-string v7, "country_detector"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_41

    move-object/from16 v73, v74

    .line 619
    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 627
    :goto_25
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1c

    .line 634
    :goto_26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 637
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-nez v33, :cond_8

    .line 639
    new-instance v135, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 640
    .end local v134           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v135, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_39
    const-string v7, "wallpaper"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_40

    move-object/from16 v134, v135

    .line 647
    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v134       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_8
    :goto_27
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 649
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 657
    :cond_9
    :goto_28
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v80, Lcom/android/server/DockObserver;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .end local v79           #dock:Lcom/android/server/DockObserver;
    .local v80, dock:Lcom/android/server/DockObserver;
    move-object/from16 v79, v80

    .line 665
    .end local v80           #dock:Lcom/android/server/DockObserver;
    .restart local v79       #dock:Lcom/android/server/DockObserver;
    :goto_29
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_20

    .line 684
    :goto_2a
    invoke-static {v5}, Lcom/yulong/android/reflect/YLReflect;->OneKeyMuteObserver_init(Landroid/content/Context;)Ljava/lang/Object;

    .line 688
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Uitechno Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {v5}, Lcom/yulong/android/reflect/YLReflect;->getUitechnoService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v128

    .line 691
    const-string v9, "uitechnoService"

    move-object/from16 v0, v128

    check-cast v0, Landroid/os/IBinder;

    move-object v7, v0

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 701
    .end local v128           #uitechnoObject:Ljava/lang/Object;
    :goto_2b
    invoke-static {v5}, Lcom/yulong/android/reflect/YLReflect;->startHallSensor(Landroid/content/Context;)V

    .line 707
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v130, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_22

    .line 710
    .end local v129           #usb:Lcom/android/server/usb/UsbService;
    .local v130, usb:Lcom/android/server/usb/UsbService;
    :try_start_3f
    const-string v7, "usb"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_3f

    move-object/from16 v129, v130

    .line 716
    .end local v130           #usb:Lcom/android/server/usb/UsbService;
    .restart local v129       #usb:Lcom/android/server/usb/UsbService;
    :goto_2c
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v113, Lcom/android/server/SerialService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_23

    .line 719
    .end local v112           #serial:Lcom/android/server/SerialService;
    .local v113, serial:Lcom/android/server/SerialService;
    :try_start_41
    const-string v7, "serial"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_3e

    move-object/from16 v112, v113

    .line 725
    .end local v113           #serial:Lcom/android/server/SerialService;
    .restart local v112       #serial:Lcom/android/server/SerialService;
    :goto_2d
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v124, Lcom/android/server/TwilightService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .end local v123           #twilight:Lcom/android/server/TwilightService;
    .local v124, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v123, v124

    .line 732
    .end local v124           #twilight:Lcom/android/server/TwilightService;
    .restart local v123       #twilight:Lcom/android/server/TwilightService;
    :goto_2e
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v127, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v127

    move-object/from16 v1, v123

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .end local v126           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v127, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v126, v127

    .line 740
    .end local v127           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v126       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2f
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 748
    :goto_30
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v63, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_27

    .line 750
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .local v63, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_46
    const-string v7, "appwidget"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_3d

    move-object/from16 v62, v63

    .line 756
    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_31
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v111, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .end local v110           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v111, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v110, v111

    .line 763
    .end local v111           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v110       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_32
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .line 774
    :goto_33
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .line 782
    :goto_34
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v103, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v103

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2b

    .end local v102           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v103, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v102, v103

    .line 789
    .end local v103           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v102       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_35
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v68, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2c

    .line 791
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v68, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4c
    const-string v7, "commontime_management"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_3c

    move-object/from16 v67, v68

    .line 797
    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_36
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 803
    :goto_37
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110042

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 806
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v82, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v82

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .line 809
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v82, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_4f
    const-string v7, "dreams"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_3b

    move-object/from16 v81, v82

    .line 819
    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_a
    :goto_38
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "BugReport Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v9, "bug_report"

    #invoke-static {v5}, Lcom/yulong/android/reflect/YLReflect;->BugReportService_init(Landroid/content/Context;)Ljava/lang/Object;

    #move-result-object v7

    #check-cast v7, Landroid/os/IBinder;

    #invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .line 827
    :goto_39
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 836
    :goto_3a
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 837
    .local v47, safeMode:Z
    if-eqz v47, :cond_1b

    .line 838
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 840
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 842
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 853
    :goto_3b
    if-eqz v128, :cond_b

    .line 855
    :try_start_52
    invoke-static/range {v128 .. v128}, Lcom/yulong/android/reflect/YLReflect;->uitechonoSystemReady(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 864
    :cond_b
    :goto_3c
    :try_start_53
    invoke-virtual/range {v131 .. v131}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 870
    :goto_3d
    :try_start_54
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .line 875
    :goto_3e
    if-eqz v76, :cond_c

    .line 877
    :try_start_55
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 883
    :cond_c
    :goto_3f
    if-eqz v104, :cond_d

    .line 885
    :try_start_56
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 892
    :cond_d
    :goto_40
    :try_start_57
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 897
    :goto_41
    if-eqz v47, :cond_e

    .line 898
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 904
    :cond_e
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v69

    .line 905
    .local v69, config:Landroid/content/res/Configuration;
    new-instance v97, Landroid/util/DisplayMetrics;

    invoke-direct/range {v97 .. v97}, Landroid/util/DisplayMetrics;-><init>()V

    .line 906
    .local v97, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/view/WindowManager;

    .line 907
    .local v133, w:Landroid/view/WindowManager;
    invoke-interface/range {v133 .. v133}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v97

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 908
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v69

    move-object/from16 v1, v97

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 911
    :try_start_58
    move-object/from16 v0, v123

    move-object/from16 v1, v81

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .line 917
    :goto_42
    :try_start_59
    invoke-interface/range {v106 .. v106}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .line 923
    :goto_43
    :try_start_5a
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 929
    :goto_44
    move-object/from16 v34, v5

    .line 930
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v98

    .line 931
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 932
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 933
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 934
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 935
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v70

    .line 936
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v79

    .line 937
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v129

    .line 938
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v123

    .line 939
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v126

    .line 940
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v62

    .line 941
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v134

    .line 942
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v87

    .line 943
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v110

    .line 944
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v93

    .line 945
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v73

    .line 946
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v102

    .line 947
    .local v53, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v67

    .line 948
    .local v54, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v121

    .line 949
    .local v55, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v116

    .line 950
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v81

    .line 951
    .local v56, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v19

    .line 952
    .local v57, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v58, v119

    .line 959
    .local v58, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v58}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1089
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1090
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_f
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1094
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 113
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v54           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v55           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v56           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v57           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v58           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v69           #config:Landroid/content/res/Configuration;
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v72           #contentService:Lcom/android/server/content/ContentService;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v79           #dock:Lcom/android/server/DockObserver;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v84           #factoryTest:I
    .end local v85           #factoryTestStr:Ljava/lang/String;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v98           #mountService:Lcom/android/server/MountService;
    .end local v102           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v106           #pm:Landroid/content/pm/IPackageManager;
    .end local v110           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v112           #serial:Lcom/android/server/SerialService;
    .end local v114           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v123           #twilight:Lcom/android/server/TwilightService;
    .end local v125           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v126           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v129           #usb:Lcom/android/server/usb/UsbService;
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .end local v133           #w:Landroid/view/WindowManager;
    .end local v134           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v136           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v138           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v140           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v141           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_10
    const/16 v109, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v109       #reboot:Z
    :cond_11
    const/16 v108, 0x0

    .restart local v108       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 127
    .end local v108           #reason:Ljava/lang/String;
    .end local v109           #reboot:Z
    .restart local v85       #factoryTestStr:Ljava/lang/String;
    :cond_12
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v84

    goto/16 :goto_2

    .line 257
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #contentService:Lcom/android/server/content/ContentService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v79       #dock:Lcom/android/server/DockObserver;
    .restart local v84       #factoryTest:I
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v102       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v106       #pm:Landroid/content/pm/IPackageManager;
    .restart local v110       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v112       #serial:Lcom/android/server/SerialService;
    .restart local v114       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v118       #systemInterObject:Ljava/lang/Object;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v123       #twilight:Lcom/android/server/TwilightService;
    .restart local v125       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v126       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v128       #uitechnoObject:Ljava/lang/Object;
    .restart local v129       #usb:Lcom/android/server/usb/UsbService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v138       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v140       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v141       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_13
    :try_start_5b
    const-string v7, "1"

    move-object/from16 v0, v75

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 262
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 287
    .restart local v86       #firstBoot:Z
    :catch_0
    move-exception v83

    .line 288
    .local v83, e:Ljava/lang/Throwable;
    :goto_45
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5b} :catch_1

    goto/16 :goto_6

    .line 379
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v83           #e:Ljava/lang/Throwable;
    .end local v86           #firstBoot:Z
    :catch_1
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .line 380
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #systemInterObject:Ljava/lang/Object;
    .local v83, e:Ljava/lang/RuntimeException;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    :goto_46
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 292
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v83           #e:Ljava/lang/RuntimeException;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v118       #systemInterObject:Ljava/lang/Object;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 326
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 368
    .end local v118           #systemInterObject:Ljava/lang/Object;
    :cond_18
    const/4 v7, 0x1

    move/from16 v0, v84

    if-ne v0, v7, :cond_19

    .line 369
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 379
    :catch_2
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v131, v132

    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto :goto_46

    .line 370
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    :cond_19
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 372
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 374
    :cond_1a
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v66, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_5c} :catch_2

    .line 376
    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v66, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_5d
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_59

    move-object/from16 v65, v66

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_a

    .line 402
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    .restart local v134       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v83

    .line 403
    .local v83, e:Ljava/lang/Throwable;
    :goto_47
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 410
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v83

    .line 411
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 417
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v83

    .line 418
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 423
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v83

    .line 424
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 445
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v83

    .line 446
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 454
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v83

    .line 455
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 462
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v83

    .line 463
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 470
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v83

    .line 471
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 478
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v83

    .line 479
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 486
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v83

    .line 487
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 494
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v83

    .line 495
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 502
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v83

    .line 503
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 512
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v83

    move-object/from16 v25, v100

    .line 513
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 520
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v83

    .line 521
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 528
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v83

    .line 529
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 541
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v83

    .line 542
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 550
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v83

    .line 551
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 558
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v83

    .line 559
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 574
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v83

    .line 575
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 581
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v83

    .line 582
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 590
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v83

    .line 591
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 598
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v83

    .line 599
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 606
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v83

    .line 607
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 614
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v83

    .line 615
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 622
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v83

    .line 623
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 630
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v83

    .line 631
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 642
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v83

    .line 643
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 651
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v83

    .line 652
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 660
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v83

    .line 661
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 669
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v83

    .line 670
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 692
    .end local v83           #e:Ljava/lang/Throwable;
    .end local v128           #uitechnoObject:Ljava/lang/Object;
    :catch_21
    move-exception v83

    .line 693
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "Failure starting UitechnoService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 711
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v83

    .line 712
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 720
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v83

    .line 721
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 727
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v83

    .line 728
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 735
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v83

    .line 736
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 743
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v83

    .line 744
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 751
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v83

    .line 752
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 758
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v83

    .line 759
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 765
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v83

    .line 766
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 777
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v83

    .line 778
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 784
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v83

    .line 785
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 792
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v83

    .line 793
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 799
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v83

    .line 800
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 810
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v83

    .line 811
    .restart local v83       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 821
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v83

    .line 822
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BugReport Service"

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 829
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v83

    .line 830
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 845
    .end local v83           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_1b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3b

    .line 856
    :catch_31
    move-exception v83

    .line 857
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Uitechno Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 865
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v83

    .line 866
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 871
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v83

    .line 872
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 878
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v83

    .line 879
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 886
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v83

    .line 887
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 893
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v83

    .line 894
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 912
    .end local v83           #e:Ljava/lang/Throwable;
    .restart local v69       #config:Landroid/content/res/Configuration;
    .restart local v97       #metrics:Landroid/util/DisplayMetrics;
    .restart local v133       #w:Landroid/view/WindowManager;
    :catch_37
    move-exception v83

    .line 913
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 918
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v83

    .line 919
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 924
    .end local v83           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v83

    .line 925
    .restart local v83       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 268
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v69           #config:Landroid/content/res/Configuration;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v83           #e:Ljava/lang/Throwable;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v133           #w:Landroid/view/WindowManager;
    .end local v134           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v118       #systemInterObject:Ljava/lang/Object;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v128       #uitechnoObject:Ljava/lang/Object;
    :catch_3a
    move-exception v7

    goto/16 :goto_5

    .line 810
    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v118           #systemInterObject:Ljava/lang/Object;
    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v128           #uitechnoObject:Ljava/lang/Object;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v82       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v134       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3b
    move-exception v83

    move-object/from16 v81, v82

    .end local v82           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_5a

    .line 792
    .end local v67           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v68       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3c
    move-exception v83

    move-object/from16 v67, v68

    .end local v68           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v67       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_59

    .line 751
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v63       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3d
    move-exception v83

    move-object/from16 v62, v63

    .end local v63           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_58

    .line 720
    .end local v112           #serial:Lcom/android/server/SerialService;
    .restart local v113       #serial:Lcom/android/server/SerialService;
    :catch_3e
    move-exception v83

    move-object/from16 v112, v113

    .end local v113           #serial:Lcom/android/server/SerialService;
    .restart local v112       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_57

    .line 711
    .end local v129           #usb:Lcom/android/server/usb/UsbService;
    .restart local v130       #usb:Lcom/android/server/usb/UsbService;
    :catch_3f
    move-exception v83

    move-object/from16 v129, v130

    .end local v130           #usb:Lcom/android/server/usb/UsbService;
    .restart local v129       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_56

    .line 642
    .end local v134           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v128       #uitechnoObject:Ljava/lang/Object;
    .restart local v135       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_40
    move-exception v83

    move-object/from16 v134, v135

    .end local v135           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v134       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_55

    .line 614
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_41
    move-exception v83

    move-object/from16 v73, v74

    .end local v74           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_54

    .line 606
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    :catch_42
    move-exception v83

    move-object/from16 v93, v94

    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_53

    .line 590
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v105       #notification:Lcom/android/server/NotificationManagerService;
    :catch_43
    move-exception v83

    move-object/from16 v104, v105

    .end local v105           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_52

    .line 541
    .end local v70           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v71       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_44
    move-exception v83

    move-object/from16 v70, v71

    .end local v71           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v70       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_51

    .line 528
    .end local v136           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v137       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_45
    move-exception v83

    move-object/from16 v136, v137

    .end local v137           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v136       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_50

    .line 520
    .end local v138           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v139       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_46
    move-exception v83

    move-object/from16 v138, v139

    .end local v139           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v138       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4f

    .line 512
    :catch_47
    move-exception v83

    goto/16 :goto_4e

    .line 502
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v100       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_48
    move-exception v83

    move-object/from16 v29, v101

    .end local v101           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4d

    .line 494
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v122       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_49
    move-exception v83

    move-object/from16 v121, v122

    .end local v122           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4c

    .line 470
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4a
    move-exception v83

    move-object/from16 v116, v117

    .end local v117           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4b

    .line 462
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_4b
    move-exception v83

    move-object/from16 v76, v77

    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4a

    .line 454
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v96       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_4c
    move-exception v83

    move-object/from16 v95, v96

    .end local v96           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_49

    .line 445
    .end local v98           #mountService:Lcom/android/server/MountService;
    .restart local v99       #mountService:Lcom/android/server/MountService;
    :catch_4d
    move-exception v83

    move-object/from16 v98, v99

    .end local v99           #mountService:Lcom/android/server/MountService;
    .restart local v98       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_48

    .line 432
    :catch_4e
    move-exception v7

    goto/16 :goto_10

    .line 402
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v88       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4f
    move-exception v83

    move-object/from16 v87, v88

    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_47

    .line 379
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v62           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v73           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v104           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v134           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v107       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v118       #systemInterObject:Ljava/lang/Object;
    :catch_50
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v107

    .end local v107           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_46

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v107       #power:Lcom/android/server/power/PowerManagerService;
    :catch_51
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v107

    .end local v107           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_52
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v78

    .end local v78           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_53
    move-exception v83

    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #cryptState:Ljava/lang/String;
    .restart local v86       #firstBoot:Z
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_54
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v59, v60

    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_55
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v64

    .end local v64           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_56
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    :catch_57
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v61

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v131, v132

    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    :catch_58
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v89

    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v131, v132

    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .end local v65           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v118           #systemInterObject:Ljava/lang/Object;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v131           #vibrator:Lcom/android/server/VibratorService;
    .restart local v66       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v132       #vibrator:Lcom/android/server/VibratorService;
    :catch_59
    move-exception v83

    move-object/from16 v119, v120

    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v65       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v131, v132

    .end local v132           #vibrator:Lcom/android/server/VibratorService;
    .restart local v131       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_46

    .line 287
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v59           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v90           #installer:Lcom/android/server/pm/Installer;
    .end local v119           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v61       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v64       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #installer:Lcom/android/server/pm/Installer;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v118       #systemInterObject:Ljava/lang/Object;
    .restart local v120       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5a
    move-exception v83

    move-object/from16 v59, v60

    .end local v60           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v59       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_45

    .end local v61           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #battery:Lcom/android/server/BatteryService;
    .end local v75           #cryptState:Ljava/lang/String;
    .end local v86           #firstBoot:Z
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #installer:Lcom/android/server/pm/Installer;
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v118           #systemInterObject:Ljava/lang/Object;
    .end local v120           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v62       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v104       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v119       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v134       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1c
    move-object/from16 v25, v100

    .end local v100           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3a
.end method
