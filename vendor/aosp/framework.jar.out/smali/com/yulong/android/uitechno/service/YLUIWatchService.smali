.class Lcom/yulong/android/uitechno/service/YLUIWatchService;
.super Lcom/yulong/android/uitechno/service/BService;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
    }
.end annotation


# static fields
.field public static final COMPONENT_TYPE_ACTIVITY:I = 0x0

.field public static final COMPONENT_TYPE_SERVICE:I = 0x1

.field public static final EVENT_CREATED:I = 0x0

.field public static final EVENT_DESTROYED:I = 0x1

.field public static final EVENT_TIME_START:I = 0x4

.field public static final EVENT_TIME_STOP:I = 0x3

.field public static final EVENT_TIME_TICK:I = 0x2

.field public static final INTENT_ACTION:Ljava/lang/String; = "com.yulong.action.YLUIWatchService"

.field public static final INTENT_CONTENT_CLASSNAME:Ljava/lang/String; = "className"

.field public static final INTENT_CONTENT_EVENT:Ljava/lang/String; = "event"

.field public static final INTENT_CONTENT_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final INTENT_CONTENT_TIME:Ljava/lang/String; = "time"

.field public static final INTENT_CONTENT_TYPE:Ljava/lang/String; = "type"

.field static final START_WAIT_TIME:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "uitechnoService.YLUIWatchService"


# instance fields
.field mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;",
            ">;"
        }
    .end annotation
.end field

.field mRecoveryStatus:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1407
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/BService;-><init>(Landroid/content/Context;)V

    .line 1404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    .line 1418
    new-instance v0, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService$1;-><init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mRecoveryStatus:Landroid/content/BroadcastReceiver;

    .line 1408
    return-void
.end method


# virtual methods
.method protected dealWatchEvent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1428
    const-string/jumbo v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const-string v4, "event"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1430
    .local v1, eventType:I
    const-string/jumbo v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventType == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const-string/jumbo v4, "packageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    .local v2, packageName:Ljava/lang/String;
    const-string/jumbo v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const-string v4, "className"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, className:Ljava/lang/String;
    const-string/jumbo v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->getHandler(Ljava/lang/String;)Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    move-result-object v3

    .line 1436
    .local v3, watchHandler:Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
    iput-object v2, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->packageName:Ljava/lang/String;

    .line 1437
    iput-object v0, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->className:Ljava/lang/String;

    .line 1438
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->type:I

    .line 1439
    packed-switch v1, :pswitch_data_0

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1441
    :pswitch_0
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    .line 1442
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1445
    :pswitch_1
    invoke-virtual {v3, v8}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    .line 1446
    const/16 v4, 0x1f4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    .line 1447
    const-wide/16 v4, 0x64

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1450
    :pswitch_2
    invoke-virtual {v3, v8}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    .line 1453
    :pswitch_3
    invoke-virtual {v3}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->getEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1456
    const-string/jumbo v4, "time"

    const/16 v5, 0x4e20

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    .line 1457
    const-string/jumbo v4, "uitechnoService.YLUIWatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1459
    iget v4, v3, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->time:I

    int-to-long v4, v4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1462
    :pswitch_4
    invoke-virtual {v3, v7}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;->setEnable(Z)V

    goto :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method getHandler(Ljava/lang/String;)Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;
    .locals 2
    .parameter "className"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    invoke-direct {v1, p0}, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;-><init>(Lcom/yulong/android/uitechno/service/YLUIWatchService;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/uitechno/service/YLUIWatchService$WatchHandler;

    return-object v0
.end method

.method onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    packed-switch p1, :pswitch_data_0

    .line 1474
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/BService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 1470
    :pswitch_0
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1471
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yulong/android/uitechno/service/YLUIWatchService;->dealWatchEvent(Landroid/content/Intent;)V

    .line 1472
    const/4 v1, 0x1

    goto :goto_0

    .line 1468
    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_0
    .end packed-switch
.end method

.method startComponent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "type"

    .prologue
    .line 1517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1518
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    packed-switch p3, :pswitch_data_0

    .line 1530
    :goto_0
    return-void

    .line 1522
    :pswitch_0
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1524
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/BService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1527
    :pswitch_1
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/BService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 1411
    const-string/jumbo v1, "uitechnoService.YLUIWatchService"

    const-string/jumbo v2, "systemReady() start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1413
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.yulong.action.YLUIWatchService"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1414
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/BService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIWatchService;->mRecoveryStatus:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1415
    const-string/jumbo v1, "uitechnoService.YLUIWatchService"

    const-string/jumbo v2, "systemReady() end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void
.end method
