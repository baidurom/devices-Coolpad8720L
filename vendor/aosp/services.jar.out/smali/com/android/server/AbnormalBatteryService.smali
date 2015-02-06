.class public Lcom/android/server/AbnormalBatteryService;
.super Ljava/lang/Object;
.source "AbnormalBatteryService.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x12f34c6

.field private static final TAG:Ljava/lang/String; = "AbnormalBatteryService"


# instance fields
.field private mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private notificationHasSent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AbnormalBatteryService;->notificationHasSent:Z

    .line 65
    new-instance v0, Lcom/android/server/AbnormalBatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AbnormalBatteryService$1;-><init>(Lcom/android/server/AbnormalBatteryService;)V

    iput-object v0, p0, Lcom/android/server/AbnormalBatteryService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/server/AbnormalBatteryService;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AbnormalBatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/AbnormalBatteryService;->notificationHasSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/AbnormalBatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/AbnormalBatteryService;->notificationHasSent:Z

    return p1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AbnormalBatteryService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method


# virtual methods
.method public sendNotification(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7
    .parameter "prompt"
    .parameter "suggest"

    .prologue
    const/4 v6, 0x0

    .line 50
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 51
    .local v2, notify:Landroid/app/Notification;
    const v4, 0x1080655

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 52
    iput-object p1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 54
    const v4, 0x1100005

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 57
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    const v6, 0x10405dd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 58
    iget-object v4, p0, Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 59
    .local v1, notificationManger:Landroid/app/NotificationManager;
    const v4, 0x12f34c6

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 60
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/AbnormalBatteryService;->notificationHasSent:Z

    .line 61
    const-string v4, "AbnormalBatteryService"

    const-string v5, "YLLog: the abnormal battery notification is send"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
