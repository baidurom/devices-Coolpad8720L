.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final EVENT_SWITCH_PHONE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field protected static mBaseHandler:Landroid/os/Handler;

.field static mPhoneResetCount:I

.field static final preferredCdmaSubscription:I

.field static final preferredNetworkMode:I

.field private static sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private static sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private static sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;

.field private static sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 68
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 70
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 71
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 74
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 75
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 76
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 77
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 672
    new-instance v0, Lcom/android/internal/telephony/PhoneFactory$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneFactory$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->mBaseHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastSwithPhoneDone()V
    .locals 5

    .prologue
    .line 691
    const-string v2, "yulong.lcdsds.mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 692
    .local v1, lcDsdsMode:I
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastSwithPhoneDone\ufffd\ufffdproperty_lcdsds_mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.FINISH_SWITCH_PHONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "lcDsdsMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 696
    return-void
.end method

.method private static delateAndCreatePhone(I)V
    .locals 10
    .parameter "newPhoneType"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 610
    const/4 v1, 0x0

    .line 611
    .local v1, isDsdsType:Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 612
    .local v3, uiccController:Lcom/android/internal/telephony/uicc/UiccController;
    const-string v2, "Unknown"

    .line 613
    .local v2, outgoingPhoneName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 614
    .local v0, commType:I
    if-ne p0, v9, :cond_5

    .line 615
    const/4 v0, 0x2

    .line 616
    const/4 v1, 0x1

    .line 617
    const-string v4, "yulong.lcdsds.mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v4, :cond_1

    .line 625
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    .line 628
    :cond_1
    const-string v5, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switching Voice Phone : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " >>> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v9, p0, :cond_6

    const-string v4, "GSM"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    if-eqz v3, :cond_2

    .line 631
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->dispose()V

    .line 634
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_3

    .line 635
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RIL;->closeSocket()V

    .line 637
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v4, :cond_4

    .line 638
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 639
    const-string v4, "PHONE"

    const-string v5, "Disposing old phone.."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 641
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 643
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->deleteOldPhone()V

    .line 645
    :cond_4
    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->loadXmlFileToMem(Z)V

    .line 646
    const-string v4, "PHONE"

    const-string v5, "makeRil----begin"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v4, v7, v0, v7}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 648
    const-string v4, "PHONE"

    const-string v5, "makeRil----end"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v5, v4, v8

    .line 651
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->attach(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 652
    const-string v4, "PHONE"

    const-string v5, "makePhone----begin"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v4, v7, v0, v7}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 654
    const-string v4, "PHONE"

    const-string v5, "makePhone----end"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneProxy;->creatNewPhone(Lcom/android/internal/telephony/Phone;)V

    .line 657
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v5, v4, v8

    .line 661
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 663
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 666
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 667
    const-string v4, "PHONE"

    const-string v5, "CP_COMM: CDMAPhone is the preferred phone."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sput-boolean v7, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 670
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlotId()V

    .line 671
    return-void

    .line 618
    :cond_5
    if-ne p0, v7, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 620
    const/4 v1, 0x0

    .line 621
    const-string v4, "yulong.lcdsds.mode"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    :cond_6
    const-string v4, "CDMA"

    goto/16 :goto_1
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 428
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 430
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCdmaPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 415
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 435
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 436
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 437
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getGsmPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 454
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getPhoneIdBySlotId(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 699
    const/4 v0, -0x1

    .line 700
    .local v0, phoneId:I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v1

    invoke-virtual {v1, v3, v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateUniversalInterface(III)I

    move-result v0

    .line 705
    :goto_0
    return v0

    .line 703
    :cond_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-result-object v1

    invoke-virtual {v1, v3, v2, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateUniversalInterface(III)I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneType(I)I
    .locals 5
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 382
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneType,networkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 410
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 394
    goto :goto_0

    .line 403
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 406
    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isNotShowPIM()Z
    .locals 6

    .prologue
    .line 481
    const-string v4, "ro.yulong.boot.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, bootReason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 483
    .local v0, bExceptPowerOn:Z
    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "excep_press_poweron"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 487
    :cond_0
    const-string v4, "persist.sys.yllastshut.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, shutReason:Ljava/lang/String;
    const/4 v1, 0x0

    .line 490
    .local v1, bShutLowmem:Z
    if-eqz v3, :cond_1

    .line 491
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lowmem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 495
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 496
    const/4 v4, 0x1

    .line 498
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 30
    .parameter "context"

    .prologue
    .line 106
    const-class v26, Lcom/android/internal/telephony/Phone;

    monitor-enter v26

    .line 107
    :try_start_0
    sget-boolean v25, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v25, :cond_7

    .line 108
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v25

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 109
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 111
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v25, :cond_0

    .line 112
    new-instance v25, Ljava/lang/RuntimeException;

    const-string v27, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 351
    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 116
    :cond_0
    const/16 v23, 0x0

    .line 118
    .local v23, retryCount:I
    :goto_0
    const/4 v10, 0x0

    .line 119
    .local v10, hasException:Z
    add-int/lit8 v23, v23, 0x1

    .line 124
    :try_start_1
    new-instance v25, Landroid/net/LocalServerSocket;

    const-string v27, "com.android.internal.telephony"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :goto_1
    if-nez v10, :cond_8

    .line 141
    :try_start_2
    const-string v25, "phonefactor"

    const-string v27, "phonefactor enter"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->init()V

    .line 144
    invoke-static {}, Lcom/yulong/android/internal/telephony/InternationalAddressUtil;->init()V

    .line 146
    const-string v25, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 149
    .local v19, powerManager:Landroid/os/PowerManager;
    new-instance v25, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 151
    const/16 v21, 0x0

    .line 153
    .local v21, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 154
    const/16 v21, 0x7

    .line 157
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "preferred_network_mode"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 162
    .local v16, networkMode:I
    const-string v25, "PHONE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CP_COMM: Network Mode set to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v17

    .line 167
    .local v17, phoneOneType:I
    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v18

    .line 170
    .local v18, phoneTwoType:I
    const/16 v25, 0x2

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0x3

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0x4

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 173
    :cond_2
    const-string v25, "gsm.current.phone-type"

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x1

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_2
    const/4 v5, 0x0

    .line 184
    .local v5, cdmaSubscription:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v15

    .line 185
    .local v15, lteOnCdma:I
    packed-switch v15, :pswitch_data_0

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "preferred_cdma_subscription"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 198
    const-string v25, "PHONE"

    const-string v27, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_3
    const-string v25, "PHONE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cdma Subscription set to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v25, v0

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 204
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v25, v0

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 206
    const-string v25, "PHONE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CP_COMM: phoneOneType:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ";phoneTwoType"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 210
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makeRil(Landroid/content/Context;III)V

    .line 211
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v28, v25, v27

    .line 212
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v27, 0x1

    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v28, v25, v27

    .line 215
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v27, 0x0

    aget-object v25, v25, v27

    if-eqz v25, :cond_3

    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v27, 0x1

    aget-object v25, v25, v27

    if-nez v25, :cond_4

    .line 216
    :cond_3
    const-string v25, "PHONE"

    const-string v27, " makeRil fail"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 219
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 220
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 222
    new-instance v25, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 223
    new-instance v25, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 224
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v28, v25, v27

    .line 225
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    const/16 v27, 0x1

    sget-object v28, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v28, v25, v27

    .line 228
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    .line 230
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v25

    if-nez v25, :cond_e

    .line 231
    const-string v25, "PHONE"

    const-string v27, "CP_COMM: PhoneModeService getCheckCardType = COMM_CHECK_CARD_FRAMEWORK"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/yulong/android/internal/telephony/SubscriptionManager;

    .line 233
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 238
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 239
    const-string v25, "persist.sys.fastbootup.mode"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 241
    :try_start_3
    const-string v25, "com.yulong.android.poweroff.PowerOffManager"

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    .line 242
    .local v20, powerOffManager:Ljava/lang/Class;
    const-string v25, "getInstance"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 243
    .local v11, instance:Ljava/lang/reflect/Method;
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 244
    .local v22, retObj:Ljava/lang/Object;
    const-string v25, "PHONE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "powerOffManager:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " instance:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v25, "isSilenceRebootMode"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 247
    .local v14, isSilenceRebootMode:Ljava/lang/reflect/Method;
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 249
    .local v12, isInSRM:Z
    const-string v25, "getSystemState"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 250
    .local v9, getSystemState:Ljava/lang/reflect/Method;
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 252
    .local v24, systemState:I
    const-string v25, "SYSTEM_STATE_SHUTDOWN"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 253
    .local v8, fld:Ljava/lang/reflect/Field;
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 255
    .local v4, SYSTEM_STATE_SHUTDOWN:I
    move/from16 v0, v24

    if-ne v0, v4, :cond_b

    const/4 v13, 0x1

    .line 256
    .local v13, isOnSRM:Z
    :goto_4
    const-string v25, "PHONE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "isSilenceRebootMode isInSRM:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " isOnSRM :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v12, :cond_5

    .line 258
    if-eqz v13, :cond_5

    .line 259
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSilenceRebootFlag()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 271
    .end local v4           #SYSTEM_STATE_SHUTDOWN:I
    .end local v8           #fld:Ljava/lang/reflect/Field;
    .end local v9           #getSystemState:Ljava/lang/reflect/Method;
    .end local v11           #instance:Ljava/lang/reflect/Method;
    .end local v12           #isInSRM:Z
    .end local v13           #isOnSRM:Z
    .end local v14           #isSilenceRebootMode:Ljava/lang/reflect/Method;
    .end local v20           #powerOffManager:Ljava/lang/Class;
    .end local v22           #retObj:Ljava/lang/Object;
    .end local v24           #systemState:I
    :cond_5
    :goto_5
    :try_start_4
    const-string v25, "yulong.radio.reset.count"

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    sput v25, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    .line 273
    const-string v25, "PHONE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mPhoneResetCount = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget v28, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget v25, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 283
    const-wide/16 v27, 0x1388

    :try_start_5
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 323
    :cond_6
    :goto_6
    :try_start_6
    sget v25, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    add-int/lit8 v25, v25, 0x1

    sput v25, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    .line 324
    const-string v25, "PHONE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mPhoneResetCount = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget v28, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v25, "yulong.radio.reset.count"

    sget v27, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    const v28, 0xffff

    rem-int v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_7
    if-nez v17, :cond_f

    .line 336
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 337
    const-string v25, "PHONE"

    const-string v27, "CP_COMM: GSMPhone is the preferred phone."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_8
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 347
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v25

    const/16 v27, 0x64

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 348
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->registerEventForCdmaAndLte()V

    .line 351
    .end local v5           #cdmaSubscription:I
    .end local v10           #hasException:Z
    .end local v15           #lteOnCdma:I
    .end local v16           #networkMode:I
    .end local v17           #phoneOneType:I
    .end local v18           #phoneTwoType:I
    .end local v19           #powerManager:Landroid/os/PowerManager;
    .end local v21           #preferredNetworkMode:I
    .end local v23           #retryCount:I
    :cond_7
    monitor-exit v26

    .line 352
    return-void

    .line 125
    .restart local v10       #hasException:Z
    .restart local v23       #retryCount:I
    :catch_0
    move-exception v7

    .line 126
    .local v7, ex:Ljava/io/IOException;
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 131
    .end local v7           #ex:Ljava/io/IOException;
    :cond_8
    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 132
    new-instance v25, Ljava/lang/RuntimeException;

    const-string v27, "PhoneFactory probably already running"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    :cond_9
    const-wide/16 v27, 0x7d0

    :try_start_7
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 137
    :catch_1
    move-exception v25

    goto/16 :goto_0

    .line 178
    .restart local v16       #networkMode:I
    .restart local v17       #phoneOneType:I
    .restart local v18       #phoneTwoType:I
    .restart local v19       #powerManager:Landroid/os/PowerManager;
    .restart local v21       #preferredNetworkMode:I
    :cond_a
    :try_start_8
    const-string v25, "gsm.current.phone-type"

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x2

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 187
    .restart local v5       #cdmaSubscription:I
    .restart local v15       #lteOnCdma:I
    :pswitch_0
    const/4 v5, 0x1

    .line 188
    const-string v25, "PHONE"

    const-string v27, "lteOnCdma is 0 use SUBSCRIPTION_FROM_NV"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 191
    :pswitch_1
    const/4 v5, 0x0

    const-string v25, "PHONE"

    const-string v27, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 255
    .restart local v4       #SYSTEM_STATE_SHUTDOWN:I
    .restart local v8       #fld:Ljava/lang/reflect/Field;
    .restart local v9       #getSystemState:Ljava/lang/reflect/Method;
    .restart local v11       #instance:Ljava/lang/reflect/Method;
    .restart local v12       #isInSRM:Z
    .restart local v14       #isSilenceRebootMode:Ljava/lang/reflect/Method;
    .restart local v20       #powerOffManager:Ljava/lang/Class;
    .restart local v22       #retObj:Ljava/lang/Object;
    .restart local v24       #systemState:I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 263
    .end local v4           #SYSTEM_STATE_SHUTDOWN:I
    .end local v8           #fld:Ljava/lang/reflect/Field;
    .end local v9           #getSystemState:Ljava/lang/reflect/Method;
    .end local v11           #instance:Ljava/lang/reflect/Method;
    .end local v12           #isInSRM:Z
    .end local v14           #isSilenceRebootMode:Ljava/lang/reflect/Method;
    .end local v20           #powerOffManager:Ljava/lang/Class;
    .end local v22           #retObj:Ljava/lang/Object;
    .end local v24           #systemState:I
    :catch_2
    move-exception v6

    .line 264
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 284
    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 286
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 307
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_c
    const/16 v25, 0x64

    const-string v27, "persist.yulong.network2"

    const/16 v28, 0x64

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 310
    const-string v25, "persist.yulong.network2"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_d
    const/16 v25, 0x64

    const-string v27, "persist.yulong.network1"

    const/16 v28, 0x64

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 317
    const-string v25, "persist.yulong.network1"

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 329
    :cond_e
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .line 331
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-result-object v25

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->mBaseHandler:Landroid/os/Handler;

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 339
    :cond_f
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 340
    const-string v25, "PHONE"

    const-string v27, "CP_COMM: CDMAPhone is the preferred phone."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_8

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "current_data_network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    return-void
.end method

.method private static makePhone(Landroid/content/Context;III)V
    .locals 5
    .parameter "context"
    .parameter "cdmaSubscription"
    .parameter "commType"
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x1

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, tempRil:Lcom/android/internal/telephony/CommandsInterface;
    const/4 v0, 0x0

    .line 506
    .local v0, tempPhone:Lcom/android/internal/telephony/PhoneBase;
    if-ne v4, p3, :cond_0

    .line 507
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 511
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 551
    :goto_1
    if-ne v4, p3, :cond_2

    .line 552
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 556
    :goto_2
    return-void

    .line 509
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_0

    .line 513
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 521
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 522
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 515
    :pswitch_1
    const-string v2, "PHONE"

    const-string v3, "Creating CDMALTEPhone"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 517
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 529
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 530
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 533
    :pswitch_3
    if-ne v4, p3, :cond_1

    .line 534
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 542
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 543
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 536
    :pswitch_4
    const-string v2, "PHONE"

    const-string v3, "Creating CDMALTEPhone"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 538
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 546
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_1

    .line 554
    :cond_2
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_2

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 513
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 534
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private static makeRil(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "cdmaSubscription"
    .parameter "commType"
    .parameter "phoneId"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 559
    const/4 v0, 0x0

    .line 561
    .local v0, tempRil:Lcom/android/internal/telephony/CommandsInterface;
    packed-switch p2, :pswitch_data_0

    .line 586
    :goto_0
    if-ne v1, p3, :cond_1

    .line 587
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 591
    :goto_1
    return-void

    .line 563
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v2, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 565
    .restart local v0       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 569
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v1, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 571
    .restart local v0       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 574
    :pswitch_2
    if-ne v1, p3, :cond_0

    .line 575
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v2, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .restart local v0       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 578
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    .end local v0           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v0, p0, v1, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .restart local v0       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_0

    .line 589
    :cond_1
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_1

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 450
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method private static registerEventForCdmaAndLte()V
    .locals 6

    .prologue
    const v5, 0x42074

    const v4, 0x42070

    const/4 v3, 0x0

    .line 357
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x4206e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForSetupDataCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForCdmaNotifyMeid(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x4206f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDataCallRst(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDSDisconnectDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDSDisconnectDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x42073

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForCdmaDSDormant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVIAStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 371
    return-void
.end method

.method public static switchPhone(Ljava/lang/String;)V
    .locals 4
    .parameter "phoneType"

    .prologue
    .line 595
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchPhone()  phoneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, newPhoneType:I
    const-string v1, "cdma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    const/4 v0, 0x1

    .line 605
    :goto_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->delateAndCreatePhone(I)V

    .line 606
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->broadcastSwithPhoneDone()V

    .line 607
    :cond_0
    return-void

    .line 600
    :cond_1
    const-string v1, "gsm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const/4 v0, 0x2

    goto :goto_0
.end method
