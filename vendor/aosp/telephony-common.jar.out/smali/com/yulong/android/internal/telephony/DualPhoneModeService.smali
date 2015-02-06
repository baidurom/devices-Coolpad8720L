.class public Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.super Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    }
.end annotation


# static fields
.field private static final AUTO_RESELECT_NET_TIME_OUT:I = 0x2710

.field private static final BATTERY_CDMA_WARN_LEVEL:I = 0x3

.field private static final BATTERY_GSM_WARN_LEVEL:I = 0x7

.field private static final BATTERY_NORMAL_LEVEL:I = 0x9

.field private static final EVENT_CDMA_MODEM_RESET:I = 0x3e

.field private static final EVENT_CDMA_RADIO_AVAILABLE:I = 0x18

.field private static final EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_CDMA_RADIO_ON:I = 0xb

.field private static final EVENT_CDMA_RADIO_STATE_CHANGED:I = 0xe

.field private static final EVENT_CDMA_SUPPLYPIN_MODEMRESET:I = 0x15

.field private static final EVENT_CLOSE_CDMA_MODEM_POWER:I = 0x1

.field private static final EVENT_CLOSE_GSM_MODEM_POWER:I = 0x2

.field private static final EVENT_FINISH_SELECT_NET:I = 0x32

.field private static final EVENT_FINISH_SWITCH_SLOT_MODE:I = 0x3

.field private static final EVENT_GET_CARD_TYPE_BY_AT:I = 0x11

.field private static final EVENT_GET_CDMA_MODEM_STATUS:I = 0x6

.field private static final EVENT_GET_GSM_IMSI_BY_AT:I = 0x10

.field private static final EVENT_GET_GSM_MODEM_STATUS:I = 0x7

.field private static final EVENT_GET_PINPUK_LEFT_NUM:I = 0x12

.field private static final EVENT_GET_PREFERRED_NETWORK:I = 0x48

.field private static final EVENT_GSM_RADIO_AVAILABLE:I = 0x17

.field private static final EVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field private static final EVENT_GSM_RADIO_ON:I = 0xd

.field private static final EVENT_GSM_RADIO_STATE_CHANGED:I = 0xf

.field private static final EVENT_GSM_SUPPLYPIN_MODEMRESET:I = 0x16

.field private static final EVENT_GTOC_REMOVE_INVALID_SID:I = 0x42

.field private static final EVENT_HOTSWAP_CHECK_CARD_FINISH:I = 0x3f

.field private static final EVENT_OPEN_CDMA_MODEM_POWER:I = 0x4

.field private static final EVENT_OPEN_GSM_MODEM_POWER:I = 0x5

.field private static final EVENT_SELECT_NET_TIME_OUT:I = 0x33

.field private static final EVENT_SET_CARD_POWER_OFF_DONE:I = 0x40

.field private static final EVENT_SET_CARD_POWER_ON_DONE:I = 0x41

.field private static final EVENT_SET_NEW_CARD_INSERT_STATE:I = 0x3d

.field private static final EVENT_SET_PREFERRED_NETWORK:I = 0x47

.field private static final EVENT_UNLOCK_PIN_BY_CDMA:I = 0x13

.field private static final EVENT_UNLOCK_PIN_BY_GSM:I = 0x14

.field private static final GET_CARD_STATE_TIME_OUT:I = 0xbb8

.field private static final GET_PIN_OR_PUK_NUM_STEP:I = 0x7

.field private static final HOT_SWAP_MILLIS:I = 0x4e20

.field private static final LOG_TAG:Ljava/lang/String; = "DualPhoneModeService"

.field private static final MAX_NOTIFICATION_RETRIES:I = 0xa

.field private static final OPERATE_C_RADIO_STEP:I = 0x8

.field private static final OPERATE_G_RADIO_STEP:I = 0x9

.field private static final OPERATION_BEGIN:I = 0x0

.field private static final OPERATION_FINISH:I = 0x1

.field private static final POWER_DOWN_STATUS:I = 0x0

.field private static final POWER_MGR_LOW_PWR_POWEROFF_C:I = 0x4

.field private static final POWER_MGR_LOW_PWR_POWEROFF_G:I = 0x3

.field private static final POWER_MGR_NORMAL:I = 0x1

.field private static final POWER_MGR_UNINIT:I = 0x0

.field private static final POWER_MGR_WORNING:I = 0x2

.field private static final POWER_ON_STATUS:I = 0x1

.field private static final POWER_STATUS_UNINIT:I = -0x1

.field private static final PWR_ACTION_OFF:I = 0x2

.field private static final PWR_ACTION_ON:I = 0x1

.field private static final PWR_ACTION_RESET:I = 0x3

.field private static final PWR_ACTION_USB_RESET:I = 0x4

.field private static final PWR_CARD_OFF:I = 0x0

.field private static final PWR_CARD_ON:I = 0x1

.field private static final RESET_MODEM_MILLIS:I = 0x2710

.field private static final SELECT_CLOSE_C_MODEM_STEP:I = 0xa

.field private static final SELECT_CLOSE_G_MODEM_STEP:I = 0xb

.field private static final SELECT_NET_TIME_OUT_MILLIS:I = 0x7530

.field private static final SELECT_OPEN_C_MODEM_STEP:I = 0x3

.field private static final SELECT_OPEN_G_MODEM_STEP:I = 0x4

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_LC_DSDS_MODE:I = 0x2

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SLOT_UNKNOWN_MODE:I = -0x1

.field private static final SWITCH_CLOSE_C_MODEM_STEP:I = 0x0

.field private static final SWITCH_CLOSE_G_MODEM_STEP:I = 0x1

.field private static final SWITCH_SLOT_STEP:I = 0x2

.field private static final UNLOCK_PIN_BY_CDMA_STEP:I = 0x5

.field private static final UNLOCK_PIN_BY_GSM_STEP:I = 0x6

.field private static final WAIT_REFRESH_TIME_OUT_MILLIS:I = 0xbb8

.field private static mContext:Landroid/content/Context;

.field private static mPhones:[Lcom/android/internal/telephony/PhoneBase;

.field private static mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private static sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# instance fields
.field private checkCardThread:Ljava/lang/Thread;

.field private hotSwapUnlockPin:Z

.field private isCheckingCard:Z

.field private mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field private mCardTypeResponse:Ljava/lang/String;

.field private mCdmaModemResetTimes:I

.field private mCdmaModemStatus:I

.field mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

.field private mGetPinPukNumType:I

.field private mGsmImsiResponse:Ljava/lang/String;

.field private mGsmModemResetTimes:I

.field private mGsmModemStatus:I

.field private mIntentPhoneoneType:I

.field private mIntentSwitchMode:I

.field private mIsUserSelectNet:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLock1:Ljava/lang/Object;

.field private final mLock2:Ljava/lang/Object;

.field private final mLock3:Ljava/lang/Object;

.field mNeedSwitchBindMode:Z

.field mNeedSwitchPhone:Z

.field private mNeetPowerOffCard:Z

.field mOperatePinPukByPhoneId:I

.field private mOperateSwitchSteps:[I

.field private mPinValues:[Ljava/lang/String;

.field private mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

.field private mPreferredNetwork:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterCdmaUnavailable:Z

.field private mRegisterClientNo:I

.field private mRegisterGSmUnavailable:Z

.field private mRuimInserted:Z

.field private mSelectNetNotificationRetries:I

.field private mSimInserted:Z

.field private mSlectNetTimes:I

.field private mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private final mSlotCardInfoLock:Ljava/lang/Object;

.field private mSlotConnectMode:I

.field protected mStateMonitor:Ljava/lang/Object;

.field private mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field private nextselect:[I

.field private nextselectEx:[I

.field private reCheckCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneBase;

    sput-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .prologue
    const/4 v7, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1550
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    .line 289
    new-array v5, v7, [Ljava/lang/String;

    aput-object v10, v5, v8

    aput-object v10, v5, v9

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    .line 292
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    .line 296
    iput v11, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 299
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 302
    iput v11, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 305
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 306
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    .line 309
    iput v11, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    .line 310
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    .line 313
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    .line 316
    iput v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 319
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    .line 321
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    .line 323
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;

    .line 325
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    .line 328
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    .line 355
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    .line 359
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterCdmaUnavailable:Z

    .line 360
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterGSmUnavailable:Z

    .line 362
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 363
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    .line 370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    .line 372
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    .line 373
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    .line 375
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    .line 376
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    .line 377
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    .line 380
    iput-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    .line 381
    iput-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    .line 383
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStateMonitor:Ljava/lang/Object;

    .line 384
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    .line 387
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    .line 391
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1551
    const-string v5, "CP_COMM: enter DualPhoneModeService add iPhoneModeService"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1552
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "DualPhoneModeServiceHandler"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1553
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1554
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    .line 1556
    new-array v5, v7, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1557
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v6, v5, v8

    .line 1558
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v8

    iput v11, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 1559
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v6, v5, v9

    .line 1560
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v9

    iput v11, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 1561
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    .line 1563
    new-array v5, v7, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1565
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .line 1566
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .line 1567
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    .line 1568
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 1570
    const/4 v0, -0x1

    .line 1571
    .local v0, batteryLevel:I
    const/4 v1, 0x0

    .line 1573
    .local v1, batteryVoltage:I
    iput v11, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 1574
    iput v11, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    .line 1575
    const-string v5, "CP_COMM: registerReceiver."

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1576
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1577
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1578
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1579
    const-string v5, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1582
    const-string v5, "yulong.intent.action.SIMCARD_SWITCH"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    const-string v5, "yulong.intent.action.reset_modem"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1584
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1586
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1588
    .local v3, pm:Landroid/os/PowerManager;
    if-eqz v3, :cond_2

    .line 1589
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getBatteryLevel(Landroid/os/PowerManager;)I

    move-result v0

    .line 1590
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batteryLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1591
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getBatteryVoltage(Landroid/os/PowerManager;)I

    move-result v1

    .line 1592
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batteryLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", batteryVoltage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1594
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPwrStateByBatPwr(II)I

    move-result v6

    iput v6, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 1600
    :goto_0
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1602
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0xb

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1603
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0xe

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1605
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0x18

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1607
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0xf

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1609
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0xc

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1611
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0xd

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1612
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0x17

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1615
    const-string v5, "iPhoneModeService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1616
    const-string v5, "iPhoneModeService"

    invoke-static {v5, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: iPhoneModeService is null, current process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1625
    :goto_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    .line 1626
    iget v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    if-ne v9, v5, :cond_0

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v9, v5, :cond_0

    .line 1627
    iput v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 1628
    iput v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    .line 1632
    :cond_0
    const-string v5, "gsm.sim.insert.state"

    const-string v6, "ABSENT"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string v5, "cdma.ruim.insert.state"

    const-string v6, "ABSENT"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1637
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v6

    aput-object v6, v5, v9

    .line 1639
    const-string v5, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nofitySlotCardInfo mSlotCardInfos[0]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mSlotCardInfos[1]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v11, :cond_1

    .line 1642
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    .line 1645
    :cond_1
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_4

    .line 1647
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0x3e

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1648
    const-string v5, "CP_COMM: liuyong add 2012-06-28 w8260 reset"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1655
    :goto_2
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-direct {v5, p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    .line 1657
    return-void

    .line 1596
    :cond_2
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iput v9, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 1597
    const-string v5, "get PowerManager service fail"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1620
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: iPhoneModeService is not null, current process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1650
    :cond_4
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0x3e

    invoke-interface {v5, v6, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    .line 292
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 372
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 373
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onBatteryInfoReceiver(II)V

    return-void
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onIccSwap(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$1302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    return-void
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    return v0
.end method

.method static synthetic access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V

    return-void
.end method

.method static synthetic access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    return v0
.end method

.method static synthetic access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$2400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V

    return-void
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    return v0
.end method

.method static synthetic access$2602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    return p1
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$3102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    return p1
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return v0
.end method

.method static synthetic access$3402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return p1
.end method

.method static synthetic access$3408(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return v0
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V

    return-void
.end method

.method static synthetic access$4002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    return p1
.end method

.method static synthetic access$402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$4200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    return p1
.end method

.method static synthetic access$4800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    return p1
.end method

.method static synthetic access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    return v0
.end method

.method static synthetic access$5102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    return p1
.end method

.method static synthetic access$5200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    return p1
.end method

.method private broadcastPwrMgrControl(II)V
    .locals 8
    .parameter "iCloseOrOpen"
    .parameter "operId"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: iCloseOrOpen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4468
    const/4 v0, 0x0

    .line 4469
    .local v0, iLeftSlotModemType:I
    const/4 v2, 0x0

    .line 4470
    .local v2, iRightSlotModemType:I
    const/4 v1, -0x1

    .line 4472
    .local v1, iPreferredSlotId:I
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getLowPowerCloseNetEnabled()Z

    move-result v4

    if-ne v4, v6, :cond_6

    .line 4474
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-nez v4, :cond_0

    .line 4476
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V

    .line 4477
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iput-boolean v6, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 4479
    :cond_0
    if-ne p2, v6, :cond_5

    .line 4481
    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-nez v4, :cond_3

    .line 4482
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4483
    const/4 v2, 0x0

    .line 4484
    const/4 v1, 0x0

    .line 4532
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPwrMgrControl send intent,iCloseOrOpen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",iLeftSlotModemType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",iRightSlotModemType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4535
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v0, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4536
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v2, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4537
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v1, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 4540
    new-instance v3, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.POWER_MANAGER_OPERATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4543
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "closeOrOpenNet"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4545
    const-string v4, "leftSlotModemType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4547
    const-string v4, "rightSlotModemTyp"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4549
    const-string v4, "preferredSlotId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4552
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4553
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 4485
    :cond_3
    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-ne v4, v6, :cond_4

    .line 4486
    const/4 v0, 0x0

    .line 4487
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4488
    const/4 v1, 0x1

    goto :goto_0

    .line 4489
    :cond_4
    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-ne v4, v7, :cond_1

    .line 4491
    const/4 v0, 0x0

    .line 4492
    const/4 v2, 0x0

    .line 4493
    const/4 v1, -0x1

    goto :goto_0

    .line 4495
    :cond_5
    if-ne p2, v7, :cond_2

    .line 4498
    const/4 v0, 0x0

    .line 4499
    const/4 v2, 0x0

    .line 4500
    const/4 v1, -0x1

    goto :goto_0

    .line 4504
    :cond_6
    if-ne p1, v6, :cond_8

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-eqz v4, :cond_8

    .line 4505
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 4507
    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v4, :cond_7

    .line 4509
    const/4 v0, 0x2

    .line 4513
    :goto_2
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4514
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v1, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_0

    .line 4511
    :cond_7
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    goto :goto_2

    .line 4516
    :cond_8
    const-string v4, "broadcastPwrMgrControl without any oper"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private broadcastSelectNetFinishIntent(Ljava/lang/String;I)V
    .locals 10
    .parameter "result"
    .parameter "errNo"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: broadcastSelectNetFinish, type = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", c = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", g = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", preSlotId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1904
    new-instance v1, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1906
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "selectNetResult"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    const/4 v2, -0x1

    .line 1911
    .local v2, mSlotConnectMode:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1912
    const/4 v2, 0x1

    .line 1918
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: broadcastSelectNetFinish, mSlotConnectMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1919
    const-string v3, "slotConnectMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1922
    const-string v3, "Success"

    if-ne p1, v3, :cond_7

    .line 1923
    const-string v6, "selectCdmaStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v5, :cond_5

    :cond_0
    move v3, v5

    :goto_1
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1926
    const-string v6, "selectGsmStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v8, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v8, :cond_6

    :cond_1
    move v3, v5

    :goto_2
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1929
    const-string v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1946
    :cond_2
    :goto_3
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1947
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserWishSelectedInfo.mLeftSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextselect[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserWishSelectedInfo.mRightSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextselect[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserWishSelectedInfo.mPreferredSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextselect[2] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v3, v6, :cond_9

    .line 1956
    const-string v3, "DualPhoneModeService"

    const-string v5, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 1977
    :goto_4
    return-void

    .line 1913
    :cond_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v3

    if-nez v3, :cond_4

    .line 1914
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1916
    :cond_4
    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 1923
    goto/16 :goto_1

    :cond_6
    move v3, v4

    .line 1926
    goto/16 :goto_2

    .line 1932
    :cond_7
    const-string v3, "TimeOut"

    if-eq p1, v3, :cond_8

    const-string v3, "RILError"

    if-ne p1, v3, :cond_2

    .line 1937
    :cond_8
    const-string v3, "selectCdmaStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1939
    const-string v3, "selectGsmStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1941
    const-string v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1943
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1959
    :cond_9
    const-string v3, "DualPhoneModeService"

    const-string v6, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1967
    :goto_5
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 1969
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v4

    if-eq v3, v9, :cond_a

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v5

    if-eq v3, v9, :cond_a

    .line 1971
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v5, v5, v8

    invoke-virtual {p0, v3, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_4

    .line 1963
    :catch_0
    move-exception v0

    .line 1965
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 1974
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_a
    const-string v3, "DualPhoneModeService"

    const-string v4, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot error"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private broadcastSyncMessageToRenew(I)V
    .locals 4
    .parameter "batteryStatus"

    .prologue
    const/4 v3, 0x0

    .line 1986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastSyncMessageToRenew "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1988
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1991
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1992
    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1993
    const-string v1, "batteryInOrOut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1995
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1996
    return-void
.end method

.method private canStartNet(I)Z
    .locals 2
    .parameter "curPwrState"

    .prologue
    .line 4368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: canStartNet curPwrState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4369
    const/4 v0, 0x1

    return v0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 5038
    const-string v0, "HOTSWAP: cancle timer"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 5039
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5041
    :cond_0
    return-void
.end method

.method private checkUserSelectValid(III)Z
    .locals 4
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3311
    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v2, :cond_1

    .line 3336
    :cond_0
    :goto_0
    return v0

    .line 3318
    :cond_1
    if-lt p3, v3, :cond_0

    if-gt p3, v1, :cond_0

    .line 3321
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 3331
    :cond_2
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    if-eq v2, v3, :cond_5

    .line 3332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3326
    :cond_3
    if-nez p3, :cond_4

    if-eqz p1, :cond_0

    :cond_4
    if-ne p3, v1, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 3336
    goto :goto_0
.end method

.method private checkWhetherNeedSwitchBindMode(IIII)Z
    .locals 5
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iLeftSlotModemTypeTemp"
    .parameter "iRightSlotModemTypeTemp"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 3383
    const/4 v0, -0x1

    .line 3386
    .local v0, connectMode:I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3435
    :cond_0
    :goto_0
    return v1

    .line 3390
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    .line 3394
    if-ne v0, v4, :cond_8

    .line 3395
    if-ne p3, v4, :cond_2

    if-eq p4, v4, :cond_0

    :cond_2
    if-nez p3, :cond_3

    if-eq p4, v4, :cond_0

    :cond_3
    if-ne p3, v4, :cond_4

    if-eqz p4, :cond_0

    .line 3400
    :cond_4
    if-eq p1, v4, :cond_5

    if-ne p2, v2, :cond_6

    .line 3402
    :cond_5
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    .line 3403
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    .line 3404
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    move v1, v2

    .line 3405
    goto :goto_0

    .line 3406
    :cond_6
    if-eq p1, v2, :cond_7

    if-ne p2, v4, :cond_0

    .line 3408
    :cond_7
    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    .line 3409
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    .line 3410
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    move v1, v2

    .line 3411
    goto :goto_0

    .line 3414
    :cond_8
    if-ne p3, v4, :cond_9

    if-eq p4, v2, :cond_9

    .line 3416
    iput v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    .line 3417
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move v1, v2

    .line 3418
    goto :goto_0

    .line 3420
    :cond_9
    if-nez v0, :cond_b

    .line 3421
    if-eq p1, v4, :cond_a

    if-ne p2, v2, :cond_0

    .line 3423
    :cond_a
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    move v1, v2

    .line 3424
    goto :goto_0

    .line 3426
    :cond_b
    if-ne v0, v2, :cond_0

    .line 3427
    if-eq p1, v2, :cond_c

    if-ne p2, v4, :cond_0

    .line 3429
    :cond_c
    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    move v1, v2

    .line 3430
    goto :goto_0
.end method

.method private checkWhetherNeedSwitchPhone(II)Z
    .locals 6
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 3341
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 3354
    :cond_0
    :goto_0
    return v1

    .line 3344
    :cond_1
    invoke-static {v2}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 3345
    .local v0, phoneOneType:I
    if-ne v0, v2, :cond_2

    if-eq p1, v5, :cond_3

    :cond_2
    if-le v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 3347
    :cond_3
    if-ne p1, v5, :cond_4

    .line 3348
    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    :goto_1
    move v1, v2

    .line 3352
    goto :goto_0

    .line 3350
    :cond_4
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    goto :goto_1
.end method

.method private convertCardState(I)I
    .locals 1
    .parameter "src"

    .prologue
    .line 1477
    const/4 v0, -0x1

    .line 1479
    .local v0, ret:I
    packed-switch p1, :pswitch_data_0

    .line 1509
    :goto_0
    :pswitch_0
    return v0

    .line 1481
    :pswitch_1
    const/4 v0, -0x1

    .line 1482
    goto :goto_0

    .line 1485
    :pswitch_2
    const/4 v0, 0x0

    .line 1486
    goto :goto_0

    .line 1489
    :pswitch_3
    const/4 v0, 0x1

    .line 1490
    goto :goto_0

    .line 1493
    :pswitch_4
    const/4 v0, 0x2

    .line 1494
    goto :goto_0

    .line 1497
    :pswitch_5
    const/4 v0, 0x3

    .line 1498
    goto :goto_0

    .line 1501
    :pswitch_6
    const/16 v0, 0xa

    .line 1502
    goto :goto_0

    .line 1479
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 4
    .parameter "phoneId"

    .prologue
    const/4 v3, 0x2

    .line 3587
    const/4 v0, 0x0

    .line 3589
    .local v0, slotId:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3590
    if-ne p1, v3, :cond_0

    .line 3591
    const/4 v0, 0x0

    .line 3606
    :goto_0
    return v0

    .line 3593
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3599
    :cond_1
    if-ne p1, v3, :cond_2

    .line 3600
    const/4 v0, 0x1

    goto :goto_0

    .line 3602
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 3556
    const/4 v0, 0x0

    .line 3558
    .local v0, phoneId:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3559
    if-nez p1, :cond_0

    .line 3560
    const/4 v0, 0x2

    .line 3575
    :goto_0
    return v0

    .line 3562
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3568
    :cond_1
    if-nez p1, :cond_2

    .line 3569
    const/4 v0, 0x1

    goto :goto_0

    .line 3571
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private enforcePhoneModemOper(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 4288
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4290
    return-void
.end method

.method private finishGetPinOrPukLeftNum(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastGetPinOrPukLeftNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2007
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 2008
    .local v0, slotId:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2009
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2014
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    .line 2020
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 2021
    return-void

    .line 2017
    :cond_0
    const-string v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getBatteryLevel(Landroid/os/PowerManager;)I
    .locals 6
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 1517
    :try_start_0
    const-class v2, Landroid/os/PowerManager;

    const-string v4, "getBatteryLevel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1518
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 1528
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :goto_1
    move v2, v3

    .line 1528
    goto :goto_0

    .line 1521
    :catch_1
    move-exception v0

    .line 1522
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1523
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1524
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1525
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1526
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBatteryVoltage(Landroid/os/PowerManager;)I
    .locals 6
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 1533
    :try_start_0
    const-class v2, Landroid/os/PowerManager;

    const-string v4, "getBatteryVoltage"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1534
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 1544
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :goto_1
    move v2, v3

    .line 1544
    goto :goto_0

    .line 1537
    :catch_1
    move-exception v0

    .line 1538
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1539
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1540
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1541
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1542
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getCardStatusByPhoneId(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, -0x1

    .line 3691
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3693
    .local v0, slotId:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3700
    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 3701
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3702
    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    .line 3708
    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3191
    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3193
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3194
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 3195
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 3206
    :goto_0
    return-void

    .line 3197
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0

    .line 3200
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 3201
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    goto :goto_0

    .line 3203
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .locals 2

    .prologue
    .line 1710
    const-class v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    if-nez v0, :cond_0

    .line 1711
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .line 1714
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1710
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 3539
    const-string v2, "CP_COMM: getITelephony."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3541
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3542
    .local v0, myBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3544
    .local v1, myTp:Lcom/android/internal/telephony/ITelephony;
    return-object v1
.end method

.method private getLowPowerCloseNetEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5108
    const/4 v0, 0x0

    .line 5109
    .local v0, flag:Z
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isLowPowerCloseNetwork"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 5111
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLowpowerCloseNetEnabled: flag =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 5112
    return v0

    .line 5109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getModemPowerStatus(I)I
    .locals 9
    .parameter "modemType"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 3963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter into getModemPowerStatus(), init state, mCdmaModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGsmModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3966
    if-ne v7, p1, :cond_2

    .line 3967
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    .line 3968
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 4004
    :cond_0
    :goto_0
    return v1

    .line 3971
    :cond_1
    const-string v2, "GET_CDMA_MODEM_STATUS"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3972
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    .line 3986
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3988
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3992
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3994
    if-ne v7, p1, :cond_4

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    .line 3996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma modem, power status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3997
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    .line 3974
    :cond_2
    if-ne v8, p1, :cond_0

    .line 3975
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    .line 3976
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    goto :goto_0

    .line 3979
    :cond_3
    const-string v2, "GET_GSM_MODEM_STATUS"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3980
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 3989
    :catch_0
    move-exception v0

    .line 3990
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 3992
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3998
    :cond_4
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    .line 4000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm modem, power status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4001
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    goto/16 :goto_0
.end method

.method private getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    .line 3521
    const/4 v0, 0x0

    .line 3522
    .local v0, i:I
    const/4 v2, 0x0

    .line 3523
    .local v2, myBinder:Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, myNS:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 3525
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 3526
    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 3527
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 3530
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_1
    return-object v3
.end method

.method private getPinPukNumByCdmaOrGsm()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x1

    .line 2396
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2398
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 2399
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V

    .line 2410
    :goto_0
    return-void

    .line 2403
    :cond_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2404
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0

    .line 2407
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getPwrStateByBatPwr(I)I
    .locals 4
    .parameter "nBatPwr"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x7

    const/4 v1, 0x3

    .line 4306
    const/4 v0, 0x0

    .line 4308
    .local v0, tempPwrState:I
    if-lt p1, v3, :cond_1

    .line 4309
    const/4 v0, 0x1

    .line 4320
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: BatteryVolt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",PwrState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4322
    return v0

    .line 4310
    :cond_1
    if-ge p1, v3, :cond_2

    if-le p1, v2, :cond_2

    .line 4312
    const/4 v0, 0x2

    goto :goto_0

    .line 4313
    :cond_2
    if-gt p1, v2, :cond_3

    if-le p1, v1, :cond_3

    .line 4315
    const/4 v0, 0x3

    goto :goto_0

    .line 4316
    :cond_3
    if-gt p1, v1, :cond_0

    .line 4317
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getPwrStateByBatPwr(II)I
    .locals 6
    .parameter "iLevel"
    .parameter "volt"

    .prologue
    .line 4326
    const/4 v0, 0x0

    .line 4328
    .local v0, tempPwrState:I
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    if-nez v4, :cond_0

    .line 4329
    const/4 v4, 0x0

    .line 4356
    :goto_0
    return v4

    .line 4334
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getVoltLevelType(I)I

    move-result v3

    .line 4335
    .local v3, voltLevelNormal:I
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getVoltLevelType(I)I

    move-result v2

    .line 4336
    .local v2, voltLevelCloseG:I
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getVoltLevelType(I)I

    move-result v1

    .line 4337
    .local v1, voltLevelCloseC:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: voltLevelNormal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",voltLevelCloseG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",voltLevelCloseC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4339
    const/16 v4, 0xb

    if-ge p1, v4, :cond_1

    if-ge p2, v3, :cond_1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getLowPowerCloseNetEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4340
    :cond_1
    const/4 v0, 0x1

    .line 4353
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    invoke-virtual {v4, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->setLevel(I)V

    .line 4355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PwrState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    move v4, v0

    .line 4356
    goto :goto_0

    .line 4341
    :cond_3
    const/4 v4, 0x4

    if-gt p1, v4, :cond_4

    .line 4342
    const/4 v0, 0x4

    goto :goto_1

    .line 4344
    :cond_4
    const/4 v0, 0x2

    .line 4345
    if-ge p2, v1, :cond_5

    .line 4346
    const/4 v0, 0x4

    goto :goto_1

    .line 4347
    :cond_5
    if-ge p2, v2, :cond_2

    .line 4348
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private getSlotConnectMode()I
    .locals 3

    .prologue
    .line 3784
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3785
    const/4 v1, 0x0

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 3786
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 3803
    :goto_0
    return v1

    .line 3789
    :cond_0
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3791
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3793
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_1

    .line 3794
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getSlotConnectMode()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3801
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotConnectMode, mSlotConnectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3803
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_0

    .line 3796
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getSynPinPukValidCount(III)I
    .locals 6
    .parameter "reqType"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 3030
    const/4 v1, -0x1

    .line 3033
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

    .line 3035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DualPhoneModeService::getSynPinPukValidCount(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3038
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 3039
    if-nez p1, :cond_1

    .line 3040
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-byte v1, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3070
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 3072
    return v1

    .line 3041
    :cond_1
    if-ne p1, v4, :cond_0

    .line 3042
    :try_start_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-byte v1, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    goto :goto_0

    .line 3045
    :cond_2
    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 3048
    if-eq p2, v4, :cond_3

    if-ne p2, v5, :cond_4

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 3051
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateCardStateToNativeService(II)I

    .line 3053
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3056
    :cond_4
    if-nez v1, :cond_0

    if-ne p1, v4, :cond_0

    .line 3059
    const/16 v2, 0xa

    invoke-virtual {p0, v2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateCardStateToNativeService(II)I

    .line 3062
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/16 v3, 0xa

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3066
    :catch_0
    move-exception v0

    .line 3067
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from getSynPinPukValidCount()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3664
    const/4 v0, 0x0

    .line 3666
    .local v0, iCardNum:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 3667
    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    .line 3668
    const/4 v1, -0x1

    .line 3679
    :goto_0
    return v1

    .line 3671
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    .line 3672
    add-int/lit8 v0, v0, 0x1

    .line 3675
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    .line 3676
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    .line 3679
    goto :goto_0
.end method

.method private isActivePhoneByPhoneId(I)I
    .locals 8
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 3720
    const/4 v1, 0x0

    .line 3721
    .local v1, slotId:I
    const/4 v0, 0x0

    .line 3724
    .local v0, radioState:Z
    if-ne p1, v3, :cond_2

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 3726
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3731
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 3734
    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    .line 3742
    :cond_1
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v2, v6, :cond_4

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v6

    if-nez v6, :cond_4

    .line 3744
    const-string v3, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    .line 3760
    :goto_1
    return v2

    .line 3727
    :cond_2
    if-ne p1, v4, :cond_0

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 3729
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

    .line 3738
    :cond_3
    const-string v3, "CP_COMM: invalid phone ID"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3749
    :cond_4
    const-string v2, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getCardInfoBySlotId == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    if-eqz v0, :cond_6

    .line 3753
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    .line 3754
    goto :goto_1

    :cond_5
    move v2, v4

    .line 3756
    goto :goto_1

    :cond_6
    move v2, v5

    .line 3760
    goto :goto_1
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 8
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 3919
    const/4 v3, 0x0

    .line 3921
    .local v3, result:I
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_2

    :cond_0
    move v4, v3

    .line 3951
    :cond_1
    :goto_0
    return v4

    .line 3927
    :cond_2
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 3929
    .local v2, phoneId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedSwitchToUnlockPin(), slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3932
    if-ne v2, v4, :cond_3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v5, v7, :cond_1

    :cond_3
    if-ne v2, v7, :cond_4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v7, :cond_1

    .line 3937
    :cond_4
    if-ne v2, v4, :cond_6

    .line 3938
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 3940
    .local v1, gsmModemStatus:I
    if-nez v1, :cond_5

    .line 3941
    const/4 v3, 0x1

    .end local v1           #gsmModemStatus:I
    :cond_5
    :goto_1
    move v4, v3

    .line 3951
    goto :goto_0

    .line 3944
    :cond_6
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 3946
    .local v0, cdmaModemStatus:I
    if-nez v0, :cond_5

    .line 3947
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4597
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4617
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4607
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 8
    .parameter "checkType"
    .parameter "result"
    .parameter "slotId"

    .prologue
    .line 4202
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 4207
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4208
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4210
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4211
    const-string v0, "COMM:notifyPinPukCheckResult,mGsmImsiResponse is not null"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4212
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseGsmCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 4215
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 4217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPinPukCheckResult(), mSlotCardInfoArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].mGsmImsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMCCMNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4220
    const-string v0, "saveInfoToNativeService(mCardType,mMCCMNC,mGsmOperId,SlotId)"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4221
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v5, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4226
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4230
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4232
    :try_start_1
    const-string v0, "notifyPinPukCheckResult(), test"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4233
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4235
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4236
    return-void

    .line 4226
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4235
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private notifyPinQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4095
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4096
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .line 4098
    .local v1, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4099
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    .line 4095
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4102
    .end local v1           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifyPukQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4138
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4139
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .line 4141
    .local v1, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4142
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    .line 4138
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4145
    .end local v1           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifySelectNetResult(IILjava/lang/String;)V
    .locals 3
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 4182
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4183
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .line 4185
    .local v1, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 4186
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendSelectNetResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    .line 4182
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4189
    .end local v1           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private onBatteryInfoReceiver(I)V
    .locals 3
    .parameter "iLevel"

    .prologue
    .line 4562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: onBatteryInfoReceiver -- iLevel =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4564
    if-nez p1, :cond_0

    .line 4565
    const-string v1, "CP_COMM: iLevel value is invalid!"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4575
    :goto_0
    return-void

    .line 4569
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPwrStateByBatPwr(I)I

    move-result v0

    .line 4570
    .local v0, newPwrState:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v0, v1, :cond_1

    .line 4571
    const-string v1, "CP_COMM: onBatteryInfoReceiver without any oper"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4574
    :cond_1
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->powerChangeOper(I)V

    goto :goto_0
.end method

.method private onBatteryInfoReceiver(II)V
    .locals 3
    .parameter "iLevel"
    .parameter "volt"

    .prologue
    .line 4578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: onBatteryInfoReceiver iLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4581
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4582
    :cond_0
    const-string v1, "CP_COMM: iLevel value is invalid!"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4588
    :goto_0
    return-void

    .line 4586
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPwrStateByBatPwr(II)I

    move-result v0

    .line 4588
    .local v0, newPwrState:I
    goto :goto_0
.end method

.method private onIccSwap(Ljava/lang/String;I)V
    .locals 14
    .parameter "simName"
    .parameter "simState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 4840
    const/4 v6, 0x0

    .line 4843
    .local v6, mSlotId:I
    if-eqz p2, :cond_0

    .line 4844
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4848
    :cond_0
    const-string v0, "persist.sys.sim1.switch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4849
    .local v12, simCard1Property:Ljava/lang/String;
    const-string v0, "persist.sys.sim2.switch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4850
    .local v13, simCard2Property:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP:simCard1Property ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simCard2Property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCheckingCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4853
    if-nez p2, :cond_b

    .line 4858
    const-string v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4859
    const/4 v6, 0x0

    .line 4867
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    iget v10, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 4868
    .local v10, mCardType:I
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v11

    .line 4869
    .local v11, phoneId:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: mCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4871
    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    .line 4872
    const-string v0, "cdma.ruim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4873
    const-string v0, "cdma.ruim.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 4875
    const-string v0, "HOTSWAP:remove card,clear ruim contacts by DualPhoenModeService"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4876
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->handlepullcard()V

    .line 4891
    :cond_1
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4893
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "msgFlag"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4894
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4896
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    if-eqz v0, :cond_6

    .line 4898
    monitor-enter p0

    .line 4899
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    .line 4900
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4983
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #mCardType:I
    .end local v11           #phoneId:I
    :goto_2
    return-void

    .line 4860
    :cond_2
    const-string v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4861
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4863
    :cond_3
    const-string v0, "HOTSWAP: fake simState = 0, return! "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 4877
    .restart local v10       #mCardType:I
    .restart local v11       #phoneId:I
    :cond_4
    const/4 v0, 0x2

    if-ne v11, v0, :cond_1

    .line 4878
    const/4 v0, 0x4

    if-ne v10, v0, :cond_5

    .line 4879
    const-string v0, "cdma.ruim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 4885
    :goto_3
    const-string v0, "gsm.sim.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4886
    const-string v0, "HOTSWAP:remove card,clear sim contacts by DualPhoenModeService"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4887
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->handlepullcard(III)V

    goto :goto_1

    .line 4882
    :cond_5
    const-string v0, "gsm.sim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto :goto_3

    .line 4900
    .restart local v8       #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4903
    :cond_6
    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4904
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const/4 v1, 0x0

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 4905
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const-string v1, ""

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 4906
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const-string v1, ""

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 4907
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-eqz v0, :cond_7

    .line 4908
    const-string v0, ""

    invoke-direct {p0, v0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 4909
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    .line 4913
    :cond_7
    const-string v0, "ABSENT"

    const-string v1, "cdma.ruim.insert.state"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ABSENT"

    const-string v1, "gsm.sim.insert.state"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4915
    const/4 v0, 0x1

    if-ne v11, v0, :cond_a

    .line 4916
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 4920
    :cond_8
    :goto_4
    const-string v0, "HOTSWAP:no card,close network firstly!"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4921
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4922
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4923
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4927
    :cond_9
    new-instance v9, Landroid/content/Intent;

    const-string v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4929
    .local v9, intent1:Landroid/content/Intent;
    const-string v0, "msgFlag"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4930
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 4917
    .end local v9           #intent1:Landroid/content/Intent;
    :cond_a
    const/4 v0, 0x2

    if-ne v11, v0, :cond_8

    .line 4918
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    goto :goto_4

    .line 4936
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #mCardType:I
    .end local v11           #phoneId:I
    :cond_b
    const-string v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const-string v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4938
    :cond_d
    const-string v0, "HOTSWAP: fake SimState > 0, return!"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4941
    :cond_e
    const-string v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4942
    const/4 v6, 0x0

    .line 4948
    :cond_f
    :goto_5
    new-instance v8, Landroid/content/Intent;

    const-string v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4950
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "msgFlag"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4951
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4954
    const-string v0, "HOTSWAP: sim insert,setDesiredRadioPower(false)"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4955
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 4956
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 4958
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    if-nez v0, :cond_11

    .line 4961
    monitor-enter p0

    .line 4962
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    .line 4963
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4964
    const-string v0, "yulong.hotswap.checkcard.finish"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4965
    const-string v0, "yulong.hotswap.checkcard.finish"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4966
    .local v7, checkCardTag:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: before hotSwapCheckCard(),set checkCardTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4968
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-virtual {v0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->setSlotId(I)V

    .line 4969
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    const-string v2, "mCheckCardService"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    .line 4970
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4972
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V

    .line 4973
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->startTimer()V

    .line 4974
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_2

    .line 4943
    .end local v7           #checkCardTag:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_10
    const-string v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4944
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 4963
    .restart local v8       #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 4976
    :cond_11
    monitor-enter p0

    .line 4977
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    .line 4978
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: isCheckingCard ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reCheckCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4978
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private onWaitRefreshTimedOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1462
    const-string v0, "enter into onWaitRefreshTimedOut()"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_1

    .line 1466
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->notifyBindSlots()V

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_0

    .line 1470
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->notifySwitchSlots()V

    goto :goto_0
.end method

.method private operateRadioCdmaAndGsm()V
    .locals 15

    .prologue
    const/16 v14, 0x9

    const/16 v13, 0x8

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2416
    const/4 v1, -0x1

    .line 2417
    .local v1, connectMode:I
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2418
    .local v0, cdmaRadioPower:Z
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v3, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2420
    .local v3, gsmRadioPower:Z
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v1

    .line 2422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter operateRadioCdmaAndGsm, mSlotConnectMode= "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", cdma = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", gsm = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2426
    if-eqz v1, :cond_0

    if-ne v1, v12, :cond_14

    .line 2427
    :cond_0
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v6, v7, :cond_2

    :cond_1
    if-nez v0, :cond_8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v6, :cond_8

    .line 2431
    :cond_2
    const-string v6, "enter operateRadioCdmaAndGsm cdma: no need to operate "

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2432
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 2433
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2436
    :cond_3
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v6, v13

    .line 2515
    :goto_0
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v6, v12, :cond_5

    :cond_4
    if-nez v3, :cond_11

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v6, :cond_11

    .line 2519
    :cond_5
    const-string v6, "enter operateRadioCdmaAndGsm gsm: no need to operate "

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2520
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v3, :cond_6

    .line 2521
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v7

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2524
    :cond_6
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v6, v14

    .line 2572
    :goto_1
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v6, v6, v13

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v6, v6, v14

    if-ne v6, v7, :cond_7

    .line 2574
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V

    .line 2576
    :cond_7
    return-void

    .line 2438
    :cond_8
    const/4 v4, 0x0

    .line 2440
    .local v4, is1xOrDoOnly:Z
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2442
    :cond_9
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v10, 0x48

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2443
    const-string v6, "waiting for get preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2444
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v9

    .line 2446
    :try_start_0
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v10, 0x1f40

    invoke-virtual {v6, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    :goto_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2452
    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    const/4 v9, 0x5

    if-eq v6, v9, :cond_a

    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    const/4 v9, 0x6

    if-eq v6, v9, :cond_a

    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    const/16 v9, 0xb

    if-ne v6, v9, :cond_b

    .line 2455
    :cond_a
    const-string v6, "operateRadioCdmaAndGsm: is1xOrDoOnly = true"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2456
    const/4 v4, 0x1

    .line 2461
    :cond_b
    if-nez v0, :cond_c

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isTestMode()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v6

    const/16 v9, 0xa

    if-ne v6, v9, :cond_c

    .line 2463
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    if-ne v6, v7, :cond_d

    .line 2464
    if-nez v4, :cond_c

    .line 2465
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v10, 0x47

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2468
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2469
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v9

    .line 2471
    :try_start_2
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v6, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2476
    :goto_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2477
    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2511
    :cond_c
    :goto_4
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v9, v6, v8

    if-nez v0, :cond_10

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2512
    const-string v6, "SLOT_PARALLEL_MODE setRadioPowerEx, cdma!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2447
    :catch_0
    move-exception v2

    .line 2449
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2451
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 2472
    :catch_1
    move-exception v2

    .line 2474
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 2476
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 2480
    :cond_d
    if-nez v4, :cond_c

    .line 2481
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2482
    const-string v6, "isRuWangMode = true"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2483
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v11, 0x47

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2496
    :goto_6
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2497
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v9

    .line 2499
    :try_start_6
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v6, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2504
    :goto_7
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2505
    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 2486
    :cond_e
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "lte_switch_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2487
    .local v5, result:I
    if-ne v5, v7, :cond_f

    .line 2488
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v10, 0x47

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v13, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_6

    .line 2491
    :cond_f
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v11, 0x47

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_6

    .line 2500
    .end local v5           #result:I
    :catch_2
    move-exception v2

    .line 2502
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 2504
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    :cond_10
    move v6, v8

    .line 2511
    goto/16 :goto_5

    .line 2526
    .end local v4           #is1xOrDoOnly:Z
    :cond_11
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v6, v9, :cond_12

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v6, v12, :cond_12

    .line 2528
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v6, v14

    .line 2529
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v7, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2530
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    .line 2531
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2533
    :cond_12
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v7

    if-nez v3, :cond_13

    move v8, v7

    :cond_13
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2534
    const-string v6, "SLOT_PARALLEL_MODE setRadioPowerEx, gsm!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2541
    :cond_14
    if-eqz v0, :cond_15

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v6, v7, :cond_16

    :cond_15
    if-nez v0, :cond_1b

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v6, :cond_1b

    .line 2545
    :cond_16
    const-string v6, "enter operateRadioCdmaAndGsm cdma: no need to operate "

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2546
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v6

    if-eqz v6, :cond_17

    if-nez v0, :cond_17

    .line 2547
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2550
    :cond_17
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v6, v13

    .line 2556
    :goto_8
    if-eqz v3, :cond_18

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v6, v12, :cond_19

    :cond_18
    if-nez v3, :cond_1d

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v6, :cond_1d

    .line 2560
    :cond_19
    const-string v6, "enter operateRadioCdmaAndGsm gsm: no need to operate "

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2561
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v6

    if-eqz v6, :cond_1a

    if-nez v3, :cond_1a

    .line 2562
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v7

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2565
    :cond_1a
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v6, v14

    goto/16 :goto_1

    .line 2552
    :cond_1b
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v9, v6, v8

    if-nez v0, :cond_1c

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2553
    const-string v6, "SLOT_CROSS_MODE setRadioPowerEx, cdma!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_8

    :cond_1c
    move v6, v8

    .line 2552
    goto :goto_9

    .line 2567
    :cond_1d
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v7

    if-nez v3, :cond_1e

    move v8, v7

    :cond_1e
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2568
    const-string v6, "SLOT_CROSS_MODE setRadioPowerEx, gsm!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private powerChangeOper(I)V
    .locals 8
    .parameter "newPwrState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: powerChangeOper newPwrState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "oldPwrState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4404
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v2, :cond_1

    .line 4405
    const-string v2, "CP_COMM: select network processing, return!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4456
    :cond_0
    :goto_0
    return-void

    .line 4411
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isDualIdle(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isDualIdle(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4413
    :cond_2
    const-string v2, "CP_COMM: phone is not idle, without any oper"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4416
    :catch_0
    move-exception v0

    .line 4417
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from isDualIdle()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    .line 4419
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v1, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 4420
    .local v1, oldPowerState:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iput p1, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 4421
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4424
    :pswitch_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 4426
    invoke-direct {p0, v5, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 4427
    :cond_4
    if-ne p1, v7, :cond_5

    .line 4429
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 4430
    :cond_5
    if-ne p1, v4, :cond_0

    .line 4432
    invoke-direct {p0, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 4437
    :pswitch_1
    if-ne p1, v7, :cond_6

    .line 4439
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 4440
    :cond_6
    if-ne p1, v4, :cond_0

    .line 4441
    invoke-direct {p0, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 4446
    :pswitch_2
    if-ne p1, v4, :cond_0

    .line 4447
    invoke-direct {p0, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 4421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerClientToNativeService()V
    .locals 2

    .prologue
    .line 1675
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 1677
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 1678
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return-void

    .line 1680
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 4268
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 4269
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4271
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4272
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 4273
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4275
    monitor-exit v3

    .line 4279
    :goto_1
    return-void

    .line 4271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4278
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resetTouchScreen()I
    .locals 3

    .prologue
    .line 4031
    const/4 v1, 0x0

    .line 4034
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 4036
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 4037
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->resetTouchScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4043
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 4039
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "cardType"
    .parameter "cdmaImsi"
    .parameter "mncMcc"
    .parameter "gsmImsi"
    .parameter "gsmOperId"
    .parameter "slotId"

    .prologue
    .line 3849
    const/4 v7, 0x0

    .line 3851
    .local v7, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveInfoToNativeService(), cardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cdmaImsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsmImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mncMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,gsmOperId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3856
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3858
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3859
    const-string v1, "myNativeSlotService != null"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 3861
    invoke-interface/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3868
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v7

    .line 3864
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 3
    .parameter "pin"
    .parameter "slotId"

    .prologue
    .line 3817
    const/4 v1, 0x0

    .line 3820
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3822
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3823
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->savePinToNativeService(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3830
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 3826
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private selectCloseModemCdmaOrGsm()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 2582
    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 2583
    .local v0, cdmaModemStatus:I
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2584
    .local v1, gsmModemStatus:I
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_close_network"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    move v2, v3

    .line 2586
    .local v2, isLowPower:Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter selectCloseModemCdmaOrGsm.isLowPower = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cdmaModemStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", gsmModemStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2590
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v5, :cond_7

    if-ne v0, v3, :cond_7

    .line 2592
    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-ne v3, v5, :cond_3

    if-ne v2, v3, :cond_3

    .line 2595
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2614
    :goto_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v5, :cond_c

    if-ne v1, v3, :cond_c

    iget v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-eq v5, v7, :cond_c

    .line 2617
    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-ne v3, v5, :cond_8

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    if-ne v2, v3, :cond_8

    .line 2621
    :cond_0
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2641
    :goto_2
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v9

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v8

    if-ne v4, v3, :cond_1

    .line 2643
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2646
    :cond_1
    return-void

    .end local v2           #isLowPower:Z
    :cond_2
    move v2, v4

    .line 2584
    goto/16 :goto_0

    .line 2598
    .restart local v2       #isLowPower:Z
    :cond_3
    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-nez v5, :cond_6

    if-eq v2, v3, :cond_5

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-ne v3, v5, :cond_6

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v5, :cond_6

    .line 2605
    :cond_5
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto :goto_1

    .line 2608
    :cond_6
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v5, v8

    goto :goto_1

    .line 2611
    :cond_7
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v5, v8

    goto :goto_1

    .line 2624
    :cond_8
    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-nez v5, :cond_b

    if-eq v2, v3, :cond_a

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-ne v3, v5, :cond_b

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v5, v4

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_b

    .line 2632
    :cond_a
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto/16 :goto_2

    .line 2635
    :cond_b
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v4, v9

    goto/16 :goto_2

    .line 2638
    :cond_c
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v4, v9

    goto/16 :goto_2
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 2284
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 2285
    .local v0, cdmaModemStatus:I
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2287
    .local v1, gsmModemStatus:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter selectOpenModemCdmaOrGsm(), cdmaModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,gsmModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2290
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2291
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2292
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2294
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v8

    .line 2322
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-ne v2, v4, :cond_1

    .line 2325
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V

    .line 2327
    :cond_1
    return-void

    .line 2296
    :cond_2
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2298
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v5

    goto :goto_0

    .line 2300
    :cond_3
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v2, :cond_0

    .line 2301
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 2303
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2305
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v2, v7

    .line 2311
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 2313
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2315
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x6

    aput v6, v2, v3

    goto :goto_0

    .line 2307
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v8

    .line 2308
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v7

    goto :goto_1

    .line 2317
    :cond_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v5

    .line 2318
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x6

    aput v4, v2, v3

    goto :goto_0
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4119
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4120
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4125
    :cond_0
    :goto_0
    return-void

    .line 4122
    :catch_0
    move-exception v0

    .line 4123
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendPukQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4162
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4163
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4168
    :cond_0
    :goto_0
    return-void

    .line 4165
    :catch_0
    move-exception v0

    .line 4166
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSelectNetResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 4253
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4254
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onSelectNetResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4259
    :cond_0
    :goto_0
    return-void

    .line 4256
    :catch_0
    move-exception v0

    .line 4257
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private set8KCardInsertState(I)V
    .locals 9
    .parameter "iSlotId"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x3d

    const/4 v6, 0x1

    .line 2649
    const/4 v2, 0x0

    .line 2650
    .local v2, newInsertedState:Z
    const-string v0, "ABSENT"

    .line 2651
    .local v0, RUIM_INSERT_STATE:Ljava/lang/String;
    const-string v1, "ABSENT"

    .line 2652
    .local v1, SIM_INSERT_STATE:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2653
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sparse-switch v3, :sswitch_data_0

    .line 2664
    :goto_0
    if-nez p1, :cond_2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    if-eq v2, v3, :cond_2

    .line 2665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2667
    if-eqz v2, :cond_1

    .line 2668
    const-string v3, "cdma.ruim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2684
    :goto_1
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 2769
    :cond_0
    :goto_2
    const-string v3, "cdma.ruim.insert.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2770
    const-string v3, "gsm.sim.insert.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RUIM_INSERT_STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SIM_INSERT_STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2772
    return-void

    .line 2658
    :sswitch_0
    const/4 v2, 0x1

    .line 2659
    goto :goto_0

    .line 2681
    :cond_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2685
    :cond_2
    if-ne p1, v6, :cond_0

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    if-eq v2, v3, :cond_0

    .line 2686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2688
    if-eqz v2, :cond_3

    .line 2689
    const-string v3, "gsm.sim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2704
    :goto_3
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto :goto_2

    .line 2701
    :cond_3
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 2707
    :cond_4
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sparse-switch v3, :sswitch_data_1

    .line 2717
    :goto_4
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v5, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 2720
    :cond_5
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    if-eq v2, v3, :cond_0

    .line 2721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2723
    if-eqz v2, :cond_6

    .line 2724
    const-string v3, "cdma.ruim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2740
    :goto_5
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    goto/16 :goto_2

    .line 2712
    :sswitch_1
    const/4 v2, 0x1

    .line 2713
    goto :goto_4

    .line 2737
    :cond_6
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 2742
    :cond_7
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v6, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 2745
    :cond_8
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    if-eq v2, v3, :cond_0

    .line 2746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2748
    if-eqz v2, :cond_9

    .line 2749
    const-string v3, "gsm.sim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2765
    :goto_6
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto/16 :goto_2

    .line 2762
    :cond_9
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 2653
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 2707
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 2
    .parameter "phone1"
    .parameter "phone2"
    .parameter "context"

    .prologue
    .line 1699
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1700
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1701
    sput-object p2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    .line 1702
    return-void
.end method

.method private setPreferredModemType(I)Z
    .locals 4
    .parameter "iPreferredModemType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setPreferredModemType iPreferredModemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3257
    const-string v0, "gsm.current.modem-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    if-ne v3, p1, :cond_0

    .line 3264
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    :goto_0
    return v2

    .line 3270
    :cond_0
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 1

    .prologue
    .line 4989
    const-string v0, "HOTSWAP: start timer"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4990
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    .line 4991
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimerTask:Ljava/util/TimerTask;

    .line 5033
    return-void
.end method

.method private switchPhoneoneType()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3359
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->dispose()V

    .line 3360
    const-string v1, "cdma"

    .line 3361
    .local v1, newPhoneType:Ljava/lang/String;
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3362
    const-string v1, "gsm"

    .line 3364
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3366
    .local v0, arEx:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3367
    return-void
.end method

.method private switchSlotBindMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 3444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter switchSlotBindMode,mIntentSwitchMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3445
    const/4 v1, 0x0

    .line 3447
    .local v1, success:Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3512
    :goto_0
    return v2

    .line 3452
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3454
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_1

    .line 3455
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-nez v3, :cond_3

    .line 3456
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3482
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 3488
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-nez v3, :cond_5

    .line 3489
    iput v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 3495
    :goto_2
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-ne v3, v2, :cond_7

    .line 3496
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 3497
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 3503
    :goto_3
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v2, v3, v5

    .line 3506
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v2, v1

    .line 3512
    goto :goto_0

    .line 3459
    .restart local v0       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-ne v3, v2, :cond_4

    .line 3460
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z

    move-result v1

    goto :goto_1

    .line 3463
    :cond_4
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-ne v3, v5, :cond_1

    .line 3464
    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 3490
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_5
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-ne v3, v2, :cond_6

    .line 3491
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_2

    .line 3493
    :cond_6
    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_2

    .line 3499
    :cond_7
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 3500
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    goto :goto_3

    .line 3478
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private unLockPinAfterModemReset()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 2333
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 2334
    .local v1, slotId:I
    const/4 v0, 0x0

    .line 2335
    .local v0, sleepSeconds:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: enter unLockPinAfterModemReset.,hotSwapUnlockPin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2351
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v7

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    if-eqz v2, :cond_4

    .line 2355
    :cond_0
    const/4 v0, 0x1

    .line 2356
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: unLockPinAfterModemReset,mPhones[0].mCi.supplyIccPin,mPinValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2362
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v2, v7

    .line 2363
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 2369
    :goto_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 2371
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    if-eqz v2, :cond_5

    .line 2374
    :cond_1
    if-nez v0, :cond_2

    .line 2375
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V

    .line 2378
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: unLockPinAfterModemReset,mPhones[1].mCi.supplyIccPin,mPinValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2379
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v2, v8

    .line 2380
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 2386
    :goto_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v7

    if-ne v2, v6, :cond_3

    .line 2388
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V

    .line 2390
    :cond_3
    return-void

    .line 2366
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v2, v7

    goto :goto_1

    .line 2383
    :cond_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v2, v8

    goto :goto_2

    .line 2357
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1792
    const/4 v0, 0x0

    .line 1794
    .local v0, errNo:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1796
    const-string v2, "Success"

    if-ne p1, v2, :cond_4

    .line 1797
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_0

    .line 1798
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPreferredModemType(I)Z

    .line 1801
    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V

    .line 1803
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_2

    .line 1804
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1809
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_3

    .line 1810
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1885
    :cond_1
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 1886
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 1887
    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    .line 1888
    return-void

    .line 1806
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    .line 1812
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    .line 1814
    :cond_4
    const-string v2, "RILError"

    if-eq p1, v2, :cond_5

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_1

    .line 1816
    :cond_5
    const/4 v1, 0x0

    .line 1818
    .local v1, i:I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xb

    if-gt v1, v2, :cond_7

    .line 1819
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_6

    .line 1820
    add-int/lit8 v0, v1, 0x1

    .line 1825
    :cond_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    .line 1818
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1828
    :cond_7
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateSelectedPreferredModemType()V

    .line 1829
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPreferredModemType(I)Z

    .line 1831
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_c

    .line 1832
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_8

    .line 1833
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1834
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1840
    :goto_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_9

    .line 1841
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1842
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1848
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_a

    .line 1849
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_1

    .line 1836
    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1837
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_3

    .line 1844
    :cond_9
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1845
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    .line 1850
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_b

    .line 1851
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1853
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1859
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_d

    .line 1860
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1861
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1867
    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_e

    .line 1868
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1869
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1875
    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_f

    .line 1876
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1863
    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1864
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    .line 1871
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1872
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_6

    .line 1877
    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    .line 1878
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1880
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1
.end method

.method private updateInfoWhenPullOutBattery(I)I
    .locals 2
    .parameter "status"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 4017
    if-nez p1, :cond_0

    .line 4018
    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 4019
    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    .line 4021
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4022
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4025
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 4027
    return v1
.end method

.method private updateSelectedPreferredModemType()V
    .locals 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1783
    :goto_0
    return-void

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v0, :cond_1

    .line 1773
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0

    .line 1775
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_2

    .line 1777
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0

    .line 1780
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0
.end method

.method private waitAfterOpenGsmModem()V
    .locals 5

    .prologue
    .line 1444
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1445
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1449
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radio_stae = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1451
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 1459
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1454
    .restart local v0       #i:I
    :cond_1
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    .end local v0           #i:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private waitAfterUnlockPin(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 1425
    const/16 v0, 0x3e8

    .line 1427
    .local v0, sleep_millis:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1428
    const/16 v0, 0xbb8

    .line 1436
    :cond_0
    :goto_0
    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :goto_1
    return-void

    .line 1429
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1430
    const/16 v0, 0x3e8

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private waitParseCardAfterUnlockPin(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 3217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: waitParseCardAfterUnlockPin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3219
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    .line 3224
    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3227
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3242
    :goto_0
    return v5

    .line 3234
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3236
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3240
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3237
    :catch_0
    move-exception v0

    .line 3238
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3229
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1660
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1661
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1662
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1663
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaModemReset(Landroid/os/Handler;)V

    .line 1664
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1665
    return-void
.end method

.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 6
    .parameter "iSlotId"

    .prologue
    .line 2787
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .line 2788
    .local v1, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v2, 0x0

    .line 2789
    .local v2, tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v1, :cond_0

    .line 2790
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    :try_start_1
    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    .line 2793
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2795
    if-nez v2, :cond_2

    .line 2796
    :try_start_2
    const-string v3, "CP_COMM: myNativeSlotService.getCardInfoBySlotId == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2798
    const/4 v3, 0x0

    .line 2844
    .end local v1           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2           #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :goto_0
    return-object v3

    .line 2793
    .restart local v1       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2       #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2827
    .end local v1           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2           #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v0

    .line 2829
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "CP_COMM: myNativeSlotService == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    .line 2833
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    if-nez v3, :cond_1

    .line 2834
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    .line 2844
    :cond_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto :goto_0

    .line 2801
    .restart local v1       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2       #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :cond_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM:iSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getCardInfoBySlotId == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2804
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aput-object v2, v3, p1

    .line 2806
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->set8KCardInsertState(I)V

    .line 2815
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2817
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2819
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    aput-object v4, v3, p1

    .line 2820
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 2823
    :cond_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameBySlotInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public getCardTypeBySlotId(I)I
    .locals 2
    .parameter "iSlotId"

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2858
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 2860
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  1234567890 iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2862
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 2867
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2869
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 1
    .parameter "phoneid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4808
    const/4 v0, 0x0

    return v0
.end method

.method public getImsi(I)Ljava/lang/String;
    .locals 4
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4778
    const/4 v0, -0x1

    .line 4780
    .local v0, slotId:I
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4781
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    .line 4783
    const-string v2, "Wrong slot id!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4800
    :cond_0
    :goto_0
    return-object v1

    .line 4787
    :cond_1
    if-ne p1, v3, :cond_3

    .line 4788
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 4789
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4791
    :cond_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    .line 4793
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 4794
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 4795
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4797
    :cond_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPinPukValidCount(II)I
    .locals 12
    .parameter "pinType"
    .parameter "slotId"

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x33

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 2883
    const/4 v4, -0x5

    .line 2885
    .local v4, result:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: getPinPukValidCount, pinType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSelectNet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2888
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v5, v11, :cond_0

    .line 2889
    const/4 v5, -0x4

    .line 3014
    :goto_0
    return v5

    .line 2892
    :cond_0
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_2

    :cond_1
    move v5, v4

    .line 2894
    goto :goto_0

    .line 2897
    :cond_2
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v3

    .line 2898
    .local v3, phoneId:I
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    if-ne v3, v7, :cond_3

    .line 2900
    const/4 v5, -0x3

    goto :goto_0

    .line 2902
    :cond_3
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 2903
    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPinPukValidCount:phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mSlotCardInfoArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].mCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2907
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    if-ne v3, v7, :cond_4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v7, :cond_5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v11, :cond_5

    :cond_4
    if-ne v3, v8, :cond_d

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 2918
    :cond_5
    const-string v5, "getPinPukValidCount: need swtich slot to get pin/puk valid count"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2919
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 2920
    .local v0, cdmaModemStatus:I
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2922
    .local v1, gsmModemStatus:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v5, 0x7

    if-gt v2, v5, :cond_6

    .line 2923
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v5, v2

    .line 2922
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2926
    :cond_6
    const/16 v2, 0x8

    :goto_2
    const/16 v5, 0xb

    if-gt v2, v5, :cond_7

    .line 2927
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v2

    .line 2926
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2930
    :cond_7
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 2931
    if-ne v3, v7, :cond_a

    .line 2932
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2937
    :cond_8
    :goto_3
    if-ne v0, v8, :cond_b

    .line 2940
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2946
    :goto_4
    if-ne v1, v8, :cond_c

    .line 2950
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2956
    :goto_5
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v5, v5, v9

    if-ne v5, v8, :cond_9

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v5, v5, v8

    if-ne v5, v8, :cond_9

    .line 2958
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    .line 2961
    :cond_9
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2962
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0xc350

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #cdmaModemStatus:I
    .end local v1           #gsmModemStatus:I
    .end local v2           #i:I
    :goto_6
    move v5, v4

    .line 3014
    goto/16 :goto_0

    .line 2933
    .restart local v0       #cdmaModemStatus:I
    .restart local v1       #gsmModemStatus:I
    .restart local v2       #i:I
    :cond_a
    if-ne v3, v8, :cond_8

    .line 2934
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    goto :goto_3

    .line 2943
    :cond_b
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v9

    goto :goto_4

    .line 2953
    :cond_c
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v8

    goto :goto_5

    .line 2967
    .end local v0           #cdmaModemStatus:I
    .end local v1           #gsmModemStatus:I
    .end local v2           #i:I
    :cond_d
    if-ne v3, v7, :cond_10

    .line 2969
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2970
    .restart local v1       #gsmModemStatus:I
    if-nez v1, :cond_f

    .line 2971
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    const/16 v5, 0xb

    if-gt v2, v5, :cond_e

    .line 2972
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v2

    .line 2971
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2975
    :cond_e
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v5, v11

    .line 2976
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v6, 0x7

    aput v9, v5, v6

    .line 2978
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2981
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2982
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x9c40

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 2987
    .end local v2           #i:I
    :cond_f
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto :goto_6

    .line 2990
    .end local v1           #gsmModemStatus:I
    :cond_10
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 2992
    .restart local v0       #cdmaModemStatus:I
    if-nez v0, :cond_12

    .line 2993
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    const/16 v5, 0xb

    if-gt v2, v5, :cond_11

    .line 2994
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v2

    .line 2993
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2997
    :cond_11
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v6, 0x3

    aput v9, v5, v6

    .line 2998
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v6, 0x7

    aput v9, v5, v6

    .line 3000
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 3003
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3004
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x9c40

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    .line 3009
    .end local v2           #i:I
    :cond_12
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto/16 :goto_6
.end method

.method notifyCradStateChangedIntent()V
    .locals 3

    .prologue
    .line 5101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5102
    .local v0, intentDual:Landroid/content/Intent;
    const-string v1, "ss"

    const-string v2, "PERSENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5103
    const-string v1, "reason"

    const-string v2, "NO REASON"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5104
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 5105
    return-void
.end method

.method public operateUniversalInterface(III)I
    .locals 3
    .parameter "actionId"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    .line 3622
    const/4 v0, 0x0

    .line 3624
    .local v0, result:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3625
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getValidCardNum()I

    move-result v0

    .line 3655
    :cond_0
    :goto_0
    return v0

    .line 3626
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3627
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3628
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3629
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3630
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 3631
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3632
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 3633
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3634
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 3635
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    .line 3636
    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    .line 3637
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3638
    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    .line 3639
    move v1, p2

    .line 3640
    .local v1, status:I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    .line 3641
    goto :goto_0

    .end local v1           #status:I
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 3642
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    .line 3643
    :cond_9
    const/16 v2, 0xc

    if-ne p1, v2, :cond_a

    .line 3644
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    .line 3647
    :cond_a
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 3648
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_b

    .line 3649
    const/4 v0, 0x0

    goto :goto_0

    .line 3651
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget v0, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto :goto_0
.end method

.method public registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5088
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5089
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5090
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5091
    monitor-exit v2

    .line 5092
    return-void

    .line 5091
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public savaAllCardInfoToNativeService(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)I
    .locals 1
    .parameter "slotInfo"
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4753
    const/4 v0, 0x0

    return v0
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 0
    .parameter "modetype"
    .parameter "powersate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4816
    return-void
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 11
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    const/16 v10, 0x33

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2038
    const/4 v1, 0x0

    .line 2039
    .local v1, i:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: DualPhoneModeService selectModemAndPreferredSlot, left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preSID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2047
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aput p1, v7, v4

    .line 2048
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aput p2, v7, v5

    .line 2049
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aput p3, v7, v6

    .line 2053
    move v2, p1

    .line 2054
    .local v2, iLeftSlotModemTypeTemp:I
    move v3, p2

    .line 2056
    .local v3, iRightSlotModemTypeTemp:I
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkUserSelectValid(III)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2277
    :goto_0
    return v4

    .line 2062
    :cond_0
    if-ne p1, v6, :cond_1

    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 2065
    const/4 p1, 0x1

    .line 2069
    :cond_1
    if-ne p1, v5, :cond_2

    invoke-static {v6}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v7

    if-ne v5, v7, :cond_2

    .line 2072
    const/4 p2, 0x2

    .line 2075
    :cond_2
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aput p1, v7, v4

    .line 2076
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aput p2, v7, v5

    .line 2077
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aput p3, v7, v6

    .line 2079
    const-string v7, "DualPhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsUserSelectNet = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-ne v7, v5, :cond_3

    move v4, v5

    .line 2082
    goto :goto_0

    .line 2087
    :cond_3
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 2088
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p1, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 2089
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p2, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 2090
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p3, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 2092
    if-nez p3, :cond_6

    .line 2093
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p1, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 2100
    :goto_1
    if-eq p1, v5, :cond_4

    if-ne v5, p2, :cond_8

    .line 2102
    :cond_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v5, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2107
    :goto_2
    if-eq p1, v6, :cond_5

    if-ne v6, p2, :cond_9

    .line 2109
    :cond_5
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v5, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2114
    :goto_3
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->canStartNet(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2115
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    move v4, v6

    .line 2116
    goto :goto_0

    .line 2094
    :cond_6
    if-ne p3, v5, :cond_7

    .line 2095
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p2, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_1

    .line 2097
    :cond_7
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_1

    .line 2104
    :cond_8
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v4, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_2

    .line 2111
    :cond_9
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v4, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_3

    .line 2119
    :cond_a
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v7

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v7

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v7

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-eq v7, v8, :cond_c

    .line 2122
    :cond_b
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 2123
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 2124
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 2142
    :cond_c
    const/4 v1, 0x0

    :goto_4
    const/16 v7, 0xb

    if-gt v1, v7, :cond_d

    .line 2143
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v7, v1

    .line 2142
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2146
    :cond_d
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x7

    aput v5, v7, v8

    .line 2148
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkWhetherNeedSwitchBindMode(IIII)Z

    move-result v7

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 2151
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v7, v7, v4

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v8, v8, v5

    invoke-direct {p0, v7, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkWhetherNeedSwitchPhone(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    .line 2152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: DualPhoneModeService mNeedSwitchBindMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIntentSwitchMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2156
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, p1, :cond_e

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v7, p2, :cond_e

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v7, v8, :cond_e

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    if-nez v7, :cond_e

    .line 2164
    const-string v4, "it is the same select as last select,return sucess"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2165
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v4, v5

    .line 2168
    goto/16 :goto_0

    .line 2171
    :cond_e
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v7, :cond_10

    .line 2172
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v6, v5, :cond_f

    .line 2173
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v4

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2174
    const-string v4, "wait close radio power!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2175
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v6

    .line 2177
    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v7, 0x2710

    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2182
    :goto_5
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2183
    const-string v4, "close radio power over!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2185
    :cond_f
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchPhoneoneType()V

    .line 2264
    :goto_6
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2266
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v4, :cond_13

    .line 2267
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x9c40

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_7
    move v4, v5

    .line 2277
    goto/16 :goto_0

    .line 2178
    :catch_0
    move-exception v0

    .line 2180
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 2182
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2191
    :cond_10
    iget v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-ne v7, v5, :cond_11

    .line 2192
    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v7, v4

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 2193
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 2198
    :goto_8
    const/4 v1, 0x0

    :goto_9
    if-gt v1, v6, :cond_12

    .line 2199
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v4, v1

    .line 2198
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2195
    :cond_11
    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v7, v4

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 2196
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    goto :goto_8

    .line 2202
    :cond_12
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V

    goto :goto_6

    .line 2272
    :cond_13
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7
.end method

.method public selectModemAndPreferredSlotId()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1718
    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    .line 1719
    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    .line 1720
    const-string v0, "DualPhoneModeService"

    const-string v1, "selectModemAndPreferredSlotId() after switch phone instance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1723
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1724
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1727
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x3e

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1728
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x18

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1731
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1763
    return-void
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .parameter "callback"
    .parameter "events"

    .prologue
    .line 4055
    if-eqz p2, :cond_2

    .line 4056
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 4058
    const/4 v3, 0x0

    .line 4060
    .local v3, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4061
    .local v1, b:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4063
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .local v4, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4064
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4066
    .end local v4           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 4077
    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    .line 4078
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4082
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :goto_2
    return-void

    .line 4063
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    goto :goto_0

    .line 4071
    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4072
    .end local v4           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    .line 4073
    iput-object p1, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    .line 4074
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4078
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 4080
    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 4078
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    goto :goto_3
.end method

.method public setCurConnectMode(I)V
    .locals 0
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4822
    return-void
.end method

.method public setDataFirewall(II)V
    .locals 0
    .parameter "phoneid"
    .parameter "responseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4829
    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 0
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4835
    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "phoneId"

    .prologue
    .line 3885
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3886
    .local v0, slotId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: setPinByIccLockSettings sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3901
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 3902
    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3904
    const/4 v1, 0x1

    return v1
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 6
    .parameter "pin"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 3086
    const/4 v2, 0x0

    .line 3087
    .local v2, result:Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 3088
    .local v1, phoneId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enter supplyDualPin, sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSelectNet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3090
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v4, :cond_0

    .line 3126
    :goto_0
    return v3

    .line 3093
    :cond_0
    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 3094
    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3097
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v2

    .line 3099
    if-eqz v2, :cond_3

    .line 3100
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3101
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const/4 v5, 0x1

    iput v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3102
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 3103
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 3104
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v3, p2

    .line 3106
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3107
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3111
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardTypeBySendAt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3122
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 3123
    const/4 v3, -0x1

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    :cond_2
    move v3, v2

    .line 3126
    goto :goto_0

    .line 3107
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3118
    :catch_0
    move-exception v0

    .line 3119
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 3113
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    iget-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 3114
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    iget-byte v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v3, :cond_1

    .line 3115
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "puk"
    .parameter "newPin"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 3142
    const/4 v2, 0x0

    .line 3143
    .local v2, result:Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 3144
    .local v1, phoneId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enter supplyDualPuk, sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSelectNet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3146
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v4, :cond_0

    .line 3184
    :goto_0
    return v3

    .line 3149
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 3150
    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3153
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 3155
    if-eqz v2, :cond_3

    .line 3156
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3157
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/4 v5, 0x1

    iput v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3158
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/16 v5, 0xa

    iput-byte v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3159
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 3160
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 3161
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v3, p3

    .line 3163
    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3164
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3168
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardTypeBySendAt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3180
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 3181
    const/4 v3, -0x1

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    :cond_2
    move v3, v2

    .line 3184
    goto :goto_0

    .line 3164
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3176
    :catch_0
    move-exception v0

    .line 3177
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 3170
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    iget-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3172
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    iget-byte v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v3, :cond_1

    .line 3173
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public unregisterForSwitchPhone(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5094
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5095
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5096
    monitor-exit v1

    .line 5097
    return-void

    .line 5096
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCardStateToNativeService(II)I
    .locals 4
    .parameter "cardState"
    .parameter "slotId"

    .prologue
    .line 4758
    const/4 v1, 0x0

    .line 4760
    .local v1, result:I
    const-string v2, "enter into updateCardStateToNativeService()"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4762
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 4764
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 4765
    const-string v2, "myNativeSlotService != null"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4766
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->updateCardStateToNativeService(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4772
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCardStateToNativeService(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4774
    return v1

    .line 4768
    :catch_0
    move-exception v2

    goto :goto_0
.end method
