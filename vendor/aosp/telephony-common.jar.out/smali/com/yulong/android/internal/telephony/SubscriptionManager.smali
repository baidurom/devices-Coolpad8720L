.class public Lcom/yulong/android/internal/telephony/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/SubscriptionManager$1;,
        Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    }
.end annotation


# static fields
.field private static final APPNUMS_MAX:I = 0x8

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static NUM_SUBSCRIPTIONS:I = 0x0

.field public static final RIL_MAX_CARDS:I = 0x2

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SUB_ACTIVATE:I = 0x1

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field private static final SUB_DEACTIVATE:I = 0x0

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;


# instance fields
.field public cardInfo:[[I

.field private mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    sput v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v3, 0x2

    .line 111
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    new-array v0, v3, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    .line 76
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->cardInfo:[[I

    .line 112
    const-string v0, "Constructor - Enter"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 116
    new-array v0, v3, [Lcom/yulong/android/internal/telephony/SubscriptionData;

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    .line 117
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 118
    return-void

    .line 76
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 470
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 482
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 472
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 474
    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    .line 476
    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    .line 478
    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    .line 480
    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V
    .locals 3
    .parameter "cardSub"
    .parameter "appIndex"

    .prologue
    const/4 v2, -0x1

    .line 445
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 446
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 447
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    :cond_2
    iput p2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 450
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0

    .line 451
    :cond_3
    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    :cond_4
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 453
    iput p2, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/yulong/android/internal/telephony/SubscriptionManager;
    .locals 3
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 89
    const-class v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "SubscriptionManager"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;

    invoke-direct {v0, p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/yulong/android/internal/telephony/SubscriptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhoneSlotService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, i:I
    const/4 v2, 0x0

    .line 521
    .local v2, myBinder:Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, myNS:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 523
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 524
    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 525
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 528
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_1
    return-object v3
.end method

.method private initCardInfo()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    .line 488
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getPhoneSlotService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v5

    .line 489
    .local v5, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: myNativeSlotService == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 490
    if-eqz v5, :cond_2

    .line 491
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_2

    .line 492
    invoke-interface {v5, v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v6

    .line 494
    .local v6, tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-nez v6, :cond_1

    .line 495
    const-string v8, "CP_COMM: PhoneSlotService == null"

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 491
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_1
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    new-instance v9, Lcom/yulong/android/internal/telephony/SubscriptionData;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v9, v8, v2

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initCardInfo iSlotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", initCardInfo == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 499
    iget-object v8, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 500
    iget-object v8, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 501
    .local v0, appNums:I
    const/16 v8, 0x8

    new-array v4, v8, [Ljava/lang/String;

    .line 502
    .local v4, mAppTypes:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_0

    if-ge v3, v11, :cond_0

    .line 503
    iget-object v8, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 504
    .local v7, type:I
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    .line 505
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    new-instance v9, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v9}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    aput-object v9, v8, v3

    .line 506
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    aget-object v9, v4, v3

    iput-object v9, v8, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 512
    .end local v0           #appNums:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #mAppTypes:[Ljava/lang/String;
    .end local v5           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v6           #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .end local v7           #type:I
    :catch_0
    move-exception v1

    .line 514
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: initCardInfo ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 516
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 143
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 9
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus: cardIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, numApps:I
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    if-eqz v6, :cond_0

    .line 396
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplications()[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v6

    array-length v2, v6

    .line 398
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus(): Number of apps : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 400
    if-lez v2, :cond_2

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus(): mCardSubData["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 406
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    if-nez v6, :cond_2

    .line 410
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-direct {v8, v2}, Lcom/yulong/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v8, v6, v7

    .line 412
    const/4 v0, 0x0

    .local v0, appIndex:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 413
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v1, v6, v0

    .line 414
    .local v1, cardSub:Lcom/yulong/android/internal/telephony/Subscription;
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mUiccCard:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 417
    .local v5, uiccCardApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 421
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/yulong/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 425
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    .line 426
    .local v4, type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, subAppType:Ljava/lang/String;
    const-string v6, "UNKNOWN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 429
    iput-object v3, v1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 438
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->fillAppIndex(Lcom/yulong/android/internal/telephony/Subscription;I)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 432
    const-string v6, "onUpdateUiccStatus(): UNKNOWN APP"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 393
    .end local v0           #appIndex:I
    .end local v1           #cardSub:Lcom/yulong/android/internal/telephony/Subscription;
    .end local v2           #numApps:I
    .end local v3           #subAppType:Ljava/lang/String;
    .end local v4           #type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v5           #uiccCardApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 442
    .restart local v2       #numApps:I
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    .line 458
    const-string v0, "SubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validuicc slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",appIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    sget v1, Lcom/yulong/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateorDeactivateRequest([IIIILandroid/os/Message;)I
    .locals 10
    .parameter "selectParam"
    .parameter "subState"
    .parameter "rilIndex"
    .parameter "mode"
    .parameter "msg"

    .prologue
    .line 147
    new-instance v1, Lcom/yulong/android/internal/telephony/Subscription;

    invoke-direct {v1}, Lcom/yulong/android/internal/telephony/Subscription;-><init>()V

    .local v1, newSub:Lcom/yulong/android/internal/telephony/Subscription;
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->setUiccSubsParams(Lcom/yulong/android/internal/telephony/Subscription;[IIII)I

    move-result v8

    .line 149
    .local v8, res:I
    const-string v0, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter activateorDeactivateRequest res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x1

    if-eq v8, v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 153
    :cond_0
    new-instance v9, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    iget v0, v1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    iget-object v2, v1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-direct {v9, p0, v0, v2, p5}, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;-><init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;ILcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;Landroid/os/Message;)V

    .line 155
    .local v9, subParam:Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    const/4 v0, 0x1

    invoke-static {p0, v0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 158
    .local v7, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v0, p3

    iget v3, v1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1}, Lcom/yulong/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v4

    iget v5, v1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    iget-object v0, v1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 123
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscriptionManager enter handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "SubscriptionManager"

    const-string v3, "exception"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;

    .line 134
    .local v1, subParam:Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
    iget-object v2, v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 135
    iget-object v2, v1, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUiccSubsParams(Lcom/yulong/android/internal/telephony/Subscription;[IIII)I
    .locals 12
    .parameter "sub"
    .parameter "selectParam"
    .parameter "subState"
    .parameter "rilIndex"
    .parameter "mode"

    .prologue
    .line 169
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v3

    .line 170
    .local v3, dsdsType:I
    const-string v9, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setUiccSubsParams dsdsType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",rilIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",subState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v2, -0x1

    .line 175
    .local v2, cardIndex:I
    const/4 v8, -0x1

    .line 176
    .local v8, m3gppIndex:I
    const/4 v7, -0x1

    .line 177
    .local v7, m3gpp2Index:I
    const/4 v4, 0x0

    .line 178
    .local v4, flag:I
    packed-switch v3, :pswitch_data_0

    .line 386
    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    .line 180
    :pswitch_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/4 v9, 0x2

    if-ge v5, v9, :cond_6

    .line 181
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v9, :cond_b

    .line 182
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v9

    .line 183
    .local v1, appNums:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v1, :cond_5

    .line 184
    const-string v9, "RUIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "CSIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 186
    :cond_1
    move v7, v6

    .line 183
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 187
    :cond_3
    const-string v9, "USIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "SIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 189
    :cond_4
    move v8, v6

    goto :goto_3

    .line 193
    :cond_5
    if-lez v7, :cond_a

    .line 194
    const/4 v9, 0x1

    if-ne p3, v9, :cond_8

    .line 195
    aget v9, p2, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 196
    move v2, v5

    .line 197
    const/4 v8, -0x1

    .line 221
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_6
    :goto_4
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 222
    iput v8, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 223
    iput v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 224
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, p3

    iput-object v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 225
    const/4 v9, 0x0

    iput v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 226
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 227
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 198
    .restart local v1       #appNums:I
    .restart local v6       #j:I
    :cond_7
    aget v9, p2, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 199
    move v2, v5

    .line 200
    const/4 v7, -0x1

    goto :goto_4

    .line 203
    :cond_8
    if-nez p3, :cond_b

    .line 204
    if-nez p5, :cond_9

    .line 205
    move v2, v5

    .line 206
    const/4 v8, -0x1

    goto :goto_4

    .line 207
    :cond_9
    if-nez p5, :cond_6

    .line 208
    move v2, v5

    .line 209
    const/4 v7, -0x1

    goto :goto_4

    .line 214
    :cond_a
    if-lez v8, :cond_b

    .line 215
    move v2, v5

    .line 216
    goto :goto_4

    .line 180
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 232
    .end local v5           #i:I
    :pswitch_1
    if-nez p4, :cond_13

    .line 233
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    const/4 v9, 0x2

    if-ge v5, v9, :cond_e

    .line 234
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v9, :cond_12

    .line 235
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v9

    .line 236
    .restart local v1       #appNums:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_6
    if-ge v6, v1, :cond_d

    .line 237
    const-string v9, "RUIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "CSIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 239
    :cond_c
    move v7, v6

    .line 240
    const/4 v4, 0x1

    .line 244
    :cond_d
    const/4 v9, 0x1

    if-ne v4, v9, :cond_12

    .line 245
    const/4 v9, 0x1

    if-ne p3, v9, :cond_10

    aget v9, p2, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 247
    move v2, v5

    .line 265
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_e
    :goto_7
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 266
    iput v7, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 267
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, p3

    iput-object v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 268
    const/4 v9, 0x0

    iput v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 269
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 270
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 236
    .restart local v1       #appNums:I
    .restart local v6       #j:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 249
    :cond_10
    if-nez p3, :cond_12

    .line 250
    if-nez p5, :cond_11

    .line 251
    if-nez v5, :cond_12

    .line 252
    move v2, v5

    .line 253
    goto :goto_7

    .line 255
    :cond_11
    const/4 v9, 0x1

    move/from16 v0, p5

    if-ne v0, v9, :cond_12

    .line 256
    const/4 v9, 0x1

    if-ne v5, v9, :cond_12

    .line 257
    move v2, v5

    .line 258
    goto :goto_7

    .line 233
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 272
    .end local v5           #i:I
    :cond_13
    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_0

    .line 273
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_8
    const/4 v9, 0x2

    if-ge v5, v9, :cond_16

    .line 274
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v9, :cond_1a

    .line 275
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v9

    .line 276
    .restart local v1       #appNums:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_9
    if-ge v6, v1, :cond_15

    .line 277
    const-string v9, "USIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "SIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 279
    :cond_14
    move v8, v6

    .line 280
    const/4 v4, 0x1

    .line 284
    :cond_15
    const/4 v9, 0x1

    if-ne v4, v9, :cond_1a

    .line 285
    const/4 v9, 0x1

    if-ne p3, v9, :cond_18

    aget v9, p2, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_18

    .line 287
    move v2, v5

    .line 305
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_16
    :goto_a
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 306
    iput v8, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 307
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, p3

    iput-object v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 308
    const/4 v9, 0x1

    iput v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 309
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 310
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 276
    .restart local v1       #appNums:I
    .restart local v6       #j:I
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 289
    :cond_18
    if-nez p3, :cond_1a

    .line 290
    if-nez p5, :cond_19

    .line 291
    const/4 v9, 0x1

    if-ne v5, v9, :cond_1a

    .line 292
    move v2, v5

    .line 293
    goto :goto_a

    .line 295
    :cond_19
    const/4 v9, 0x1

    move/from16 v0, p5

    if-ne v0, v9, :cond_1a

    .line 296
    if-nez v5, :cond_1a

    .line 297
    move v2, v5

    .line 298
    goto :goto_a

    .line 273
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 316
    .end local v5           #i:I
    :pswitch_2
    if-nez p4, :cond_21

    .line 317
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_b
    const/4 v9, 0x2

    if-ge v5, v9, :cond_1d

    .line 318
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v9, :cond_20

    .line 319
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v9

    .line 320
    .restart local v1       #appNums:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_c
    if-ge v6, v1, :cond_1c

    .line 321
    const-string v9, "USIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "SIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 323
    :cond_1b
    move v8, v6

    .line 324
    const/4 v4, 0x1

    .line 328
    :cond_1c
    const/4 v9, 0x1

    if-ne v4, v9, :cond_20

    .line 329
    const/4 v9, 0x1

    if-ne p3, v9, :cond_1f

    aget v9, p2, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1f

    .line 331
    move v2, v5

    .line 342
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_1d
    :goto_d
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 343
    iput v8, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 344
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, p3

    iput-object v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 345
    const/4 v9, 0x0

    iput v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 346
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 347
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 320
    .restart local v1       #appNums:I
    .restart local v6       #j:I
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 333
    :cond_1f
    if-nez p3, :cond_20

    .line 334
    if-nez v5, :cond_20

    .line 335
    move v2, v5

    .line 336
    goto :goto_d

    .line 317
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 349
    .end local v5           #i:I
    :cond_21
    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_0

    .line 350
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_e
    const/4 v9, 0x2

    if-ge v5, v9, :cond_24

    .line 351
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    if-eqz v9, :cond_27

    .line 352
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    array-length v1, v9

    .line 353
    .restart local v1       #appNums:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_f
    if-ge v6, v1, :cond_23

    .line 354
    const-string v9, "USIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    const-string v9, "SIM"

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager;->mCardSubData:[Lcom/yulong/android/internal/telephony/SubscriptionData;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/SubscriptionData;->subscription:[Lcom/yulong/android/internal/telephony/Subscription;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 356
    :cond_22
    move v8, v6

    .line 357
    const/4 v4, 0x1

    .line 361
    :cond_23
    const/4 v9, 0x1

    if-ne v4, v9, :cond_27

    .line 362
    const/4 v9, 0x1

    if-ne p3, v9, :cond_26

    aget v9, p2, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_26

    .line 364
    move v2, v5

    .line 375
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_24
    :goto_10
    iput v2, p1, Lcom/yulong/android/internal/telephony/Subscription;->slotId:I

    .line 376
    iput v8, p1, Lcom/yulong/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 377
    invoke-static {}, Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, p3

    iput-object v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 378
    const/4 v9, 0x1

    iput v9, p1, Lcom/yulong/android/internal/telephony/Subscription;->subId:I

    .line 379
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->validateRequest(Lcom/yulong/android/internal/telephony/Subscription;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 380
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 353
    .restart local v1       #appNums:I
    .restart local v6       #j:I
    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 366
    :cond_26
    if-nez p3, :cond_27

    .line 367
    const/4 v9, 0x1

    if-ne v5, v9, :cond_27

    .line 368
    move v2, v5

    .line 369
    goto :goto_10

    .line 350
    .end local v1           #appNums:I
    .end local v6           #j:I
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
