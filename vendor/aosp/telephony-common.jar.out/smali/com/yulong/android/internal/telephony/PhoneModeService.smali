.class public Lcom/yulong/android/internal/telephony/PhoneModeService;
.super Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$Record;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    }
.end annotation


# static fields
.field public static final BATTERY_CDMA_WARN_LEVEL:I = 0x5

.field public static final BATTERY_GSM_WARN_LEVEL:I = 0x9

.field public static final BATTERY_NORMAL_LEVEL:I = 0xe

.field private static final EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_CDMA_RADIO_ON:I = 0xb

.field private static final EVENT_CDMA_RADIO_STATE_CHANGED:I = 0xe

.field private static final EVENT_CDMA_SUBSCRIPTION_DEACTIVE:I = 0x21

.field private static final EVENT_CDMA_SUBSCRIPTION_READY:I = 0x26

.field private static final EVENT_CDMA_SUBSCRIPTION_READY2:I = 0x24

.field private static final EVENT_CDMA_SUPPLYPIN_MODEMRESET:I = 0x15

.field private static final EVENT_CHECK_CDMA_RIL_POWERON_RESULT:I = 0x34

.field private static final EVENT_CHECK_GSM_RIL_POWERON_RESULT:I = 0x35

.field private static final EVENT_CLOSE_CDMA_MODEM_POWER:I = 0x1

.field private static final EVENT_CLOSE_GSM_MODEM_POWER:I = 0x2

.field private static final EVENT_C_LOST_CARD_REBOOT:I = 0x37

.field private static final EVENT_C_PHONE_DISCONNECT:I = 0x39

.field private static final EVENT_DELAY_LOST_CARD_REBOOT:I = 0x3b

.field private static final EVENT_FINISH_SELECT_NET:I = 0x32

.field private static final EVENT_FINISH_SWITCH_SLOT_MODE:I = 0x3

.field private static final EVENT_GET_CARD_TYPE_BY_AT:I = 0x11

.field private static final EVENT_GET_CDMA_MODEM_STATUS:I = 0x6

.field private static final EVENT_GET_GSM_IMSI_BY_AT:I = 0x10

.field private static final EVENT_GET_GSM_MODEM_STATUS:I = 0x7

.field private static final EVENT_GET_PINPUK_LEFT_NUM:I = 0x12

.field private static final EVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field private static final EVENT_GSM_RADIO_ON:I = 0xd

.field private static final EVENT_GSM_RADIO_STATE_CHANGED:I = 0xf

.field private static final EVENT_GSM_SUBSCRIPTION_DEACTIVE:I = 0x20

.field private static final EVENT_GSM_SUBSCRIPTION_READY:I = 0x27

.field private static final EVENT_GSM_SUBSCRIPTION_READY2:I = 0x25

.field private static final EVENT_GSM_SUPPLYPIN_MODEMRESET:I = 0x16

.field private static final EVENT_G_LOST_CARD_REBOOT:I = 0x38

.field private static final EVENT_G_PHONE_DISCONNECT:I = 0x3a

.field private static final EVENT_OPEN_CDMA_MODEM_POWER:I = 0x4

.field private static final EVENT_OPEN_CDMA_MODEM_POWER_PINPUK:I = 0x3c

.field private static final EVENT_OPEN_CDMA_SELECT_DONE:I = 0x1f

.field private static final EVENT_OPEN_GSM_MODEM_POWER:I = 0x5

.field private static final EVENT_OPEN_GSM_MODEM_POWER_PINPUK:I = 0x3d

.field private static final EVENT_OPEN_GSM_SELECT_DONE:I = 0x1e

.field private static final EVENT_SELECT_NET_TIME_OUT:I = 0x33

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x36

.field private static final EVENT_SMS_DELAY_TIME_OUT:I = 0x3f

.field private static final EVENT_SUBSCRIPTION_DEACTIVE_DONE:I = 0x3e

.field private static final EVENT_UNLOCK_PIN_BY_CDMA:I = 0x13

.field private static final EVENT_UNLOCK_PIN_BY_GSM:I = 0x14

.field private static final GET_PIN_OR_PUK_NUM_STEP:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneModeService"

.field private static final OPERATE_C_RADIO_STEP:I = 0x8

.field private static final OPERATE_G_RADIO_STEP:I = 0x9

.field private static final OPERATION_BEGIN:I = 0x0

.field private static final OPERATION_FINISH:I = 0x1

.field private static final POWER_DOWN_STATUS:I = 0x0

.field public static final POWER_MGR_LOW_PWR_POWEROFF_C:I = 0x4

.field public static final POWER_MGR_LOW_PWR_POWEROFF_G:I = 0x3

.field public static final POWER_MGR_NORMAL:I = 0x1

.field public static final POWER_MGR_UNINIT:I = 0x0

.field public static final POWER_MGR_WORNING:I = 0x2

.field private static final POWER_ON_STATUS:I = 0x1

.field private static final POWER_STATUS_UNINIT:I = -0x1

.field private static final PWR_ACTION_OFF:I = 0x0

.field private static final PWR_ACTION_ON:I = 0x1

.field private static final PWR_ACTION_RESET:I = 0x3

.field private static final REBOOT_SYSTEM_MILLIS:I = 0xbb8

.field private static final RESET_MODEM_MILLIS:I = 0x2710

.field private static final SELECT_CLOSE_C_MODEM_STEP:I = 0xa

.field private static final SELECT_CLOSE_G_MODEM_STEP:I = 0xb

.field private static final SELECT_NET_TIME_OUT_MILLIS:I = 0x7530

.field private static final SELECT_OPEN_C_MODEM_STEP:I = 0x3

.field private static final SELECT_OPEN_G_MODEM_STEP:I = 0x4

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SLOT_UNKNOWN_MODE:I = -0x1

.field private static final SUB_ACTIVATE:I = 0x1

.field private static final SUB_DEACTIVATE:I = 0x0

.field private static final SWITCH_CLOSE_C_MODEM_STEP:I = 0x0

.field private static final SWITCH_CLOSE_G_MODEM_STEP:I = 0x1

.field private static final SWITCH_SLOT_STEP:I = 0x2

.field private static final UNLOCK_PIN_BY_CDMA_STEP:I = 0x5

.field private static final UNLOCK_PIN_BY_GSM_STEP:I = 0x6

.field private static mContext:Landroid/content/Context;

.field private static mHasCardOnSlotOne:I

.field private static mHasCardOnSlotTwo:I

.field private static mPhones:[Lcom/android/internal/telephony/PhoneBase;

.field private static mPinValues:[Ljava/lang/String;

.field private static mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private static readycount:I

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;


# instance fields
.field private ActiveOrNoCdma:I

.field private ActiveOrNoGsm:I

.field isFirstIn_RUIM:Z

.field isFirstIn_SIM:Z

.field isHasCardforIndia:Z

.field private mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mCardTypeResponse:Ljava/lang/String;

.field private mCdmaModemResetTimes:I

.field private mCdmaModemStatus:I

.field private mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mGetPinPukNumType:I

.field private mGsmImsiResponse:Ljava/lang/String;

.field private mGsmModemResetTimes:I

.field private mGsmModemStatus:I

.field private mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mIsUserSelectNet:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLock1:Ljava/lang/Object;

.field private final mLock2:Ljava/lang/Object;

.field private final mLock3:Ljava/lang/Object;

.field mNeedSwitchBindMode:Z

.field private mNeedUnlockMode:I

.field mOperatePinPukByPhoneId:I

.field private mOperateSwitchSteps:[I

.field private mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/PhoneModeService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterClientNo:I

.field private mSelectLock:Z

.field private mSlotConnectMode:I

.field protected mStateMonitor:Ljava/lang/Object;

.field private mStateRadio:Z

.field private mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private nextselect:[I

.field private pm:Landroid/os/PowerManager;

.field private processStateCdma:I

.field private processStateGsm:I

.field private ruim_insert_state:Ljava/lang/String;

.field private sSmsDelayCount:I

.field private setsubmodestate:I

.field private silenceReboot:Z

.field private sim_insert_state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 300
    sput v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->readycount:I

    .line 303
    new-array v0, v1, [Lcom/android/internal/telephony/PhoneBase;

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    .line 315
    new-array v0, v1, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 324
    new-array v0, v1, [Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v1, 0x1

    aput-object v4, v0, v1

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    .line 380
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    .line 381
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1231
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    .line 56
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 57
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 58
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 59
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    .line 229
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 235
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    .line 236
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 291
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 292
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 293
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 294
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 295
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 296
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 297
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 298
    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 327
    new-array v1, v8, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    .line 331
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 335
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 338
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 341
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 343
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    .line 345
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 348
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    .line 350
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    .line 351
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    .line 382
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_SIM:Z

    .line 383
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    .line 385
    const-string v1, ""

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    .line 386
    const-string v1, ""

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    .line 387
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 388
    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    .line 391
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1232
    const-string v1, "CP_COMM: enter PhoneModeService add iPhoneModeService"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1233
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneModeServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1235
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    .line 1237
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1238
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    .line 1240
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1241
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1242
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    .line 1243
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1245
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 1246
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 1247
    const-string v1, "CP_COMM: registerReceiver."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1248
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1251
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x37

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1253
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 1254
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->createWakelock()V

    .line 1255
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    if-eqz v1, :cond_1

    .line 1273
    :goto_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1275
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0xb

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1276
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0xe

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1279
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v1, v2, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1281
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0xc

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1283
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0xd

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1286
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x27

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1288
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x26

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1292
    const-string v1, "iPhoneModeService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1293
    const-string v1, "iPhoneModeService"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: iPhoneModeService is null, current process:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1301
    :goto_1
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    if-nez v1, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerClientToNativeService()V

    .line 1305
    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1306
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1308
    return-void

    .line 1259
    :cond_1
    const-string v1, "get PowerManager service fail"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1297
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: iPhoneModeService is not null, current process:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 327
    :array_1
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
.end method

.method static synthetic access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->onBatteryInfoReceiver(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1200(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$2100()[Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return p1
.end method

.method static synthetic access$2208(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return p1
.end method

.method static synthetic access$2408(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    return v0
.end method

.method static synthetic access$2802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    return p1
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    return v0
.end method

.method static synthetic access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    return p1
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    return v0
.end method

.method static synthetic access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V

    return-void
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    return p1
.end method

.method static synthetic access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastPwrMgrControl(II)V
    .locals 7
    .parameter "iCloseOrOpen"
    .parameter "operId"

    .prologue
    const/4 v6, 0x1

    .line 5048
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

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5050
    const/4 v0, 0x0

    .line 5051
    .local v0, iLeftSlotModemType:I
    const/4 v2, 0x0

    .line 5052
    .local v2, iRightSlotModemType:I
    const/4 v1, -0x1

    .line 5053
    .local v1, iPreferredSlotId:I
    if-nez p1, :cond_5

    .line 5055
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-nez v4, :cond_0

    .line 5057
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 5058
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iput-boolean v6, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 5059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: broadcastPwrMgrControl iCloseOrOpen :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5065
    :cond_0
    if-ne p2, v6, :cond_4

    .line 5067
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    if-nez v4, :cond_3

    .line 5068
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 5069
    const/4 v2, 0x0

    .line 5070
    const/4 v1, 0x0

    .line 5094
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPwrMgrControl  mCardSelectedInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5121
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v0, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 5122
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v2, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 5123
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v1, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 5125
    new-instance v3, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.POWER_MANAGER_OPERATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5128
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "closeOrOpenNet"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5129
    const-string v4, "leftSlotModemType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5131
    const-string v4, "rightSlotModemTyp"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5133
    const-string v4, "preferredSlotId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPwrMgrControl  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5136
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5137
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 5071
    :cond_3
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    if-ne v4, v6, :cond_1

    .line 5072
    const/4 v0, 0x0

    .line 5073
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 5074
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5076
    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 5079
    const/4 v0, 0x0

    .line 5080
    const/4 v2, 0x0

    .line 5081
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 5085
    :cond_5
    if-ne p1, v6, :cond_6

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-eqz v4, :cond_6

    .line 5086
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 5087
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 5088
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 5089
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_0

    .line 5091
    :cond_6
    const-string v4, "broadcastPwrMgrControl without any oper"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private broadcastSelectNetFinishIntent(Ljava/lang/String;I)V
    .locals 9
    .parameter "result"
    .parameter "errNo"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1512
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

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", g = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", preSlotId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1519
    new-instance v1, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1521
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "selectNetResult"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const/4 v2, -0x1

    .line 1526
    .local v2, mSlotConnectMode:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1527
    const/4 v2, 0x1

    .line 1531
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

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1532
    const-string v3, "slotConnectMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1535
    const-string v3, "Success"

    if-ne p1, v3, :cond_6

    .line 1536
    const-string v6, "selectCdmaStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v5, :cond_4

    :cond_0
    move v3, v5

    :goto_1
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1540
    const-string v6, "selectGsmStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v8, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v8, :cond_5

    :cond_1
    move v3, v5

    :goto_2
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1544
    const-string v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1546
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1565
    :cond_2
    :goto_3
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1566
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCardSelectedInfo.mLeftSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextselect[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCardSelectedInfo.mRightSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextselect[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCardSelectedInfo.mPreferredSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextselect[2] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v3, v6, :cond_8

    .line 1576
    const-string v3, "PhoneModeService"

    const-string v5, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1594
    :goto_4
    return-void

    .line 1529
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 1536
    goto/16 :goto_1

    :cond_5
    move v3, v4

    .line 1540
    goto/16 :goto_2

    .line 1547
    :cond_6
    const-string v3, "TimeOut"

    if-eq p1, v3, :cond_7

    const-string v3, "RILError"

    if-ne p1, v3, :cond_2

    .line 1552
    :cond_7
    const-string v3, "selectCdmaStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1554
    const-string v3, "selectGsmStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1556
    const-string v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1558
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1581
    :cond_8
    const-string v3, "PhoneModeService"

    const-string v6, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :goto_5
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1592
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v5, v5, v8

    invoke-virtual {p0, v3, v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_4

    .line 1586
    :catch_0
    move-exception v0

    .line 1588
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method private broadcastSyncMessageToRenew(I)V
    .locals 4
    .parameter "batteryStatus"

    .prologue
    const/4 v3, 0x0

    .line 1602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastSyncMessageToRenew "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1608
    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1609
    const-string v1, "batteryInOrOut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1611
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1612
    return-void
.end method

.method private canStartNet(I)Z
    .locals 3
    .parameter "curPwrState"

    .prologue
    const/4 v0, 0x1

    .line 4957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: canStartNet curPwrState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4959
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lt v1, v2, :cond_0

    .line 4961
    const-string v1, "CP_COMM: close net operation, canStartNet:true"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4976
    :goto_0
    return v0

    .line 4966
    :cond_0
    if-ne p1, v0, :cond_1

    .line 4967
    const-string v1, "CP_COMM: canStartNet:true"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4972
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 4973
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 4974
    const-string v0, "CP_COMM: canStartNet:false"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4976
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSwitchNetWorkbydsds()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2868
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2869
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2870
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2895
    :goto_0
    return v0

    .line 2875
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2877
    goto :goto_0

    .line 2881
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2882
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[1]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2883
    goto :goto_0

    .line 2885
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 2890
    :cond_3
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhones[0].getState() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhones[1].getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2892
    goto/16 :goto_0

    .line 2894
    :cond_4
    const-string v0, "PhoneModeService"

    const-string v1, "canSwitchNetWorkbydsds() == true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2895
    goto/16 :goto_0
.end method

.method private checkUserSelectValid(III)Z
    .locals 8
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 4075
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 4076
    .local v0, dsdsType:I
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: checkUserSelectValid commtpye  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 4164
    :cond_1
    :goto_0
    return v1

    .line 4081
    :pswitch_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    .line 4084
    :cond_2
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-gt p1, v6, :cond_1

    if-gt p2, v6, :cond_1

    .line 4089
    if-nez p3, :cond_3

    if-eqz p1, :cond_1

    :cond_3
    if-ne p3, v2, :cond_4

    if-eqz p2, :cond_1

    .line 4092
    :cond_4
    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    if-eq v3, v7, :cond_0

    .line 4093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4099
    :pswitch_1
    if-ne p1, p2, :cond_5

    if-nez p2, :cond_1

    .line 4119
    :cond_5
    if-lt p3, v7, :cond_1

    if-gt p3, v2, :cond_1

    .line 4122
    if-nez p2, :cond_13

    if-nez p1, :cond_13

    .line 4133
    :cond_6
    if-ne p1, v6, :cond_7

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_12

    :cond_7
    if-ne p1, v2, :cond_8

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_12

    :cond_8
    if-ne p2, v6, :cond_9

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_12

    :cond_9
    if-ne p2, v2, :cond_a

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_12

    :cond_a
    if-ne p1, v6, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_b
    if-ne p1, v2, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_12

    :cond_c
    if-ne p2, v2, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_12

    :cond_d
    if-ne p2, v6, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_e
    if-ne p2, v6, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_12

    :cond_f
    if-ne p2, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_10
    if-ne p1, v2, :cond_11

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_11

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_11
    if-ne p1, v6, :cond_15

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_15

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v3, v2, :cond_15

    .line 4153
    :cond_12
    const-string v1, "CP_COMM: checkUserSelectValid APP NOT READY "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 4154
    goto/16 :goto_0

    .line 4127
    :cond_13
    if-nez p3, :cond_14

    if-eqz p1, :cond_1

    :cond_14
    if-ne p3, v2, :cond_6

    if-nez p2, :cond_6

    goto/16 :goto_0

    .line 4157
    :cond_15
    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    if-eq v3, v7, :cond_0

    .line 4158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4078
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkWhetherNeedSwitchBindMode(II)Z
    .locals 1
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"

    .prologue
    .line 4178
    const-string v0, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd checkWhetherNeedSwitchBindMode"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4180
    const/4 v0, 0x0

    return v0
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 4269
    const/4 v0, 0x0

    .line 4272
    .local v0, slotId:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4274
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 4275
    const/4 v0, 0x1

    .line 4286
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertPhoneIdToSlotId phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSlotConnectMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4290
    return v0

    .line 4277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4280
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 4281
    const/4 v0, 0x0

    goto :goto_0

    .line 4283
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 4238
    const/4 v0, 0x0

    .line 4240
    .local v0, phoneId:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4241
    if-nez p1, :cond_0

    .line 4242
    const/4 v0, 0x2

    .line 4256
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSlotIdToPhoneId slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSlotConnectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4258
    return v0

    .line 4244
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4250
    :cond_1
    if-nez p1, :cond_2

    .line 4251
    const/4 v0, 0x1

    goto :goto_0

    .line 4253
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5585
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5587
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5589
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 5591
    return-void
.end method

.method private enforcePhoneModemOper(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 4893
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4895
    return-void
.end method

.method private finishGetPinOrPukLeftNum(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastGetPinOrPukLeftNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1622
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 1623
    .local v0, slotId:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1624
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1630
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    int-to-byte v2, p1

    iput-byte v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 1631
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    .line 1637
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1638
    return-void

    .line 1634
    :cond_0
    const-string v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 3

    .prologue
    .line 3964
    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3967
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3968
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 3974
    :goto_0
    return-void

    .line 3971
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;
    .locals 2

    .prologue
    .line 1350
    const-class v1, Lcom/yulong/android/internal/telephony/PhoneModeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    if-nez v0, :cond_0

    .line 1351
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 1354
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1350
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 4222
    const-string v2, "CP_COMM: getITelephony."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4224
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4225
    .local v0, myBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4227
    .local v1, myTp:Lcom/android/internal/telephony/ITelephony;
    return-object v1
.end method

.method private getModemPowerStatus(I)I
    .locals 9
    .parameter "modemType"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 4621
    if-ne v7, p1, :cond_2

    .line 4622
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    .line 4623
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 4655
    :cond_0
    :goto_0
    return v1

    .line 4626
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    .line 4639
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4641
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4645
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4647
    if-ne v7, p1, :cond_4

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    .line 4649
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    .line 4628
    :cond_2
    if-ne v8, p1, :cond_0

    .line 4629
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    .line 4630
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0

    .line 4633
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 4642
    :catch_0
    move-exception v0

    .line 4643
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 4645
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4650
    :cond_4
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    .line 4652
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0
.end method

.method private getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 6

    .prologue
    .line 4202
    const/4 v0, 0x0

    .line 4203
    .local v0, i:I
    const/4 v2, 0x0

    .line 4204
    .local v2, myBinder:Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, myNS:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 4206
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 4207
    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 4208
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 4211
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getMyNativeService, myNS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4213
    return-object v3
.end method

.method private getPinPukNumByCdmaOrGsm()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x1

    .line 2158
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2160
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 2161
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    .line 2172
    :goto_0
    return-void

    .line 2165
    :cond_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2166
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0

    .line 2169
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getPinPukNumByCdmaOrGsm1()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 2178
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm1."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2179
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2180
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    .line 2186
    :goto_0
    return-void

    .line 2183
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getPwrStateByBatPwr(I)I
    .locals 6
    .parameter "nBatPwr"

    .prologue
    .line 4910
    const/4 v3, 0x0

    .line 4913
    .local v3, tempPwrState:I
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getBatteryLevelType(I)I

    move-result v2

    .line 4914
    .local v2, batteryLevelNormal:I
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getBatteryLevelType(I)I

    move-result v1

    .line 4915
    .local v1, batteryLevelCloseG:I
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getBatteryLevelType(I)I

    move-result v0

    .line 4916
    .local v0, batteryLevelCloseC:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: batteryLevelNormal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",batteryLevelCloseG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",batteryLevelCloseC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4918
    if-lt p1, v2, :cond_1

    .line 4919
    const/4 v3, 0x1

    .line 4944
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: BatteryVolt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PwrState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4946
    return v3

    .line 4920
    :cond_1
    if-ge p1, v2, :cond_2

    if-le p1, v1, :cond_2

    .line 4922
    const/4 v3, 0x2

    goto :goto_0

    .line 4923
    :cond_2
    if-gt p1, v1, :cond_3

    if-le p1, v0, :cond_3

    .line 4925
    const/4 v3, 0x3

    goto :goto_0

    .line 4926
    :cond_3
    if-gt p1, v0, :cond_0

    .line 4927
    const/4 v3, 0x4

    goto :goto_0
.end method

.method private getSlotConnectMode()I
    .locals 1

    .prologue
    .line 4463
    const-string v0, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd getSlotConnectMode"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4477
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method private getSynPinPukValidCount(III)I
    .locals 5
    .parameter "reqType"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    .line 3759
    const/4 v1, -0x1

    .line 3762
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

    .line 3763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSynPinPukValidCount count  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3765
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 3766
    if-nez p1, :cond_1

    .line 3768
    const/4 v1, -0x1

    .line 3792
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3794
    return v1

    .line 3769
    :cond_1
    if-ne p1, v4, :cond_0

    .line 3771
    const/4 v1, -0x1

    goto :goto_0

    .line 3774
    :cond_2
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 3776
    :try_start_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3779
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    int-to-byte v3, v1

    iput-byte v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3780
    if-ne p1, v4, :cond_0

    .line 3782
    if-nez v1, :cond_0

    .line 3783
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/16 v3, 0xa

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3788
    :catch_0
    move-exception v0

    .line 3789
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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4351
    const/4 v0, 0x0

    .line 4353
    .local v0, iCardNum:I
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 4354
    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 4355
    const/4 v1, -0x1

    .line 4366
    :goto_0
    return v1

    .line 4358
    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    .line 4359
    add-int/lit8 v0, v0, 0x1

    .line 4362
    :cond_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    .line 4363
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    .line 4366
    goto :goto_0
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 4574
    const/4 v0, 0x0

    .line 4610
    .local v0, result:I
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5218
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5236
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5227
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5228
    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 3
    .parameter "checkType"
    .parameter "result"
    .parameter "slotId"

    .prologue
    .line 4830
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 4832
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4834
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4837
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4842
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4843
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;I)I

    .line 4847
    :cond_0
    return-void

    .line 4837
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyPinQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4740
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4741
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 4743
    .local v1, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4744
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 4740
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4747
    .end local v1           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifyPukQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4776
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4777
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 4779
    .local v1, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4780
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 4776
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4783
    .end local v1           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifySelectNetResult(IILjava/lang/String;)V
    .locals 3
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 4813
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4814
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 4816
    .local v1, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 4817
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendSelectNetResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 4813
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4820
    .end local v1           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private onBatteryInfoReceiver(I)V
    .locals 3
    .parameter "iLevel"

    .prologue
    .line 5202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: onBatteryInfoReceiver iLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5204
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPwrStateByBatPwr(I)I

    move-result v0

    .line 5205
    .local v0, newPwrState:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v0, v1, :cond_0

    .line 5206
    const-string v1, "CP_COMM: onBatteryInfoReceiver without any oper"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5210
    :goto_0
    return-void

    .line 5209
    :cond_0
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->powerChangeOper(I)V

    goto :goto_0
.end method

.method private operateRadioCdmaAndGsm()V
    .locals 11

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2193
    .local v6, cdmaRadioPower:Z
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2194
    .local v8, gsmRadioPower:Z
    const/4 v9, 0x0

    .line 2196
    .local v9, ret:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter operateRadioCdmaAndGsm, cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter operateRadioCdmaAndGsm, OPERATE_C_RADIO_STEP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v3, 0x8

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OPERATE_G_RADIO_STEP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2202
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v7

    .line 2203
    .local v7, dsdsType:I
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: operateRadioCdmaAndGsm commtpye  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    packed-switch v7, :pswitch_data_0

    .line 2524
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2527
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 2528
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    .line 2530
    :cond_1
    return-void

    .line 2209
    :pswitch_0
    const/4 v2, 0x0

    .line 2210
    .local v2, substate:I
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_2
    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_8

    .line 2212
    :cond_3
    if-nez v6, :cond_4

    .line 2213
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2215
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2262
    :cond_5
    :goto_1
    if-eqz v8, :cond_6

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    :cond_6
    if-nez v8, :cond_e

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_e

    .line 2264
    :cond_7
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    goto :goto_0

    .line 2216
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2217
    const-string v0, "enter operateRadioCdmaAndGsm cdma OPERATION_FINISH "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2220
    :cond_9
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v0, :cond_a

    .line 2221
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2227
    :goto_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm  CDMA SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2239
    const/4 v0, 0x1

    if-eq v0, v9, :cond_1

    .line 2241
    if-nez v9, :cond_c

    .line 2242
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 2243
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2247
    :goto_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2248
    const-string v0, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2223
    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_2

    .line 2245
    :cond_b
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_3

    .line 2249
    :cond_c
    const/4 v0, -0x1

    if-ne v0, v9, :cond_5

    .line 2250
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 2251
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2255
    :goto_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2256
    const-string v0, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2253
    :cond_d
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_4

    .line 2266
    :cond_e
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-nez v8, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2268
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2269
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    goto/16 :goto_0

    .line 2266
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 2276
    .end local v2           #substate:I
    :pswitch_1
    const/4 v2, 0x0

    .line 2277
    .restart local v2       #substate:I
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    if-nez v0, :cond_23

    .line 2278
    if-eqz v6, :cond_10

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    :cond_10
    if-nez v6, :cond_17

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_17

    .line 2280
    :cond_11
    if-nez v6, :cond_12

    .line 2281
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2283
    :cond_12
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2339
    :cond_13
    :goto_6
    if-eqz v8, :cond_14

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    :cond_14
    if-nez v8, :cond_1d

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_1d

    .line 2341
    :cond_15
    if-nez v8, :cond_16

    .line 2342
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2344
    :cond_16
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    goto/16 :goto_0

    .line 2284
    :cond_17
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2285
    const-string v0, "enter operateRadioCdmaAndGsm cdma OPERATION_FINISH "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 2288
    :cond_18
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v0, :cond_19

    .line 2289
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2295
    :goto_7
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm  CDMA SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2306
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1f

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v9

    .line 2316
    const/4 v0, 0x1

    if-eq v0, v9, :cond_1

    .line 2318
    if-nez v9, :cond_1b

    .line 2319
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 2320
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2324
    :goto_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2325
    const-string v0, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2291
    :cond_19
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_7

    .line 2322
    :cond_1a
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_8

    .line 2326
    :cond_1b
    const/4 v0, -0x1

    if-ne v0, v9, :cond_13

    .line 2327
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 2328
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2332
    :goto_9
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2333
    const-string v0, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2330
    :cond_1c
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_9

    .line 2345
    :cond_1d
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 2346
    const-string v0, "enter operateRadioCdmaAndGsm GSM OPERATION_FINISH "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2349
    :cond_1e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v0, :cond_1f

    .line 2350
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2355
    :goto_a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm  GSM SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2366
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1e

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v9

    .line 2376
    const/4 v0, 0x1

    if-eq v0, v9, :cond_1

    .line 2378
    if-nez v9, :cond_21

    .line 2379
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 2380
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2384
    :goto_b
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2385
    const-string v0, "operateRadioCdmaAndGsm  GSM SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2352
    :cond_1f
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_a

    .line 2382
    :cond_20
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_b

    .line 2386
    :cond_21
    const/4 v0, -0x1

    if-ne v0, v9, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 2388
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2392
    :goto_c
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2393
    const-string v0, "operateRadioCdmaAndGsm  GSM SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2390
    :cond_22
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_c

    .line 2402
    :cond_23
    if-eqz v6, :cond_24

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    :cond_24
    if-nez v6, :cond_2b

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_2b

    .line 2404
    :cond_25
    if-nez v6, :cond_26

    .line 2405
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2408
    :cond_26
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2464
    :cond_27
    :goto_d
    if-eqz v8, :cond_28

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    :cond_28
    if-nez v8, :cond_31

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_31

    .line 2466
    :cond_29
    if-nez v8, :cond_2a

    .line 2467
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2469
    :cond_2a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    goto/16 :goto_0

    .line 2409
    :cond_2b
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 2410
    const-string v0, "enter operateRadioCdmaAndGsm CDMA OPERATION_FINISH "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_d

    .line 2413
    :cond_2c
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v0, :cond_2d

    .line 2414
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2420
    :goto_e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 2421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm  CDMA SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2430
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1f

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v9

    .line 2440
    const/4 v0, 0x1

    if-eq v0, v9, :cond_1

    .line 2442
    if-nez v9, :cond_2f

    .line 2443
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 2444
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2448
    :goto_f
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2449
    const-string v0, "operateRadioCdmaAndGsm  CDMA SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2416
    :cond_2d
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_e

    .line 2446
    :cond_2e
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_f

    .line 2450
    :cond_2f
    const/4 v0, -0x1

    if-ne v0, v9, :cond_27

    .line 2452
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 2453
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2457
    :goto_10
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2458
    const-string v0, "operateRadioCdmaAndGsm  CDMA SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2455
    :cond_30
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_10

    .line 2470
    :cond_31
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 2471
    const-string v0, "enter operateRadioCdmaAndGsm GSM OPERATION_FINISH "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2474
    :cond_32
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v0, :cond_33

    .line 2475
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2479
    :goto_11
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm  GSM SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2489
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1e

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v9

    .line 2499
    const/4 v0, 0x1

    if-eq v0, v9, :cond_1

    .line 2501
    if-nez v9, :cond_35

    .line 2502
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 2503
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2507
    :goto_12
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2508
    const-string v0, "operateRadioCdmaAndGsm  GSM SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2477
    :cond_33
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_11

    .line 2505
    :cond_34
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_12

    .line 2509
    :cond_35
    const/4 v0, -0x1

    if-ne v0, v9, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 2511
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2515
    :goto_13
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 2516
    const-string v0, "operateRadioCdmaAndGsm  GSM SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2513
    :cond_36
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_13

    .line 2205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private powerChangeOper(I)V
    .locals 9
    .parameter "newPwrState"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4986
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

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4990
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_2

    .line 4994
    :cond_0
    const-string v2, "CP_COMM: phone is not idle, without any oper"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5039
    :cond_1
    :goto_0
    return-void

    .line 4997
    :catch_0
    move-exception v0

    .line 4998
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from isDualIdle()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 5001
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x9c40

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5002
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v1, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 5003
    .local v1, oldPowerState:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iput p1, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 5004
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5007
    :pswitch_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 5009
    invoke-direct {p0, v6, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5010
    :cond_3
    if-ne p1, v8, :cond_4

    .line 5012
    invoke-direct {p0, v6, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5013
    :cond_4
    if-ne p1, v5, :cond_1

    .line 5015
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5020
    :pswitch_1
    if-ne p1, v8, :cond_5

    .line 5022
    invoke-direct {p0, v6, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5023
    :cond_5
    if-ne p1, v5, :cond_1

    .line 5024
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5029
    :pswitch_2
    if-ne p1, v5, :cond_1

    .line 5030
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5004
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
    .line 1318
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 1320
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 1321
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return-void

    .line 1323
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 4874
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 4875
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4877
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4878
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 4879
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4881
    monitor-exit v3

    .line 4885
    :goto_1
    return-void

    .line 4877
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4884
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

.method private resetNet()I
    .locals 3

    .prologue
    .line 5510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5511
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "yulong.intent.action.RESET_NET_OPERATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5512
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5513
    const/4 v1, 0x1

    return v1
.end method

.method private resetTouchScreen()I
    .locals 3

    .prologue
    .line 4681
    const/4 v1, 0x0

    .line 4684
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 4686
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 4687
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->resetTouchScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4693
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 4689
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "cardType"
    .parameter "mncMcc"
    .parameter "gsmOperId"
    .parameter "slotId"

    .prologue
    .line 4528
    const/4 v0, 0x0

    .line 4530
    .local v0, result:I
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd saveInfoToNativeService"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4532
    const/4 v1, 0x0

    return v1
.end method

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 2
    .parameter "pin"
    .parameter "slotId"

    .prologue
    .line 4500
    const/4 v0, 0x0

    .line 4502
    .local v0, result:I
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd savePinToNativeService"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4513
    const/4 v1, 0x0

    return v1
.end method

.method private selectCloseModemCdmaOrGsm()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2697
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2698
    .local v0, dsdsType:I
    const-string v2, "PhoneModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: selectCloseModemCdmaOrGsm commtpye  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    packed-switch v0, :pswitch_data_0

    .line 2858
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v9

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-ne v2, v5, :cond_0

    .line 2860
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2864
    :cond_0
    return-void

    .line 2703
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2704
    .local v1, gsmModemStatus:I
    const-string v2, "enter selectCloseModemCdmaOrGsm."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2706
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_2

    .line 2707
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2709
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2710
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2712
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2713
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2715
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v8

    .line 2721
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_4

    if-ne v1, v5, :cond_4

    .line 2723
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v5, :cond_3

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v5, :cond_3

    .line 2726
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto :goto_0

    .line 2717
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2718
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v8

    goto :goto_1

    .line 2732
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v9

    goto/16 :goto_0

    .line 2735
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v9

    goto/16 :goto_0

    .line 2742
    .end local v1           #gsmModemStatus:I
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectCloseModemCdmaOrGsm ActiveOrNoGsm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ActiveOrNoCdma = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mStateRadio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectCloseModemCdmaOrGsm mLeftSlotModemType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRightSlotModemType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2749
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-ne v2, v5, :cond_6

    .line 2754
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2756
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v2

    if-ne v2, v5, :cond_13

    .line 2758
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setModemPowerOperation single C not need"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2769
    :cond_5
    :goto_2
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2771
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2772
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2773
    const-string v2, "selectOpenModemCdmaOrGsm mCardSelectedInfo  close mode ok "

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2777
    :cond_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_16

    .line 2779
    :cond_7
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode in single"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2780
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v2

    if-ne v2, v5, :cond_15

    .line 2782
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode single C not need"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2786
    :goto_3
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode out single"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2795
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v2, v7, :cond_a

    .line 2796
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_9

    .line 2797
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2801
    :cond_9
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2802
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2803
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2805
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v2, v7, :cond_c

    .line 2806
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_b

    .line 2807
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2811
    :cond_b
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2812
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2813
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2817
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v2, v5, :cond_e

    .line 2818
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_d

    .line 2819
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2823
    :cond_d
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2824
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2825
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2829
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v2, v5, :cond_10

    .line 2830
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_f

    .line 2831
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2835
    :cond_f
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2836
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2837
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2840
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v2, v5, :cond_11

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v2, v5, :cond_11

    .line 2842
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2843
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2845
    :cond_11
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v2, v7, :cond_12

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v2, v7, :cond_12

    .line 2847
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2848
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2850
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectCloseModemCdmaOrGsm mStateRadio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2852
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v9

    .line 2853
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v8

    goto/16 :goto_0

    .line 2760
    :cond_13
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v2, :cond_14

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v2, :cond_5

    .line 2762
    :cond_14
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto/16 :goto_2

    .line 2784
    :cond_15
    invoke-virtual {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSubscriptionMode(I)I

    goto/16 :goto_3

    .line 2788
    :cond_16
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v2, :cond_8

    .line 2791
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode  dualstandby"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSubscriptionMode(I)I

    goto/16 :goto_4

    .line 2701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1964
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    .line 1965
    .local v1, dsdsType:I
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: selectOpenModemCdmaOrGsm commtpye  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    packed-switch v1, :pswitch_data_0

    .line 2097
    const-string v4, "CP_COMM: selectOpenModemCdmaOrGsm err!!!!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2100
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v9

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v10

    if-ne v4, v7, :cond_1

    .line 2103
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unLockPinAfterModemReset()V

    .line 2106
    :cond_1
    :goto_1
    return-void

    .line 1970
    :pswitch_0
    const/4 v0, 0x1

    .line 1971
    .local v0, cdmaModemStatus:I
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v3

    .line 1972
    .local v3, gsmModemStatus:I
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 1973
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1975
    const-string v4, "selectOpenModemCdmaOrGsm mPhones[1].setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1976
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1979
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 1980
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v10

    goto :goto_1

    .line 1983
    :cond_2
    const-string v4, "selectOpenModemCdmaOrGsm mPhones[0].setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1984
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1987
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v9

    goto :goto_0

    .line 1990
    :cond_3
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v4, :cond_0

    .line 1992
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v4, :cond_4

    .line 1993
    const-string v4, "selectOpenModemCdmaOrGsm  mIsUserSelectNet mPhones[0].setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1994
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1995
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 1997
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    :goto_2
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v10

    .line 2003
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v11

    .line 2010
    :goto_3
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 2012
    const-string v4, "selectOpenModemCdmaOrGsm  mIsUserSelectNet mPhones[1].setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2015
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2016
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2017
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2018
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2019
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v5, 0x6

    aput v8, v4, v5

    .line 2020
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v9

    goto/16 :goto_0

    .line 1998
    :catch_0
    move-exception v2

    .line 2000
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2006
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v10

    .line 2007
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v11

    goto :goto_3

    .line 2022
    :cond_5
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v9

    .line 2023
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v5, 0x6

    aput v7, v4, v5

    goto/16 :goto_0

    .line 2030
    .end local v0           #cdmaModemStatus:I
    .end local v3           #gsmModemStatus:I
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectOpenModemCdmaOrGsm mUserWishSelectedInfo mLeftSlotModemType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRightSlotModemType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectOpenModemCdmaOrGsm mCardSelectedInfo  mGsmRadio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCdmaRadio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2037
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2038
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2039
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v9

    .line 2040
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v5, 0x6

    aput v7, v4, v5

    .line 2041
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v10

    .line 2042
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v4, v11

    .line 2043
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-gtz v4, :cond_6

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v4, :cond_f

    .line 2045
    :cond_6
    const-string v4, "CP_COMM: enter selectOpenModemCdmaOrGsm.222"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2046
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v4, v7, :cond_c

    .line 2048
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_7

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_7

    .line 2050
    const-string v4, "PhoneModeService"

    const-string v5, "set mCardSelectedInfo.mCdmaRaido true with no card availible"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2053
    :cond_7
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_8

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v4, :cond_9

    .line 2055
    :cond_8
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2079
    :cond_9
    :goto_4
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_a

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v4, :cond_b

    .line 2081
    :cond_a
    const-string v4, "PhoneModeService"

    const-string v5, "sleep 1 second with one or two card avalible in selectOpenModemCdmaOrGsm()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2089
    :cond_b
    :goto_5
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v4, :cond_0

    .line 2092
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSubscriptionMode(I)I

    .line 2093
    const-string v4, "CP_COMM: selectOpenModemCdmaOrGsm setSubscriptionMode  dualstandby"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2059
    :cond_c
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_d

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v4, :cond_e

    .line 2061
    :cond_d
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2063
    :cond_e
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    .line 2065
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_4

    .line 2069
    :cond_f
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v4, :cond_9

    .line 2071
    const-string v4, "CP_COMM: enter selectOpenModemCdmaOrGsm.333"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2072
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    .line 2074
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v8, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2075
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v8, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto/16 :goto_4

    .line 2084
    :catch_1
    move-exception v2

    .line 2086
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 1968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendBroadcastandActiveOrDeactive(II)V
    .locals 3
    .parameter "phoneid"
    .parameter "type"

    .prologue
    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendBroadcastandActiveOrDeactive phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PHONEID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1220
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1223
    return-void
.end method

.method private sendBroadcastandSendMessageForReboot()V
    .locals 0

    .prologue
    .line 1211
    return-void
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4760
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4761
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4766
    :cond_0
    :goto_0
    return-void

    .line 4763
    :catch_0
    move-exception v0

    .line 4764
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4796
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4797
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4802
    :cond_0
    :goto_0
    return-void

    .line 4799
    :catch_0
    move-exception v0

    .line 4800
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSelectNetResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 4860
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4861
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onSelectNetResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4866
    :cond_0
    :goto_0
    return-void

    .line 4863
    :catch_0
    move-exception v0

    .line 4864
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static setCardInfoBySlotId(Lcom/android/internal/telephony/uicc/IccCardStatus;II)I
    .locals 10
    .parameter "CarInfo"
    .parameter "cardslotid"
    .parameter "phonetype"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2974
    move v1, p1

    .line 2975
    .local v1, iSlotId:I
    const/4 v0, 0x0

    .line 2976
    .local v0, i:I
    const/4 v3, 0x0

    .line 2977
    .local v3, j:I
    const/4 v4, -0x1

    .line 2978
    .local v4, returnvalue:I
    const/4 v2, 0x0

    .line 2979
    .local v2, index:I
    if-nez p0, :cond_2

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    .line 2980
    const-string v5, "PhoneModeService"

    const-string v6, "CardInfo = null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    sput v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    .line 2982
    sput v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    .line 3011
    :goto_0
    const-string v5, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHasCardOnSlotOne = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHasCardOnSlotTwo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    const-string v5, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: setCardInfoBySlotId: cardslotid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phonetype ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v8

    if-nez v5, :cond_0

    .line 3017
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v6, v5, v8

    .line 3018
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v6, v5, v9

    .line 3019
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3020
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3022
    :cond_0
    if-gez v1, :cond_5

    .line 3023
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3024
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v5

    if-gt v5, v9, :cond_1

    .line 3025
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3191
    :cond_1
    :goto_1
    return v4

    .line 2984
    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 2985
    const-string v5, "PhoneModeService"

    const-string v6, "CardInfo = null, cardslotid == 0"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    sput v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    goto/16 :goto_0

    .line 2987
    :cond_3
    if-nez p0, :cond_4

    if-ne p1, v9, :cond_4

    .line 2988
    const-string v5, "PhoneModeService"

    const-string v6, "CardInfo = null, cardslotid == 1"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    sput v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    goto/16 :goto_0

    .line 2991
    :cond_4
    const-string v5, "PhoneModeService"

    const-string v6, "CardInfo != null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3028
    :cond_5
    if-gez p2, :cond_6

    .line 3029
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    goto :goto_1

    .line 3033
    :cond_6
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v1

    if-nez v5, :cond_7

    .line 3034
    const-string v5, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: nostatic mSlotCardInfoArray[iSlotId] == null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3186
    :cond_7
    const-string v5, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: mSlotCardInfoArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: pin,cardtype returnvalue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static setCardInfoofImsiBySlotId(ILjava/lang/String;I)V
    .locals 6
    .parameter "slot"
    .parameter "imsi"
    .parameter "phonetype"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 2908
    const-string v1, "PhoneModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: setCardInfoofImsiBySlotId: slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phonetype ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 2912
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2913
    .local v0, dsdsType:I
    const-string v1, "PhoneModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: setCardInfoofImsiBySlotId commtpye  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    if-eqz v1, :cond_3

    .line 2916
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 2917
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 2919
    packed-switch v0, :pswitch_data_0

    .line 2961
    :cond_0
    :goto_0
    return-void

    .line 2921
    :pswitch_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 2923
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 2929
    :pswitch_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 2931
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto :goto_0

    .line 2938
    :cond_1
    if-nez p0, :cond_2

    .line 2939
    const-string v1, "yulong.left.g.ismi"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    :goto_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 2949
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 2951
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto/16 :goto_0

    .line 2943
    :cond_2
    const-string v1, "yulong.right.g.ismi"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2956
    :cond_3
    const-string v1, "PhoneModeService"

    const-string v2, "CP_COMM: setCardInfoBySlotId: mSlotCardInfoArray[slot] = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2919
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setCardInfoofPinBySlotId(ILjava/lang/String;)V
    .locals 1
    .parameter "slot"
    .parameter "pin"

    .prologue
    .line 3203
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 3204
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v0, p0

    .line 3206
    :cond_0
    return-void
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 2
    .parameter "phone1"
    .parameter "phone2"
    .parameter "context"

    .prologue
    .line 1339
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1340
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1341
    sput-object p2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    .line 1342
    return-void
.end method

.method private setPreferredModemType(I)Z
    .locals 4
    .parameter "iPreferredModemType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setPreferredModemType iPreferredModemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4044
    const-string v0, "gsm.current.modem-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    if-ne v3, p1, :cond_0

    .line 4051
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    :goto_0
    return v2

    .line 4057
    :cond_0
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSlotConnectMode(I)V
    .locals 0
    .parameter "SlotConnectMode"

    .prologue
    .line 4489
    return-void
.end method

.method private switchSlotBindMode()Z
    .locals 2

    .prologue
    .line 4189
    const/4 v0, 0x1

    .line 4191
    .local v0, success:Z
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd switchSlotBindMode"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4193
    return v0
.end method

.method private unLockPinAfterModemReset()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 2112
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2113
    .local v0, dsdsType:I
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: unLockPinAfterModemReset commtpye  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    packed-switch v0, :pswitch_data_0

    .line 2148
    :goto_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v8

    if-ne v3, v7, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v9

    if-ne v3, v7, :cond_0

    .line 2150
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm()V

    .line 2152
    :cond_0
    return-void

    .line 2118
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v2

    .line 2119
    .local v2, slotId:I
    const/4 v1, 0x0

    .line 2120
    .local v1, sleepSeconds:Z
    const-string v3, "CP_COMM: enter unLockPinAfterModemReset."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2122
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v9

    .line 2123
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v2

    .line 2125
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v8

    if-nez v3, :cond_2

    .line 2127
    if-nez v1, :cond_1

    .line 2129
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2135
    :cond_1
    :goto_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2138
    :cond_2
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v8

    goto :goto_0

    .line 2144
    .end local v1           #sleepSeconds:Z
    .end local v2           #slotId:I
    :pswitch_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v9

    .line 2145
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v8

    goto :goto_0

    .line 2130
    .restart local v1       #sleepSeconds:Z
    .restart local v2       #slotId:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1392
    const/4 v0, 0x0

    .line 1394
    .local v0, errNo:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->Isequal(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1400
    const-string v2, "CP_COMM: broadcastSelectNetFinish  uneuqal "

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1401
    const-string p1, "RILError"

    .line 1404
    :cond_0
    const-string v2, "Success"

    if-ne p1, v2, :cond_5

    .line 1405
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_1

    .line 1406
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1409
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 1411
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_3

    .line 1412
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1417
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_4

    .line 1418
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1499
    :cond_2
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1500
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1501
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1502
    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    .line 1503
    return-void

    .line 1414
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    .line 1420
    :cond_4
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    .line 1422
    :cond_5
    const-string v2, "RILError"

    if-eq p1, v2, :cond_6

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_2

    .line 1424
    :cond_6
    const/4 v1, 0x0

    .line 1426
    .local v1, i:I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xb

    if-gt v1, v2, :cond_8

    .line 1427
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_7

    .line 1428
    add-int/lit8 v0, v1, 0x1

    .line 1433
    :cond_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    .line 1426
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1436
    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v6, v2, :cond_9

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_9

    .line 1438
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1439
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1445
    :goto_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 1446
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_a

    .line 1447
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1448
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1454
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_b

    .line 1455
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1456
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1462
    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_c

    .line 1463
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1494
    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_2

    .line 1495
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1441
    :cond_9
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1442
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_3

    .line 1450
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1451
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    .line 1458
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1459
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    .line 1465
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1471
    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_e

    .line 1472
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1473
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1479
    :goto_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_f

    .line 1480
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1481
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1487
    :goto_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    .line 1488
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1475
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1476
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_7

    .line 1483
    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1484
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_8

    .line 1490
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6
.end method

.method private updateInfoWhenPullOutBattery(I)I
    .locals 2
    .parameter "status"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 4667
    if-nez p1, :cond_0

    .line 4668
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 4669
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 4671
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4672
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4675
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 4677
    return v1
.end method

.method private waitBeforeorAfterUnlockPin()V
    .locals 5

    .prologue
    .line 4018
    const-string v1, "CP_COMM: waitActiveCardBeforeUnlockPin "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4024
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v2

    .line 4026
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4030
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 4031
    return-void

    .line 4027
    :catch_0
    move-exception v0

    .line 4028
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 4030
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private waitParseCardAfterUnlockPin(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 3984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: waitParseCardAfterUnlockPin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3986
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    .line 3991
    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3993
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4007
    :goto_0
    return v5

    .line 3999
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4001
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4005
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

    .line 4002
    :catch_0
    move-exception v0

    .line 4003
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3994
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public ActivateCardBeforeUnlockPin(II)V
    .locals 4
    .parameter "slotId"
    .parameter "SlotConnectMode"

    .prologue
    const/4 v3, 0x1

    .line 5368
    const-string v1, "CP_COMM: enter activate net"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5370
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v3, :cond_3

    if-ne p2, v3, :cond_3

    .line 5372
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 5373
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_2

    .line 5376
    const-string v1, "CP_COMM: ActivateCardBeforeUnlockPin ,SET ONLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5378
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5386
    :cond_2
    :goto_0
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 5412
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: ActivateCardBeforeUnlockPin mNeedUnlockMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5415
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitBeforeorAfterUnlockPin()V

    .line 5416
    return-void

    .line 5379
    :catch_0
    move-exception v0

    .line 5381
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 5393
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 5394
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_4

    .line 5397
    const-string v1, "CP_COMM: ActivateCardBeforeUnlockPin ,SET ONLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5399
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5406
    :cond_4
    :goto_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    goto :goto_1

    .line 5400
    :catch_1
    move-exception v0

    .line 5402
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public DeactivateCardAfterUnlockPin(IIIZ)V
    .locals 6
    .parameter "slotId"
    .parameter "SlotConnectMode"
    .parameter "callback"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 5420
    const-string v1, "CP_COMM: enter deactivate net"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5421
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    monitor-enter v2

    .line 5423
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5427
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5428
    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin wait end"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5429
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_4

    .line 5431
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-nez p4, :cond_3

    .line 5449
    :goto_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 5450
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_2

    .line 5452
    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin ,SET OFFLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5454
    const-wide/16 v1, 0x3e8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5498
    :cond_2
    :goto_2
    return-void

    .line 5424
    :catch_0
    move-exception v0

    .line 5425
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 5427
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 5439
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 5441
    :try_start_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 5442
    const-string v1, "CP_COMM: wait untill deactive card1 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5446
    :goto_3
    :try_start_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 5443
    :catch_1
    move-exception v0

    .line 5444
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 5455
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 5457
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 5465
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_5

    if-nez p4, :cond_5

    .line 5483
    :goto_4
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 5484
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_2

    .line 5485
    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin ,SET OFFLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5487
    const-wide/16 v1, 0x3e8

    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 5488
    :catch_3
    move-exception v0

    .line 5490
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 5473
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 5475
    :try_start_8
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 5476
    const-string v1, "CP_COMM: wait untill deactive card2 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    .line 5480
    :goto_5
    :try_start_9
    monitor-exit v2

    goto :goto_4

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 5477
    :catch_4
    move-exception v0

    .line 5478
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5
.end method

.method declared-synchronized acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 5600
    monitor-enter p0

    :try_start_0
    const-string v1, "CP_COMM: Acquiring cpu wake lock"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5601
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5612
    :goto_0
    monitor-exit p0

    return-void

    .line 5605
    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5608
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "PhoneModeService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5611
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5600
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public canGetCardInfo()V
    .locals 1

    .prologue
    .line 5541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 5542
    return-void
.end method

.method public cdmaSubActiveNotify()V
    .locals 1

    .prologue
    .line 5537
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 5538
    return-void
.end method

.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 7
    .parameter "iSlotId"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 3216
    const-string v4, "enter getCardInfoBySlotId"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3218
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3219
    const-string v4, "persist.sys.fastbootup.mode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 3220
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    if-eqz v4, :cond_0

    .line 3221
    const-string v4, "getCardInfoBySlotId silenceReboot == true"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3269
    :goto_0
    return-object v3

    .line 3228
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .line 3229
    .local v1, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v2, 0x0

    .line 3230
    .local v2, tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v1, :cond_1

    .line 3231
    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    .line 3234
    if-nez v2, :cond_2

    .line 3235
    const-string v4, "CP_COMM: myNativeSlotService.getCardInfoBySlotId == null"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3264
    .end local v1           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2           #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v0

    .line 3266
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "CP_COMM: myNativeSlotService == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 3269
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto :goto_0

    .line 3240
    .restart local v1       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2       #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :cond_2
    :try_start_1
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

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3243
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aput-object v2, v3, p1

    .line 3252
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v3, v6, :cond_1

    .line 3254
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3256
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    aput-object v4, v3, p1

    .line 3257
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 3260
    :cond_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameBySlotInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getCardStatusByPhoneId(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, -0x1

    .line 4377
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4379
    .local v0, slotId:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4386
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4387
    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 4392
    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_0
.end method

.method public getCardTypeBySlotId(I)I
    .locals 2
    .parameter "iSlotId"

    .prologue
    .line 3574
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3576
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 3578
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  1234567890 iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3580
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 3585
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

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

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3587
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 2
    .parameter "phoneid"

    .prologue
    .line 5520
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataFirewall()I

    move-result v0

    return v0
.end method

.method public getIccLockEnabled(I)I
    .locals 6
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 5549
    const/4 v1, 0x0

    .line 5552
    .local v1, ret:Z
    if-ne p1, v4, :cond_2

    .line 5553
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 5554
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    .line 5565
    :cond_0
    :goto_0
    const-string v2, "PhoneModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccLockEnabled phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    if-ne v1, v5, :cond_4

    .line 5567
    const/4 v0, 0x1

    .line 5571
    .local v0, re:I
    :goto_1
    return v0

    .line 5556
    .end local v0           #re:I
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    goto :goto_0

    .line 5558
    :cond_2
    if-ne p1, v5, :cond_0

    .line 5559
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 5560
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v3

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    goto :goto_0

    .line 5562
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v3

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    goto :goto_0

    .line 5569
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #re:I
    goto :goto_1
.end method

.method public getPinPukValidCount(II)I
    .locals 10
    .parameter "pinType"
    .parameter "slotId"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 3599
    const/4 v4, -0x5

    .line 3601
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

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3604
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 3605
    const/4 v5, -0x4

    .line 3746
    :goto_0
    return v5

    .line 3608
    :cond_0
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_2

    :cond_1
    move v5, v4

    .line 3610
    goto :goto_0

    .line 3613
    :cond_2
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v3

    .line 3614
    .local v3, phoneId:I
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    if-ne v3, v9, :cond_3

    .line 3616
    const/4 v5, -0x3

    goto :goto_0

    .line 3619
    :cond_3
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 3640
    :cond_4
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3641
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3642
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    .line 3643
    .local v1, dsdstype:I
    const-string v5, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: getPinPukValidCount commtpye  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    packed-switch v1, :pswitch_data_0

    :goto_1
    move v5, v4

    .line 3746
    goto :goto_0

    .line 3647
    :pswitch_0
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    .line 3648
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    goto :goto_1

    .line 3713
    :pswitch_1
    if-ne v3, v9, :cond_6

    .line 3715
    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v2

    .line 3718
    .local v2, gsmModemStatus:I
    if-nez v2, :cond_5

    .line 3719
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto :goto_1

    .line 3725
    :cond_5
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto :goto_1

    .line 3729
    .end local v2           #gsmModemStatus:I
    :cond_6
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 3731
    .local v0, cdmaModemStatus:I
    if-nez v0, :cond_7

    .line 3732
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto :goto_1

    .line 3738
    :cond_7
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto :goto_1

    .line 3644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public gsmSubActiveNotify()V
    .locals 1

    .prologue
    .line 5532
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 5533
    return-void
.end method

.method public isActivePhoneByPhoneId(I)I
    .locals 7
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 4417
    const/4 v1, 0x0

    .line 4418
    .local v1, slotId:I
    const/4 v0, 0x0

    .line 4419
    .local v0, radioState:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isActivePhoneByPhoneId phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4420
    if-ne p1, v3, :cond_3

    .line 4421
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4425
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 4427
    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    .line 4434
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    if-nez v5, :cond_4

    .line 4435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: mSlotCardInfoArray[slotId] = null. phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 4453
    :cond_2
    :goto_1
    return v2

    .line 4422
    :cond_3
    if-ne p1, v4, :cond_0

    .line 4423
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

    .line 4441
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isActivePhoneByPhoneId phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "radioState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mSlotCardInfoArray[slotId].mCardType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4445
    if-eqz v0, :cond_6

    .line 4446
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    .line 4447
    goto :goto_1

    :cond_5
    move v2, v4

    .line 4449
    goto :goto_1

    .line 4453
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isHasCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4403
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    .line 4406
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSecdmodem(I)Z
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 5578
    invoke-static {p1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v0

    .line 5579
    .local v0, ret:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public operateUniversalInterface(III)I
    .locals 3
    .parameter "actionId"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    .line 4303
    const/4 v0, 0x0

    .line 4305
    .local v0, result:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 4306
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getValidCardNum()I

    move-result v0

    .line 4342
    :cond_0
    :goto_0
    return v0

    .line 4307
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 4308
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 4309
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 4310
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 4311
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 4312
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 4313
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 4314
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 4315
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 4316
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    .line 4317
    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    .line 4318
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 4319
    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    .line 4320
    move v1, p2

    .line 4321
    .local v1, status:I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    .line 4322
    goto :goto_0

    .end local v1           #status:I
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 4323
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    .line 4324
    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    .line 4325
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetNet()I

    move-result v0

    goto :goto_0

    .line 4326
    :cond_a
    const/16 v2, 0xb

    if-ne p1, v2, :cond_b

    .line 4329
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getIccLockEnabled(I)I

    move-result v0

    goto :goto_0

    .line 4330
    :cond_b
    const/16 v2, 0xc

    if-ne p1, v2, :cond_c

    .line 4331
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    .line 4334
    :cond_c
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 4335
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_d

    .line 4336
    const/4 v0, 0x0

    goto :goto_0

    .line 4338
    :cond_d
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget v0, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto :goto_0
.end method

.method public registerForCdmaSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5168
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5169
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5170
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5171
    monitor-exit v2

    .line 5173
    return-void

    .line 5171
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCdmaSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5141
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5142
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5143
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5144
    monitor-exit v2

    .line 5145
    return-void

    .line 5144
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5184
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5185
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5186
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5187
    monitor-exit v2

    .line 5188
    return-void

    .line 5187
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5154
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5155
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5156
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5157
    monitor-exit v2

    .line 5159
    return-void

    .line 5157
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized releaseCpuLock()V
    .locals 1

    .prologue
    .line 5619
    monitor-enter p0

    :try_start_0
    const-string v0, "CP_COMM: Releasing cpu wake lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5620
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 5621
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5622
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5624
    :cond_0
    monitor-exit p0

    return-void

    .line 5619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1364
    const-string v0, "CP_COMM: PhoneModeService  reset "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1365
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 1366
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 1367
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 1368
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 1369
    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 1370
    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 1371
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 1372
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1373
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1374
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1375
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1376
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1377
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1378
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1379
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1380
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1381
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1382
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1384
    return-void
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
    .line 5630
    const/4 v0, 0x0

    return v0
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 5
    .parameter "modetype"
    .parameter "powersate"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectCloseModemCdmaOrGsmInternal  phonetype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " powersate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2665
    if-ne p1, v4, :cond_1

    .line 2666
    if-nez p2, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    .line 2691
    :goto_0
    return-void

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2677
    :cond_1
    if-ne p1, v3, :cond_3

    .line 2678
    if-nez p2, :cond_2

    .line 2679
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2683
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2688
    :cond_3
    const-string v0, "selectCloseModemCdmaOrGsmInternal err phonetype "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 10
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    .line 1651
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1652
    const/4 v6, 0x3

    .line 1957
    :goto_0
    return v6

    .line 1655
    :cond_0
    const/4 v5, 0x0

    .line 1656
    .local v5, rilresetFlag:I
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rilresetFlag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mSelectLock = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1662
    :cond_1
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 1663
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 1664
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    .line 1665
    const/4 v6, 0x1

    goto :goto_0

    .line 1668
    :cond_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_4

    .line 1669
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sSmsDelayCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-gt v6, p1, :cond_3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-le v6, p2, :cond_4

    .line 1672
    :cond_3
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 1673
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 1674
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    .line 1675
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1676
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1678
    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 1679
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1682
    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 1685
    const-string v6, "ABSENT"

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "ABSENT"

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1687
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v6, p1, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v6, p2, :cond_7

    .line 1689
    :cond_6
    const-string v6, "PhoneModeService"

    const-string v7, "The last action : not airmode ,then close net and back"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 1691
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 1692
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    .line 1693
    const/4 p1, 0x0

    .line 1694
    const/4 p2, 0x0

    .line 1695
    const/4 p3, -0x1

    .line 1722
    :goto_1
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nextselect[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; nextselect[1] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; nextselect[2] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v3, 0x0

    .line 1731
    .local v3, i:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: PhoneModeService selectModemAndPreferredSlot, left = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", right = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preSID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1737
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_e

    .line 1738
    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    .line 1739
    const-string v6, "selectModemAndPreferredSlot india no mts CARD "

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1740
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1741
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1742
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1697
    .end local v3           #i:I
    :cond_7
    const-string v6, "PhoneModeService"

    const-string v7, "The last action: airMode OR  same choice"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 1699
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 1700
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    goto/16 :goto_1

    .line 1704
    :cond_8
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v6, :cond_9

    if-lez p1, :cond_9

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v6, p1, :cond_c

    :cond_9
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v6, :cond_a

    if-lez p2, :cond_a

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v6, p2, :cond_c

    :cond_a
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v6, p1, :cond_b

    if-nez p1, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v6, p2, :cond_d

    if-eqz p2, :cond_d

    .line 1708
    :cond_c
    const-string v6, "PhoneModeService"

    const-string v7, "mSlotConnectMode changes , what dsdstype gonna do: airmode and back"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 1710
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 1711
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    .line 1712
    const/4 p1, 0x0

    .line 1713
    const/4 p2, 0x0

    .line 1714
    const/4 p3, -0x1

    goto/16 :goto_1

    .line 1716
    :cond_d
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 1717
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 1718
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    goto/16 :goto_1

    .line 1746
    .restart local v3       #i:I
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkUserSelectValid(III)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1748
    const-string v6, "CP_COMM: selectModemAndPreferredSlot  SELECT_NET_CHOICE_ERROR"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1749
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1752
    :cond_f
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    .line 1753
    .local v1, dsdstype:I
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: selectModemAndPreferredSlot commtpye  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    packed-switch v1, :pswitch_data_0

    .line 1800
    :cond_10
    :goto_2
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1801
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1802
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p3, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1803
    if-nez p3, :cond_11

    .line 1804
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1807
    :cond_11
    const/4 v6, 0x1

    if-ne p3, v6, :cond_12

    .line 1808
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1811
    :cond_12
    const/4 v6, -0x1

    if-eq p3, v6, :cond_13

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-nez v6, :cond_14

    .line 1813
    :cond_13
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x1

    iput v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1816
    :cond_14
    const/4 v6, 0x1

    if-eq p1, v6, :cond_15

    const/4 v6, 0x1

    if-ne v6, p2, :cond_1d

    .line 1818
    :cond_15
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1823
    :goto_3
    const/4 v6, 0x2

    if-eq p1, v6, :cond_16

    const/4 v6, 0x2

    if-ne v6, p2, :cond_1e

    .line 1825
    :cond_16
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1830
    :goto_4
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canStartNet(I)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1831
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 1759
    :pswitch_0
    const/4 v6, 0x1

    if-eq p2, v6, :cond_17

    const/4 v6, 0x2

    if-ne p1, v6, :cond_18

    .line 1761
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode p = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1763
    const/4 v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1766
    :cond_18
    if-nez p1, :cond_19

    if-eqz p2, :cond_10

    .line 1770
    :cond_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode p = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1772
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1773
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1779
    :pswitch_1
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    goto/16 :goto_2

    .line 1784
    :pswitch_2
    const/4 v6, 0x2

    if-eq p1, v6, :cond_1a

    const/4 v6, 0x1

    if-ne p2, v6, :cond_1b

    .line 1786
    :cond_1a
    const/4 v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1789
    :cond_1b
    if-nez p1, :cond_1c

    if-eqz p2, :cond_10

    .line 1793
    :cond_1c
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1820
    :cond_1d
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto/16 :goto_3

    .line 1827
    :cond_1e
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto/16 :goto_4

    .line 1833
    :cond_1f
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1835
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v6

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v6, v7, :cond_20

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v6

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v6, v7, :cond_21

    .line 1838
    :cond_20
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1839
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1840
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1843
    :cond_21
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v6, p1, :cond_22

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v6, p2, :cond_22

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v6, v7, :cond_22

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v6, v7, :cond_22

    .line 1847
    const-string v6, "PhoneModeService"

    const-string v7, "shixiaogang selectModemAndPreferedSlotId() the two modemtypes are as same as the previous ones,just return FINISH."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v8, 0x32

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1856
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1874
    :cond_22
    const/4 v3, 0x0

    :goto_5
    const/16 v6, 0xb

    if-gt v3, v6, :cond_23

    .line 1875
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 1874
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1878
    :cond_23
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput v8, v6, v7

    .line 1880
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkWhetherNeedSwitchBindMode(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1883
    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v6, :cond_27

    .line 1884
    const/4 v4, 0x0

    .line 1885
    .local v4, ret:Z
    const/4 v0, -0x1

    .line 1886
    .local v0, cdmaModemStatus:I
    const/4 v2, -0x1

    .line 1891
    .local v2, gsmModemStatus:I
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 1892
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v2

    .line 1895
    const/4 v6, 0x1

    if-ne v0, v6, :cond_25

    .line 1898
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v4

    .line 1905
    :goto_6
    const/4 v6, 0x1

    if-ne v2, v6, :cond_26

    .line 1909
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v4

    .line 1916
    :goto_7
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_24

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_24

    .line 1918
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchSlotBindMode()Z

    .line 1945
    .end local v0           #cdmaModemStatus:I
    .end local v2           #gsmModemStatus:I
    .end local v4           #ret:Z
    :cond_24
    :goto_8
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1946
    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v6, :cond_2a

    .line 1947
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v8, 0x33

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x9c40

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1957
    :goto_9
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1902
    .restart local v0       #cdmaModemStatus:I
    .restart local v2       #gsmModemStatus:I
    .restart local v4       #ret:Z
    :cond_25
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_6

    .line 1913
    :cond_26
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_7

    .line 1925
    .end local v0           #cdmaModemStatus:I
    .end local v2           #gsmModemStatus:I
    .end local v4           #ret:Z
    :cond_27
    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28

    .line 1926
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 1927
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 1933
    :goto_a
    const/4 v3, 0x0

    :goto_b
    const/4 v6, 0x2

    if-gt v3, v6, :cond_29

    .line 1934
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x1

    aput v7, v6, v3

    .line 1933
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1929
    :cond_28
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 1930
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    goto :goto_a

    .line 1936
    :cond_29
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v7, 0x7530

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1937
    const-string v6, "PhoneModeService"

    const-string v7, "mSelectLock = true"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1942
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    goto :goto_8

    .line 1952
    :cond_2a
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v8, 0x33

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x9c40

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 1756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .parameter "callback"
    .parameter "events"

    .prologue
    .line 4703
    if-eqz p2, :cond_2

    .line 4704
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 4706
    const/4 v3, 0x0

    .line 4708
    .local v3, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4709
    .local v1, b:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4711
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .local v4, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4712
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4714
    .end local v4           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 4725
    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    .line 4726
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4730
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_2
    return-void

    .line 4711
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_0

    .line 4719
    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4720
    .end local v4           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    .line 4721
    iput-object p1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    .line 4722
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4726
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

    .line 4728
    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 4726
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_3
.end method

.method public setCurConnectMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 5501
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 5502
    return-void
.end method

.method public setDataFirewall(II)V
    .locals 2
    .parameter "phoneid"
    .parameter "responseCode"

    .prologue
    .line 5527
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneBase;->setDataFirewall(I)Z

    .line 5528
    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 5505
    const-string v0, "yulong.net.select"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5507
    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "phoneId"

    .prologue
    .line 4546
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4547
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

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4550
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 4552
    if-nez v0, :cond_0

    .line 4553
    const-string v1, "yulong.left.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 4563
    const/4 v1, 0x1

    return v1

    .line 4557
    :cond_0
    const-string v1, "yulong.right.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSilenceRebootFlag()V
    .locals 1

    .prologue
    .line 5545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 5546
    return-void
.end method

.method setSubscriptionMode(I)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSubscriptionMode  mode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2628
    if-ne p1, v4, :cond_0

    .line 2656
    :goto_0
    return v1

    .line 2645
    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2646
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x36

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2648
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2649
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V

    .line 2656
    :goto_1
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    monitor-exit v2

    goto :goto_0

    .line 2657
    .end local v0           #callback:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2653
    .restart local v0       #callback:Landroid/os/Message;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 7
    .parameter "pin"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x0

    .line 3806
    const/4 v3, 0x0

    .line 3807
    .local v3, result:Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 3808
    .local v2, phoneId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: enter supplyDualPin, sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSelectNet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3810
    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_0

    .line 3878
    :goto_0
    return v4

    .line 3813
    :cond_0
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3814
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3818
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3820
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {p0, p2, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActivateCardBeforeUnlockPin(II)V

    .line 3821
    const-string v4, "CP_COMM: phone is activated ,start supplyDualpin"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3823
    const-wide/16 v4, 0x5dc

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3829
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v3

    .line 3831
    if-eqz v3, :cond_6

    .line 3832
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3833
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 3834
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 3835
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v4, p2

    .line 3837
    if-nez p2, :cond_5

    .line 3838
    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3851
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 3860
    :cond_2
    :goto_3
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3862
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supplyDualPin:  CPDefaultRunMode.getDefault().isRuWangMode() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3865
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    const/16 v5, 0x3e

    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3874
    :cond_3
    :goto_4
    if-nez v3, :cond_4

    .line 3875
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    :cond_4
    move v4, v3

    .line 3878
    goto/16 :goto_0

    .line 3824
    :catch_0
    move-exception v0

    .line 3826
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3870
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 3871
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_4

    .line 3842
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_5
    :try_start_4
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3853
    :cond_6
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, p2

    .line 3854
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 3855
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v4, :cond_2

    .line 3856
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "puk"
    .parameter "newPin"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x0

    .line 3891
    const/4 v3, 0x0

    .line 3892
    .local v3, result:Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 3893
    .local v2, phoneId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: enter supplyDualPuk, sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSelectNet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3895
    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_0

    .line 3957
    :goto_0
    return v4

    .line 3898
    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3899
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3903
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3905
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {p0, p3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActivateCardBeforeUnlockPin(II)V

    .line 3906
    const-string v4, "CP_COMM: phone is activated ,start supplyDualpin"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3908
    const-wide/16 v4, 0x5dc

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3914
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 3916
    if-eqz v3, :cond_6

    .line 3917
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3918
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/16 v5, 0xa

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3919
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 3920
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 3921
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v4, p3

    .line 3923
    if-nez p3, :cond_5

    .line 3924
    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3936
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 3945
    :cond_2
    :goto_3
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3946
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    const/16 v5, 0x3e

    invoke-virtual {p0, p3, v4, v5, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3953
    :cond_3
    :goto_4
    if-nez v3, :cond_4

    .line 3954
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    :cond_4
    move v4, v3

    .line 3957
    goto :goto_0

    .line 3909
    :catch_0
    move-exception v0

    .line 3911
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3949
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 3950
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_4

    .line 3928
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_5
    :try_start_4
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3938
    :cond_6
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3940
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v4, :cond_2

    .line 3941
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method public unlockPinFor3GCard()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v10, 0x13

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2533
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2534
    .local v0, dsdstype:I
    const/4 v3, 0x0

    .line 2535
    .local v3, slot:I
    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2536
    .local v2, phoneId:I
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v4, :cond_1

    .line 2538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: mIs3GUimCard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPinValues = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getPlatform = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2542
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-eq v4, v8, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v4

    if-ne v4, v8, :cond_1

    :cond_0
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v12, :cond_1

    .line 2545
    const-string v4, "CP_COMM: enter unlock3Gpin"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2547
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2582
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 2583
    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2584
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v4, :cond_3

    .line 2586
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-eq v4, v8, :cond_2

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v4

    if-ne v4, v8, :cond_3

    :cond_2
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v12, :cond_3

    .line 2590
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2595
    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 2624
    :cond_3
    :goto_3
    return-void

    .line 2548
    :catch_0
    move-exception v1

    .line 2550
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2555
    .end local v1           #e:Ljava/lang/InterruptedException;
    :pswitch_0
    if-ne v2, v11, :cond_4

    .line 2556
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2559
    :cond_4
    if-ne v2, v8, :cond_1

    .line 2560
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2568
    :pswitch_1
    if-ne v2, v8, :cond_1

    .line 2569
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2591
    :catch_1
    move-exception v1

    .line 2593
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2598
    .end local v1           #e:Ljava/lang/InterruptedException;
    :pswitch_2
    if-ne v2, v11, :cond_5

    .line 2599
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 2602
    :cond_5
    if-ne v2, v8, :cond_3

    .line 2603
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 2611
    :pswitch_3
    if-ne v2, v8, :cond_3

    .line 2612
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 2552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2595
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public unregisterForCdmaSubActive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5176
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5177
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5179
    monitor-exit v1

    .line 5181
    return-void

    .line 5179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCdmaSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5148
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5149
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5150
    monitor-exit v1

    .line 5151
    return-void

    .line 5150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubActive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5191
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5192
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5193
    monitor-exit v1

    .line 5194
    return-void

    .line 5193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5162
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5163
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5164
    monitor-exit v1

    .line 5165
    return-void

    .line 5164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
