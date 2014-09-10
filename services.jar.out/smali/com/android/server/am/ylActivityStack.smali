.class public final Lcom/android/server/am/ylActivityStack;
.super Ljava/lang/Object;
.source "ylActivityStack.java"


# static fields
.field static OsystemManager:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "ylActivityStack"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ylActivityStack;->OsystemManager:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sput-object p1, Lcom/android/server/am/ylActivityStack;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static isBeiDaoMode()Z
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, isBeidao:Z
    sget-object v1, Lcom/android/server/am/ylActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/yulong/android/reflect/YLReflect;->SystemManager_init(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ylActivityStack;->OsystemManager:Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/android/server/am/ylActivityStack;->OsystemManager:Ljava/lang/Object;

    invoke-static {v1}, Lcom/yulong/android/reflect/YLReflect;->SystemManager_fangdaoValidated(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilterActivity(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 8
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 212
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 213
    .local v0, componentSpecifiedInModifiedIntent:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 214
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, targetPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, targetClassName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/ylActivityStack;->isPhoneRinging()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, oked:Z
    const-string v6, "com.android.phone.InCallScreen"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    const/4 v1, 0x1

    .line 230
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 231
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The phone is ringing, request to start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is canceled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1           #oked:Z
    .end local v2           #targetClassName:Ljava/lang/String;
    .end local v3           #targetPackageName:Ljava/lang/String;
    :goto_2
    return v4

    .end local v0           #componentSpecifiedInModifiedIntent:Z
    :cond_1
    move v0, v5

    .line 212
    goto :goto_0

    .line 222
    .restart local v0       #componentSpecifiedInModifiedIntent:Z
    .restart local v1       #oked:Z
    .restart local v2       #targetClassName:Ljava/lang/String;
    .restart local v3       #targetPackageName:Ljava/lang/String;
    :cond_2
    const-string v6, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    const/4 v1, 0x1

    goto :goto_1

    .line 225
    :cond_3
    const-string v6, "com.yulong.android.mms.ui.MmsComposeMessageActivity"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    const/4 v1, 0x1

    goto :goto_1

    .end local v1           #oked:Z
    .end local v2           #targetClassName:Ljava/lang/String;
    .end local v3           #targetPackageName:Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 276
    goto :goto_2
.end method

.method public static isLaunchingActivityBeCanceled(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, result:Z
    invoke-static {}, Lcom/android/server/am/ylActivityStack;->isBeiDaoMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, oked:Z
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    .line 78
    .local v0, componentSpecified:Z
    :goto_0
    if-eqz v0, :cond_6

    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, targetClassName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, targetPackageName:Ljava/lang/String;
    const-string v5, "com.yulong.android.contacts.dial.DialActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    const/4 v1, 0x1

    .line 92
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 93
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The device is in Beidao mode, request to start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is canceled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x1

    .line 108
    .end local v3           #targetClassName:Ljava/lang/String;
    .end local v4           #targetPackageName:Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v5, "ylActivityStack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BeiDaoMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0           #componentSpecified:Z
    .end local v1           #oked:Z
    :cond_2
    return v2

    .line 76
    .restart local v1       #oked:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    .restart local v0       #componentSpecified:Z
    .restart local v3       #targetClassName:Ljava/lang/String;
    .restart local v4       #targetPackageName:Ljava/lang/String;
    :cond_4
    const-string v5, "com.android.phone"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    const/4 v1, 0x1

    goto :goto_1

    .line 87
    :cond_5
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const/4 v1, 0x1

    goto :goto_1

    .line 100
    .end local v3           #targetClassName:Ljava/lang/String;
    .end local v4           #targetPackageName:Ljava/lang/String;
    :cond_6
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 101
    const/4 v1, 0x1

    .line 103
    :cond_7
    if-nez v1, :cond_1

    .line 104
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private static isPhoneRinging()Z
    .locals 5

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 186
    .local v1, incomingRinging:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 189
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 199
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v1

    .line 193
    .restart local v2       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 195
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 196
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "ylActivityStack"

    const-string v4, "RemoteException from get telephony service"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static killRedundantHomeApps(Ljava/util/List;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, homeActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v3, processesToKill:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 122
    .local v1, count:I
    :goto_0
    monitor-enter v3

    .line 123
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 125
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 126
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v5, "android.process.acore"

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "telecom.mdesk"

    const-string v6, "telecom.mdesk.sync.SyncronizeService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v4, telecomSyncronizeService:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 136
    const-string v5, "telecom.mdesk:remote"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v4           #telecomSyncronizeService:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 139
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    new-instance v5, Lcom/android/server/am/ylActivityStack$1;

    invoke-direct {v5, v3}, Lcom/android/server/am/ylActivityStack$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 174
    return-void

    .line 139
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
