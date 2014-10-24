.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$3;,
        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field public static IsFirstIn:Z = false

.field private static final LOCAL_DEBUG:Z = true

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field public static final YULONG_PROPERTY_BASEBAND_GSM_VERSION:Ljava/lang/String; = "ro.yulong.version.gsmsoft"

.field public static final YULONG_PROPERTY_BASEBAND_TD_VERSION:Ljava/lang/String; = "ro.yulong.version.tdscdmasoft"


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private dataFirewallState:I

.field debugPortThread:Ljava/lang/Thread;

.field debugSocket:Ljava/net/ServerSocket;

.field private hasSendBroadOfImei:Z

.field private mAudioRev:Ljava/lang/String;

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private mEsn:Ljava/lang/String;

.field private mGetCFCount:I

.field private mImei:Ljava/lang/String;

.field private mImei2:Ljava/lang/String;

.field private mImeiFromCdmaMeid:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMeid:Ljava/lang/String;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mStkService:Lcom/android/internal/telephony/cat/CatService;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field public mVtService:Lcom/yulong/android/videotelephony/VideoTelephonyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->IsFirstIn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "log_tag"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 11
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 226
    const-string v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 118
    const-string v0, "GSMPhone"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei2:Ljava/lang/String;

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    .line 166
    iput v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGetCFCount:I

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    .line 175
    iput v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->dataFirewallState:I

    .line 176
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->hasSendBroadOfImei:Z

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiFromCdmaMeid:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone$1;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 229
    check-cast v0, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 231
    :cond_0
    invoke-interface {p2}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    .line 232
    iget v8, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    .line 233
    .local v8, phoneId:I
    invoke-static {v8}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v6

    .line 235
    .local v6, commType:I
    packed-switch v6, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_NO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    .line 253
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPhoneSlot(I)V

    .line 254
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GSMPhone new GsmCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 261
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 265
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 266
    if-nez p4, :cond_1

    .line 267
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 268
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 269
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilNeedReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x23

    invoke-interface {v0, p0, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    const-string v0, "ro.videocall.enabled"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    new-instance v0, Lcom/yulong/android/videotelephony/VideoTelephonyService;

    invoke-direct {v0, p0}, Lcom/yulong/android/videotelephony/VideoTelephonyService;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVtService:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init VideoTelephonyService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVtService:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_3
    iput v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGetCFCount:I

    .line 341
    return-void

    .line 237
    .end local v7           #filter:Landroid/content/IntentFilter;
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 240
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 243
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GSMPhone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    return v0
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1094
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vm_sim_imsi_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 719
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 720
    const/4 v1, 0x0

    .line 739
    :cond_0
    :goto_0
    return v1

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 725
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 733
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 735
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 790
    .local v5, len:I
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 791
    const/4 v6, 0x0

    .line 838
    :goto_0
    return v6

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 796
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_2

    .line 798
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 799
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 800
    .local v1, callIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 803
    .local v3, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v6, :cond_1

    const/4 v7, 0x7

    if-gt v1, v7, :cond_1

    .line 806
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmiCode 2: separate call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 814
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 816
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v8, "separate failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 810
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #callIndex:I
    .restart local v2       #ch:C
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "separate: invalid call index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 821
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    .line 823
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v8, "MmiCode 2: accept ringing call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 831
    :catch_1
    move-exception v4

    .line 833
    .restart local v4       #e:Lcom/android/internal/telephony/CallStateException;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v8, "switch failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_0

    .line 827
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v8, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 744
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 746
    .local v4, len:I
    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 747
    const/4 v5, 0x0

    .line 783
    :cond_0
    :goto_0
    return v5

    .line 750
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 753
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v5, :cond_2

    .line 754
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 755
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 757
    .local v1, callIndex:I
    if-lt v1, v5, :cond_0

    const/4 v6, 0x7

    if-gt v1, v6, :cond_0

    .line 760
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    :catch_0
    move-exception v3

    .line 779
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v7, "hangup failed"

    invoke-static {v6, v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 765
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 767
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v7, "MmiCode 1: hangup foreground"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 772
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v7, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 883
    const/4 v0, 0x0

    .line 889
    :goto_0
    return v0

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 6
    .parameter "infos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2476
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v2, :cond_1

    .line 2477
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleCfuQueryResult() called when mSIMRecords is null."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_0
    :goto_0
    return-void

    .line 2480
    :cond_1
    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_3

    .line 2483
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_0

    .line 2485
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 2486
    aget-object v2, p1, v0

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    aget-object v2, p1, v0

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 2488
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2489
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleCfuQueryResult()null != mIccRecords.get()"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_0

    .line 2485
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 862
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 864
    .local v1, len:I
    if-eq v1, v2, :cond_0

    .line 865
    const/4 v2, 0x0

    .line 877
    :goto_0
    return v2

    .line 869
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v4, "MmiCode 4: explicit call transfer"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 874
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v4, "transfer failed"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 844
    const/4 v1, 0x0

    .line 856
    :goto_0
    return v1

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "MmiCode 3: merge calls"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 853
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "conference failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 2426
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 2428
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v4, "unexpected result from user object."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2432
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 2436
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 2438
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v4, "sending original message to recipient"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2440
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2445
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2447
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2448
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2449
    const-string v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2453
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 1265
    packed-switch p1, :pswitch_data_0

    .line 1272
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1270
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 1251
    packed-switch p1, :pswitch_data_0

    .line 1260
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1258
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFServiceClass(I)Z
    .locals 4
    .parameter "commandInterfaceCFServiceClass"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1298
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1300
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1327
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    .line 1315
    :cond_0
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1327
    goto :goto_0

    .line 1300
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch

    .line 1315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidFacilityString(Ljava/lang/String;)Z
    .locals 2
    .parameter "facility"

    .prologue
    const/4 v0, 0x1

    .line 2934
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2954
    :cond_0
    :goto_0
    return v0

    .line 2936
    :cond_1
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2938
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2940
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2942
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2944
    const-string v1, "AB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2946
    const-string v1, "AG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2948
    const-string v1, "AC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2950
    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2952
    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2954
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 10
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 1608
    const/4 v5, 0x0

    .line 1610
    .local v5, message:Ljava/lang/String;
    if-ne p1, v3, :cond_3

    move v4, v3

    .line 1612
    .local v4, isUssdRequest:Z
    :goto_0
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_4

    .line 1618
    .local v3, isUssdError:Z
    :goto_1
    const/4 v1, 0x0

    .line 1619
    .local v1, found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, s:I
    :goto_2
    if-ge v2, v7, :cond_0

    .line 1620
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1621
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1626
    .restart local v1       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    if-eqz p2, :cond_1

    .line 1628
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->convertString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1636
    :cond_1
    :goto_3
    if-eqz v1, :cond_7

    .line 1639
    if-eqz v3, :cond_6

    .line 1640
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1656
    :cond_2
    :goto_4
    return-void

    .end local v1           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v2           #i:I
    .end local v3           #isUssdError:Z
    .end local v4           #isUssdRequest:Z
    .end local v7           #s:I
    :cond_3
    move v4, v8

    .line 1610
    goto :goto_0

    .restart local v4       #isUssdRequest:Z
    :cond_4
    move v3, v8

    .line 1612
    goto :goto_1

    .line 1619
    .restart local v1       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v2       #i:I
    .restart local v3       #isUssdError:Z
    .restart local v7       #s:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v9, "gsmphone onIncomingUSSD convertString ussdMessage exception "

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    move-object v5, p2

    goto :goto_3

    .line 1642
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v1, v5, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1649
    :cond_7
    if-nez v3, :cond_2

    if-eqz v5, :cond_2

    .line 1651
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v5, v4, p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v6

    .line 1653
    .local v6, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_4
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1602
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 3
    .parameter "eventCode"

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIccRecordEvents: eventCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    packed-switch p1, :pswitch_data_0

    .line 3164
    :goto_0
    return-void

    .line 3158
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 3161
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto :goto_0

    .line 3156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForSimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3167
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3168
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3176
    :goto_0
    return-void

    .line 3174
    :cond_0
    const/16 v1, 0x3c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3175
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 3
    .parameter "imsi"

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1100
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1101
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_sim_imsi_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1103
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1073
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1074
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1075
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 3179
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3180
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3187
    :goto_0
    return-void

    .line 3185
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 3186
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    .line 666
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    return-void
.end method

.method public broadCastGetDevParam()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 3010
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadCastGetDevParam mModemVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImeiSv:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImei:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasGetDevParam:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    if-ne v1, v5, :cond_1

    .line 3056
    :cond_0
    :goto_0
    return-void

    .line 3015
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSignalOrDualPhone()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 3016
    const-string v1, "0"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3018
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "NEED_BROADCAST_FOR_DEVICEPARAM 0"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_YLPARAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3020
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3021
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    or-int/lit8 v1, v1, 0x3

    sput v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    goto :goto_0

    .line 3024
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v1

    if-nez v1, :cond_5

    .line 3025
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 3026
    const-string v1, "0"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3028
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    .line 3035
    :cond_3
    :goto_1
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    if-ne v1, v5, :cond_0

    .line 3036
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "NEED_BROADCAST_FOR_DEVICEPARAM 1"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_YLPARAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3038
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3030
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 3031
    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3032
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    goto :goto_1

    .line 3041
    :cond_5
    const-string v1, "0"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3043
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 3044
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    .line 3048
    :cond_6
    :goto_2
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    if-ne v1, v5, :cond_0

    .line 3049
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "NEED_BROADCAST_FOR_DEVICEPARAM 2"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_YLPARAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3051
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3045
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 3046
    sget v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mHasGetDevParam:I

    goto :goto_2
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 695
    return-void
.end method

.method public clearForCdma()V
    .locals 0

    .prologue
    .line 2698
    return-void
.end method

.method public clearPrlOrPlmn(ILandroid/os/Message;)V
    .locals 3
    .parameter "itemType"
    .parameter "response"

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsmphone clearPrlOrPlmn,itemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3242
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->clearPrlOrPlmn(Landroid/os/Message;)V

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3243
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->clearMru(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 691
    return-void
.end method

.method public convertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "src"

    .prologue
    const/16 v10, 0x10

    .line 2660
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    .line 2662
    .local v1, destArrayLen:I
    new-array v0, v1, [B

    .line 2664
    .local v0, desArray:[B
    const/4 v6, 0x0

    .local v6, str1:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2666
    .local v7, str2:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2668
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x0

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2670
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2672
    invoke-static {v6, v10}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    invoke-static {v7, v10}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 2666
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2676
    :cond_0
    const/4 v4, 0x0

    .line 2680
    .local v4, s:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v8, "unicode"

    invoke-direct {v5, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #s:Ljava/lang/String;
    .local v5, s:Ljava/lang/String;
    move-object v4, v5

    .line 2688
    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 2682
    :catch_0
    move-exception v2

    .line 2684
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 941
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 975
    :goto_0
    return-object v3

    .line 949
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, networkPortion:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 958
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_1

    .line 961
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollNetRegState()V

    .line 965
    :cond_1
    if-nez v0, :cond_2

    .line 966
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 967
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 968
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 970
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 972
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    move-object v3, v4

    .line 975
    goto :goto_0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 982
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 1006
    :goto_0
    return-object v3

    .line 990
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, networkPortion:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 994
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    if-nez v0, :cond_1

    .line 997
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 998
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 999
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1003
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    move-object v3, v4

    .line 1006
    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDunServiceDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public disableDataConnectivity(Landroid/os/Message;)Z
    .locals 1
    .parameter "onCompleteMsg"

    .prologue
    .line 1578
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableLocationUpdates()V

    .line 1550
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 344
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GSMPHONE dispose !!!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 349
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttach(Landroid/os/Handler;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionReady(Landroid/os/Handler;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilNeedReset(Landroid/os/Handler;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilReset(Landroid/os/Handler;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->dispose()V

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 373
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    monitor-exit v1

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDataConnectivity()Z
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDunServiceDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableLocationUpdates()V

    .line 1546
    return-void
.end method

.method public execRuimEsnOp(ZLandroid/os/Message;)Z
    .locals 2
    .parameter "op"
    .parameter "result"

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CP_COMM: [execRuimEsnOp] Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    const/4 v0, 0x0

    return v0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 703
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1564
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllG2NeighborCellInfo(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getAllG2NeighborCellInfo(Landroid/os/Message;)V

    .line 3085
    return-void
.end method

.method public getAllG3NeighborCellInfo(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getAllG3NeighborCellInfo(Landroid/os/Message;)V

    .line 3095
    return-void
.end method

.method public getAllLteNeighborCellInfo(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getAllLteNeighborCellInfo(Landroid/os/Message;)V

    .line 3104
    return-void
.end method

.method public getAudioRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1424
    move-object v0, p1

    .line 1425
    .local v0, resp:Landroid/os/Message;
    const/16 v1, 0x2e

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1428
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFServiceClass"
    .parameter "onComplete"

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFServiceClass(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requesting call forwarding query2."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    if-nez p1, :cond_1

    .line 1339
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1343
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1345
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 1341
    :cond_1
    move-object v0, p3

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 4
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    if-nez p1, :cond_1

    .line 1288
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1292
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1294
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 1290
    :cond_1
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1407
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 562
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 564
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_0

    .line 565
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 580
    :cond_0
    :goto_0
    return-object v0

    .line 567
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 568
    goto :goto_0

    .line 571
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 572
    goto :goto_0

    .line 575
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1501
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6
    .parameter "apnType"

    .prologue
    const/4 v5, 0x1

    .line 466
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 467
    .local v2, ret:Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v3, :cond_0

    .line 470
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 558
    :goto_0
    return-object v2

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v3

    if-eqz v3, :cond_8

    .line 475
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 477
    sget-object v3, Lcom/android/internal/telephony/gsm/GSMPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 499
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 480
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 481
    .local v0, otherPhone:Lcom/android/internal/telephony/Phone;
    :goto_1
    const/4 v1, 0x0

    .line 482
    .local v1, otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    instance-of v3, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_4

    .line 483
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 487
    .end local v0           #otherPhone:Lcom/android/internal/telephony/Phone;
    .restart local v1       #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    instance-of v3, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eqz v3, :cond_5

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getCdmaCallState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    :goto_3
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_6

    .line 492
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 496
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gprsState = 1, data connection state is CONNECTED, converted to state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_1

    .line 485
    .restart local v0       #otherPhone:Lcom/android/internal/telephony/Phone;
    .restart local v1       #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    :cond_4
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0           #otherPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .restart local v1       #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    goto :goto_2

    .line 487
    :cond_5
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3

    .line 494
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_4

    .line 503
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 505
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 510
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isApnTypeEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isApnTypeActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 513
    :cond_a
    sget-object v3, Lcom/android/internal/telephony/gsm/GSMPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 522
    :pswitch_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 525
    .restart local v0       #otherPhone:Lcom/android/internal/telephony/Phone;
    :goto_5
    const/4 v1, 0x0

    .line 526
    .restart local v1       #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    instance-of v3, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_e

    .line 527
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 531
    .end local v0           #otherPhone:Lcom/android/internal/telephony/Phone;
    .restart local v1       #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    :goto_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    instance-of v3, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eqz v3, :cond_f

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getCdmaCallState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    :goto_7
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_10

    .line 536
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 517
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 518
    goto/16 :goto_0

    .line 524
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_5

    .line 529
    .restart local v0       #otherPhone:Lcom/android/internal/telephony/Phone;
    .restart local v1       #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    :cond_e
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0           #otherPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .restart local v1       #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    goto :goto_6

    .line 531
    :cond_f
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .end local v1           #otherPhoneTracker:Lcom/android/internal/telephony/CallTracker;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_7

    .line 538
    :cond_10
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 541
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v3

    if-nez v3, :cond_12

    .line 543
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 545
    :cond_12
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 548
    goto/16 :goto_0

    .line 553
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 513
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getDataFirewall()I
    .locals 1

    .prologue
    .line 2804
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getDeviceId"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1129
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1140
    :goto_0
    return-object v0

    .line 1131
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceId[2] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceId[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_0

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: mImeiSv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1512
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v0, "0"

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getG2ServiceCellInfo(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getG2ServiceCellInfo(Landroid/os/Message;)V

    .line 3080
    return-void
.end method

.method public getG3ServiceCellInfo(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getG3ServiceCellInfo(Landroid/os/Message;)V

    .line 3090
    return-void
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1518
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1222
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    return-object v0
.end method

.method public getIccState(I)Z
    .locals 4
    .parameter "iccId"

    .prologue
    const/4 v0, 0x0

    .line 2608
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2625
    :goto_0
    return v0

    .line 2612
    :cond_0
    if-nez p1, :cond_1

    .line 2613
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccState() ICC_ID_PB "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->bCardAdnInited:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->bCardAdnInited:Z

    goto :goto_0

    .line 2618
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 2619
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccState() ICC_ID_SMS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->bCardSmsInited:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->bCardSmsInited:Z

    goto :goto_0

    .line 2624
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1524
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1530
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLine1Number :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLteServiceCellInfo(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getLteServiceCellInfo(Landroid/os/Message;)V

    .line 3099
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v0, "0"

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageWaiting()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1485
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1395
    return-void
.end method

.method public getPbTotalParamOnIcc()I
    .locals 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPbTotalParamOnIcc()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mCardAdnMax:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPendingMO()Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMO()Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 1

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 2556
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    const-string v0, "GSM"

    return-object v0
.end method

.method public getPhoneSlot()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneSlotId:I

    return v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredPLMNList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredPLMNList(Landroid/os/Message;)V

    .line 2831
    return-void
.end method

.method public getPrlOrPlmnCapacity(ILandroid/os/Message;)V
    .locals 3
    .parameter "itemType"
    .parameter "result"

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsmphone getPrlOrPlmnCapacity,itemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3215
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getPrlOrPlmnCapacity(Landroid/os/Message;)V

    .line 3218
    :cond_0
    return-void
.end method

.method public getPrlOrPlmnVersion(ILandroid/os/Message;)V
    .locals 3
    .parameter "itemType"
    .parameter "result"

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsmphone getPrlOrPlmnVersion,itemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3202
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->getPrlOrPlmnVersion(Landroid/os/Message;)V

    .line 3205
    :cond_0
    return-void
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    return-object v0
.end method

.method public getSMSCAdrr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSMSCAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 2560
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSlotId:I

    return v0
.end method

.method public getSmsTotalParamOnIcc()I
    .locals 2

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSmsTotalParamOnIcc()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmsTotalNum()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getState"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVTCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "facility"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 2995
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidFacilityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2999
    :cond_0
    return-void
.end method

.method public getVTCallForwardingOption(ILandroid/os/Message;)V
    .locals 4
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 2958
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2959
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    if-nez p1, :cond_1

    .line 2962
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2966
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2968
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 2964
    :cond_1
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, ret:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1116
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0

    .line 1108
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1082
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, number:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1086
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "vm_number_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-object v0

    .end local v0           #number:Ljava/lang/String;
    :cond_1
    move-object v0, v3

    .line 1082
    goto :goto_0
.end method

.method public getYLDeviceId(I)Ljava/lang/String;
    .locals 4
    .parameter "devType"

    .prologue
    const/4 v3, 0x1

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getYLDeviceId,devType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    if-ne p1, v3, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1157
    :goto_0
    return-object v0

    .line 1150
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1151
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1153
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDeviceId:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei2:Ljava/lang/String;

    goto :goto_0

    .line 1157
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getmStkService()Lcom/android/internal/telephony/cat/CatService;
    .locals 3

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, catS:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    .line 408
    :cond_0
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 894
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 927
    :goto_0
    return v1

    .line 898
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 899
    goto :goto_0

    .line 902
    :cond_1
    const/4 v1, 0x0

    .line 903
    .local v1, result:Z
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 904
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 906
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 907
    goto :goto_0

    .line 909
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 910
    goto :goto_0

    .line 912
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 913
    goto :goto_0

    .line 915
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 916
    goto :goto_0

    .line 918
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 919
    goto :goto_0

    .line 921
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 922
    goto :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 40
    .parameter "msg"

    .prologue
    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "gsmphone  handleMessage msg.what = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 2392
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 2394
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 1678
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "received EVENT_SYS_NEED_RELSEL_PREF "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    new-instance v13, Landroid/content/Intent;

    const-string v35, "yulong.intent.action.ACTION_PHONE_OUT_OF_SERVICE_NEED_RESET"

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v13, intent:Landroid/content/Intent;
    const-string v35, "Phonetype"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v35

    sget-object v36, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1688
    .end local v13           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "received EVENT_RIL_RESET_SUCCESS Process.myPid() = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const-string v35, "yulong.radio.reset.count"

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1696
    .local v17, mPhoneResetCount:I
    const/16 v25, -0x1

    .line 1698
    .local v25, resetType:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_RIL_RESET_SUCCESS msg.obj = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    .line 1700
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1701
    .local v5, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_RIL_RESET_SUCCESS ar.result = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1

    .line 1703
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [I

    move-object/from16 v0, v35

    check-cast v0, [I

    move-object v14, v0

    .line 1704
    .local v14, ints:[I
    array-length v0, v14

    move/from16 v35, v0

    if-lez v35, :cond_1

    .line 1705
    const/16 v35, 0x0

    aget v25, v14, v35
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v14           #ints:[I
    :cond_1
    :goto_1
    const-string v35, "yulong.lostcard"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1715
    .local v16, lostCard:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_RIL_RESET_SUCCESS mPhoneResetCount = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "resetType = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "lostCard = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/16 v35, 0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    const-string v35, "true"

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "lostCard, do not reset "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1709
    .end local v16           #lostCard:Ljava/lang/String;
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 1711
    :catch_0
    move-exception v7

    .line 1712
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1721
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v16       #lostCard:Ljava/lang/String;
    :cond_3
    const/16 v35, 0x3

    move/from16 v0, v17

    move/from16 v1, v35

    if-lt v0, v1, :cond_4

    const/16 v35, 0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1722
    :cond_4
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/yulong/android/internal/telephony/PhoneModeService;->reset()V

    goto/16 :goto_0

    .line 1742
    .end local v16           #lostCard:Ljava/lang/String;
    .end local v17           #mPhoneResetCount:I
    .end local v25           #resetType:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "received EVENT_PHONEMODESERVICE_SUBSCRIPTION_ACTIVE "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/PhoneBase;->IsActive:I

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v35

    if-nez v35, :cond_0

    .line 1746
    const/16 v35, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1751
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "received EVENT_PHONEMODESERVICE_SUBSCRIPTION_DEACTIVE "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1756
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->isFirstGetPhonePara:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1759
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v35

    if-nez v35, :cond_5

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1764
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getAudioRevision(Landroid/os/Message;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getGsmRFCalibration(Landroid/os/Message;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getSN(Landroid/os/Message;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getEmergencyNumberList(Landroid/os/Message;)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x86

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-interface/range {v35 .. v39}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x37

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getModemVersion(Landroid/os/Message;)V

    .line 1779
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/PhoneBase;->isFirstGetPhonePara:Z

    goto/16 :goto_0

    .line 1784
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->IsActive:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "EVENT_SUBSCRIPTION_READY received checkcard no ok "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1790
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->isFirstGetPhonePara:Z

    move/from16 v35, v0

    if-eqz v35, :cond_8

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v35

    if-nez v35, :cond_7

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1800
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getAudioRevision(Landroid/os/Message;)V

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getGsmRFCalibration(Landroid/os/Message;)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getSN(Landroid/os/Message;)V

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x86

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-interface/range {v35 .. v39}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x37

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getModemVersion(Landroid/os/Message;)V

    .line 1813
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/PhoneBase;->isFirstGetPhonePara:Z

    .line 1815
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 1816
    sget-boolean v35, Lcom/android/internal/telephony/gsm/GSMPhone;->IsFirstIn:Z

    if-eqz v35, :cond_0

    .line 1817
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/internal/telephony/gsm/GSMPhone;->IsFirstIn:Z

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "CPDefaultRunMode.getDefault().isRuWangMode() = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v35

    if-nez v35, :cond_0

    .line 1822
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-interface/range {v35 .. v39}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1839
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->isFirstGetPhonePara:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1843
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v35

    if-nez v35, :cond_9

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1849
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getAudioRevision(Landroid/os/Message;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getGsmRFCalibration(Landroid/os/Message;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getSN(Landroid/os/Message;)V

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x86

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-interface/range {v35 .. v39}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x37

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->getModemVersion(Landroid/os/Message;)V

    .line 1862
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/PhoneBase;->isFirstGetPhonePara:Z

    goto/16 :goto_0

    .line 1869
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "CPDefaultRunMode.getDefault().isRuWangMode() = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v35

    if-nez v35, :cond_0

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-interface/range {v35 .. v39}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1883
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "do not updateCurrentCarrierInProvider for gsm now"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v11

    .line 1885
    .local v11, imsi:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v12

    .line 1886
    .local v12, imsiCard:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "imsi = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",   imsiCard = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 1889
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1890
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1896
    .end local v11           #imsi:Ljava/lang/String;
    .end local v12           #imsiCard:Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1898
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Baseband version: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 1906
    const-string v36, "cdma.version.baseband"

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1909
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 1910
    const-string v36, "gsm.version.baseband"

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1914
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1916
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "Reveived EVENT_GET_DEVICE_IDENTITY_DONE  "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 1921
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v26, v35

    check-cast v26, [Ljava/lang/String;

    .line 1922
    .local v26, respId:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_b

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Reveived EVENT_GET_DEVICE_IDENTITY_DONE err respId.length =  "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1930
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 1931
    const/16 v35, 0x0

    aget-object v35, v26, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_f

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->saveDeviceIdLocal(Ljava/lang/String;I)V

    .line 1939
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_c

    const-string v35, "0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "00000000000000"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 1941
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->hasSendBroadOfImei:Z

    move/from16 v35, v0

    if-nez v35, :cond_d

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "sendStickyBroadcast:NEED_BROADCAST_FOR_NO_MEIDORIMEI"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v13, Landroid/content/Intent;

    const-string v35, "broadcast.no.meidorimei"

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1944
    .restart local v13       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    sget-object v36, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1945
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->hasSendBroadOfImei:Z

    .line 1950
    .end local v13           #intent:Landroid/content/Intent;
    :cond_d
    const/16 v35, 0x2

    aget-object v35, v26, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    .line 1951
    const/16 v35, 0x3

    aget-object v35, v26, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    .line 1960
    const/16 v35, 0x1

    aget-object v35, v26, v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_e

    .line 1961
    const-string v35, "gsm.qc.rf.IMEISV"

    const/16 v36, 0x1

    aget-object v36, v26, v36

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Reveived EVENT_GET_DEVICE_IDENTITY_DONE imei = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v37, v26, v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " imeiSV = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x1

    aget-object v37, v26, v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "mEsn = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "mMeid = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1935
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->saveDeviceIdLocal(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1974
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v26           #respId:[Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1976
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 1981
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    .line 1982
    .local v27, ret:Ljava/lang/String;
    const-string v35, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 1983
    const-string v35, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    .line 1984
    .local v31, skip:I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v15

    .line 1985
    .local v15, len:I
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 1986
    add-int/lit8 v35, v31, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei2:Ljava/lang/String;

    .line 1991
    .end local v15           #len:I
    .end local v31           #skip:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->saveDeviceIdLocal(Ljava/lang/String;I)V

    .line 1996
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei2:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->saveDeviceIdLocal(Ljava/lang/String;I)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_10

    const-string v35, "0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "00000000000000"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 2000
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->hasSendBroadOfImei:Z

    move/from16 v35, v0

    if-nez v35, :cond_11

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "sendStickyBroadcast:NEED_BROADCAST_FOR_NO_MEIDORIMEI"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    new-instance v13, Landroid/content/Intent;

    const-string v35, "broadcast.no.meidorimei"

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2003
    .restart local v13       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    sget-object v36, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2004
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->hasSendBroadOfImei:Z

    .line 2009
    .end local v13           #intent:Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " receiverd EVENT_GET_IMEI_DONE:mImei="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",mImei2="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei2:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v35

    const/16 v36, 0x64

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiFromCdmaMeid:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v35 .. v37}, Lcom/android/internal/telephony/CommandsInterface;->setLteImei(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1988
    :cond_12
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 1989
    const-string v35, ""

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei2:Ljava/lang/String;

    goto/16 :goto_3

    .line 1994
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->saveDeviceIdLocal(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 2018
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v27           #ret:Ljava/lang/String;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2020
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2024
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_IMEISV_DONE Received mImeiSv = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2051
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2053
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2057
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_IMEISV_DONE Received mModemVersion = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const-string v35, "gsm.version.baseband"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    const-string v35, "ro.yulong.version.tdscdmasoft"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const-string v35, "ro.yulong.version.gsmsoft"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->broadCastGetDevParam()V

    .line 2069
    const-string v35, "ro.product.model"

    const-string v36, "1"

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2070
    .local v23, product:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_IMEISV_DONE Received product = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_IMEISV_DONE Received hasSendBroadOfImeiSv = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->hasSendBroadOfImeiSv:Z

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    const-string v35, "9960"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->hasSendBroadOfImeiSv:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "_"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2076
    .local v4, Sv:[Ljava/lang/String;
    if-eqz v4, :cond_14

    array-length v0, v4

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_14

    .line 2077
    const-string v35, "044U"

    const/16 v36, 0x1

    aget-object v36, v4, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v35

    if-lez v35, :cond_14

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "send broadcast to switchnet 43U > Sv[1] = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x1

    aget-object v37, v4, v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    new-instance v13, Landroid/content/Intent;

    const-string v35, "yulong.intent.action.MODEM_VERSION_LOW"

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2082
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v35, "phoneid"

    const/16 v36, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2083
    const-string v35, "slotIdKey"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSlotId()I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2087
    .end local v13           #intent:Landroid/content/Intent;
    :cond_14
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/PhoneBase;->hasSendBroadOfImeiSv:Z

    goto/16 :goto_0

    .line 2093
    .end local v4           #Sv:[Ljava/lang/String;
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v23           #product:Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2095
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v34, v35

    check-cast v34, [Ljava/lang/String;

    .line 2097
    .local v34, ussdResult:[Ljava/lang/String;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_0

    .line 2099
    const/16 v35, 0x0

    :try_start_1
    aget-object v35, v34, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    aget-object v36, v34, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2101
    :catch_1
    move-exception v7

    .line 2102
    .local v7, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "error parsing USSD"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2114
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .end local v34           #ussdResult:[Ljava/lang/String;
    :pswitch_11
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v29

    .local v29, s:I
    :goto_5
    move/from16 v0, v29

    if-ge v10, v0, :cond_0

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v35

    if-eqz v35, :cond_15

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2114
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2122
    .end local v10           #i:I
    .end local v29           #s:I
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2124
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2128
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2129
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_16

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v37, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    const/16 v38, 0x1

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_17

    const/16 v36, 0x1

    :goto_6
    move-object/from16 v0, v35

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 2132
    :cond_16
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    .line 2133
    .local v19, onComplete:Landroid/os/Message;
    if-eqz v19, :cond_0

    .line 2134
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2135
    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2130
    .end local v19           #onComplete:Landroid/os/Message;
    :cond_17
    const/16 v36, 0x0

    goto :goto_6

    .line 2140
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2141
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const-class v35, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2143
    const/16 v35, 0x0

    move-object/from16 v0, v35

    iput-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2145
    :cond_18
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    .line 2146
    .restart local v19       #onComplete:Landroid/os/Message;
    if-eqz v19, :cond_0

    .line 2147
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2148
    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2153
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v19           #onComplete:Landroid/os/Message;
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2154
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_19

    .line 2155
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v35, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2156
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    .line 2157
    .restart local v19       #onComplete:Landroid/os/Message;
    if-eqz v19, :cond_0

    .line 2158
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2159
    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2162
    .end local v19           #onComplete:Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGetCFCount:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-nez v35, :cond_1a

    .line 2163
    const/16 v35, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v35

    const-wide/16 v36, 0xbb8

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2166
    :cond_1a
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    .line 2167
    .restart local v19       #onComplete:Landroid/os/Message;
    if-eqz v19, :cond_0

    .line 2168
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2170
    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2177
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v19           #onComplete:Landroid/os/Message;
    :pswitch_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGetCFCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mGetCFCount:I

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-interface/range {v35 .. v39}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2188
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2192
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2193
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_1b

    .line 2194
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 2196
    :cond_1b
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    .line 2197
    .restart local v19       #onComplete:Landroid/os/Message;
    if-eqz v19, :cond_0

    .line 2198
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2199
    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2205
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v19           #onComplete:Landroid/os/Message;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2207
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1d

    .line 2209
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 2210
    const-string v35, "ro.yulong.version.audiowcdma"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_AUDIO_REV_DONE ro.yulong.version.audiowcdma = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2212
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 2213
    const-string v35, "ro.yulong.version.audiogsm"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_AUDIO_REV_DONE ro.yulong.version.audiogsm = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2219
    :cond_1d
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_AUDIO_REV_DONE Received mAudioRev = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mAudioRev:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2226
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "EVENT_SET_DATA_FIREWALL Received"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2228
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Exception set data firewall, Exception:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2232
    :cond_1e
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [I

    move-object/from16 v28, v35

    check-cast v28, [I

    .line 2233
    .local v28, rsp:[I
    const/16 v35, 0x0

    aget v35, v28, v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->dataFirewallState:I

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "dataFirewallState = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->dataFirewallState:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2240
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v28           #rsp:[I
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "Event EVENT_GET_EMERGENCY_NUM_DONE Received"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2242
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2245
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v9, v35

    check-cast v9, [Ljava/lang/String;

    .line 2246
    .local v9, emergency_nums:[Ljava/lang/String;
    if-eqz v9, :cond_20

    array-length v0, v9

    move/from16 v35, v0

    if-lez v35, :cond_20

    .line 2247
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2248
    .local v6, buf:Ljava/lang/StringBuffer;
    const/16 v35, 0x0

    aget-object v35, v9, v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2249
    const/4 v10, 0x1

    .restart local v10       #i:I
    :goto_7
    array-length v0, v9

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v10, v0, :cond_1f

    .line 2250
    const-string v35, ","

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    aget-object v36, v9, v10

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2249
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2252
    :cond_1f
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2253
    .local v8, ecclist:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_GET_EMERGENCY_NUM_DONE emergency_nums="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const-string v35, "ril.ecclist"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2257
    .end local v6           #buf:Ljava/lang/StringBuffer;
    .end local v8           #ecclist:Ljava/lang/String;
    .end local v10           #i:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "Event EVENT_GET_EMERGENCY_NUM_DONE emergency_nums is null!"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2263
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v9           #emergency_nums:[Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2265
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2268
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiFromCdmaMeid:Ljava/lang/String;

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_SET_IMEI_FROME_CDMA_MEID mImeiFromCdmaMeid ="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiFromCdmaMeid:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiFromCdmaMeid:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v35 .. v37}, Lcom/android/internal/telephony/CommandsInterface;->setLteImei(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2276
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2278
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " receiverd EVENT_GET_SN_DONE 0: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/android/internal/telephony/gsm/GSMPhone;->mSn:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const-string v35, ""

    sget-object v36, Lcom/android/internal/telephony/gsm/GSMPhone;->mSn:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 2283
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    sput-object v35, Lcom/android/internal/telephony/gsm/GSMPhone;->mSn:Ljava/lang/String;

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " receiverd EVENT_GET_SN_DONE 1: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/android/internal/telephony/gsm/GSMPhone;->mSn:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2290
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2293
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_21

    .line 2294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "CP_COMM: Error in get available networks with exception"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    invoke-static/range {v35 .. v35}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v35

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2338
    :goto_8
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2297
    :cond_21
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/ArrayList;

    .line 2298
    .local v21, opList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isOverseaProduct()Z

    move-result v35

    if-eqz v35, :cond_23

    .line 2299
    if-eqz v21, :cond_27

    .line 2300
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 2301
    .local v30, size:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_9
    move/from16 v0, v30

    if-ge v10, v0, :cond_27

    .line 2302
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/OperatorInfo;

    .line 2303
    .local v20, op:Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    .line 2304
    .local v18, numeric:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2306
    .local v32, spn:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_22

    .line 2307
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v32

    .line 2309
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getSpnByLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 2310
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_GET_AVAILABLE_NETWORKS_DONE "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ","

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2316
    .end local v10           #i:I
    .end local v18           #numeric:Ljava/lang/String;
    .end local v20           #op:Lcom/android/internal/telephony/OperatorInfo;
    .end local v30           #size:I
    .end local v32           #spn:Ljava/lang/String;
    :cond_23
    if-eqz v21, :cond_27

    .line 2317
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 2318
    .restart local v30       #size:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_a
    move/from16 v0, v30

    if-ge v10, v0, :cond_27

    .line 2319
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/OperatorInfo;

    .line 2320
    .restart local v20       #op:Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    .line 2321
    .restart local v18       #numeric:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v22

    .line 2322
    .local v22, operatorAlphaLong:Ljava/lang/String;
    const-string v32, ""

    .line 2323
    .restart local v32       #spn:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_24

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_25

    .line 2324
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2327
    :cond_25
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_26

    .line 2328
    move-object/from16 v22, v32

    .line 2330
    :cond_26
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 2331
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_GET_AVAILABLE_NETWORKS_DONE "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ","

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 2336
    .end local v10           #i:I
    .end local v18           #numeric:Ljava/lang/String;
    .end local v20           #op:Lcom/android/internal/telephony/OperatorInfo;
    .end local v22           #operatorAlphaLong:Ljava/lang/String;
    .end local v30           #size:I
    .end local v32           #spn:Ljava/lang/String;
    :cond_27
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    invoke-static/range {v35 .. v35}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    goto/16 :goto_8

    .line 2344
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v21           #opList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "EVENT_CDMA_EXTEND"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2347
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v36, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setExtendFromVIA(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2355
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "EVENT_GET_SMS_BEARER_TYPE_DONE"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2357
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2360
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v24, v35

    check-cast v24, [Ljava/lang/String;

    .line 2361
    .local v24, res:[Ljava/lang/String;
    const/16 v35, 0x0

    aget-object v35, v24, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->smsBearerType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2364
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v24           #res:[Ljava/lang/String;
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2365
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_28

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDesiredSmsBearerType:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->smsBearerType:Ljava/lang/String;

    .line 2370
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_SET_SMS_BEARER_TYPE_DONE smsBearerType:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->smsBearerType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 2372
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    invoke-static/range {v35 .. v35}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v35

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2373
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2368
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "CP_COMM: Error set sms bearer type with exception "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2379
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_22
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2380
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    .line 2383
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v33, v35

    check-cast v33, [Ljava/lang/String;

    .line 2384
    .local v33, strs:[Ljava/lang/String;
    const/16 v35, 0x0

    aget-object v35, v33, v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mNvVersion:Ljava/lang/String;

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_GET_NV_VERSION_TYPE_DONE mNvVersion = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mNvVersion:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2388
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v33           #strs:[Ljava/lang/String;
    :pswitch_23
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2389
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 1676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_9
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_f
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_23
    .end packed-switch
.end method

.method public handlePbParam(III)V
    .locals 1
    .parameter "total"
    .parameter "used"
    .parameter "state"

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->handlePbParam(III)V

    .line 2730
    return-void
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1013
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1016
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1017
    const/4 v1, 0x1

    .line 1020
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hangupAll()V
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    .line 2693
    return-void
.end method

.method public hold()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hold()V

    .line 679
    return-void
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1277
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 1537
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1595
    const/4 v0, 0x0

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 932
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 933
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 935
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 641
    return-void
.end method

.method notifyDataConnectionFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const-string v1, ""

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 609
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 626
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 604
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 605
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CP_COMM: notifyPhoneStateChanged"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 590
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 599
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 600
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 620
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 621
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 617
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 613
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 2818
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2819
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2822
    :cond_1
    return-void
.end method

.method public onNewRingingVideoConnection(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "rr"

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "gsmphone  onNewRingingVideoConnection "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVtService:Lcom/yulong/android/videotelephony/VideoTelephonyService;

    invoke-virtual {v0, p1}, Lcom/yulong/android/videotelephony/VideoTelephonyService;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 2879
    return-void
.end method

.method public onSlotChangeUpdate()V
    .locals 0

    .prologue
    .line 2553
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3113
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v4, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return-void

    .line 3116
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onUpdateIccAvailability"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 3120
    .local v3, newUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3121
    .local v0, app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v3, :cond_4

    .line 3122
    if-eqz v0, :cond_3

    .line 3123
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Removing stale icc objects."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3125
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 3126
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 3128
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3129
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3131
    :cond_3
    if-eqz v3, :cond_0

    .line 3132
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, "New Uicc application found"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3134
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3135
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    .line 3136
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    goto :goto_0

    .line 3139
    :cond_4
    if-eqz v0, :cond_0

    .line 3140
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Uicc application has updated,the following work should be done"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3142
    .local v1, ir1:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 3143
    .local v2, ir2:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v2, :cond_0

    .line 3144
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 3145
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3146
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v5, "update IccRecords"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    .line 3148
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    goto/16 :goto_0
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2845
    return-void
.end method

.method public registerForCdmaNotifyMeid(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3061
    return-void
.end method

.method public registerForFWIMReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2722
    return-void
.end method

.method public registerForGPSReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2779
    return-void
.end method

.method public registerForSECRETReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2769
    return-void
.end method

.method public registerForSubActiveOrDeactive()V
    .locals 5

    .prologue
    const/16 v4, 0x22

    const/16 v3, 0x21

    const/4 v2, 0x0

    .line 2733
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerForSubActiveOrDeactive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2736
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2737
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerForGsmSubActive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2739
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerForGsmSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2747
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2748
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForSubActiveOrDeactive()V

    .line 2753
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForSubActiveOrDeactive()V

    .line 2756
    :cond_0
    return-void

    .line 2742
    :cond_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerForCdmaSubActive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2744
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerForCdmaSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2750
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mIccRecords.get() == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 656
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 670
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 380
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 381
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 382
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 383
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 384
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 387
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 388
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 389
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 390
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 391
    return-void
.end method

.method public requestSecret()V
    .locals 0

    .prologue
    .line 2774
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .parameter "commandInterfaceCLIRMode"

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2466
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2467
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2470
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2471
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_0
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 7
    .parameter "network"
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    .line 1466
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1467
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1468
    iget-object v3, p1, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1469
    iget-object v3, p1, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1472
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1474
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1475
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1476
    .local v2, s:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 1480
    .end local v2           #s:[Ljava/lang/String;
    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneBase;->mIsManualSelectNW:Z

    .line 1481
    return-void

    .line 1478
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p1, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method public sendCommandFromEngmode(Ljava/lang/String;)V
    .locals 2
    .parameter "strcmd"

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sendCommandFromEngmode(GSMPhone)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCommandFromEngmode(Ljava/lang/String;Landroid/os/Message;)V

    .line 2872
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1031
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendGpsOneCommand(I)V
    .locals 0
    .parameter "icmd"

    .prologue
    .line 2783
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "ussdMessge"

    .prologue
    const/4 v3, 0x0

    .line 1024
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1025
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1027
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFServiceClass"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v1, 0x0

    .line 1373
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFServiceClass(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    if-nez p2, :cond_2

    .line 1379
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1384
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1391
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1379
    goto :goto_0

    .line 1382
    :cond_2
    move-object v6, p6

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1350
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    if-nez p2, :cond_2

    .line 1355
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1361
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1366
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1355
    goto :goto_0

    .line 1359
    :cond_2
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1412
    return-void
.end method

.method public setCardPowerState(ILandroid/os/Message;)V
    .locals 1
    .parameter "state"
    .parameter "response"

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCardPowerState(ILandroid/os/Message;)V

    .line 3191
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    return-void
.end method

.method public setDataFirewall(I)Z
    .locals 2
    .parameter "i"

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setDataFirewall"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sleepDataFirewall(ILandroid/os/Message;)V

    .line 2641
    const/4 v0, 0x1

    return v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    .line 1558
    return-void
.end method

.method public setDesiredRadioPower(Z)V
    .locals 3
    .parameter "power"

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMPhone] setDesiredRadioPower "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setDesiredPowerState(Z)V

    .line 2709
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2789
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 2859
    return-void
.end method

.method public setGPSPowerOperation(ILandroid/os/Message;)Z
    .locals 1
    .parameter "op"
    .parameter "response"

    .prologue
    .line 2793
    const/4 v0, 0x0

    return v0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLine1Number:  in gsm alphaTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1239
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 1493
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1446
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1447
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1448
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1449
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1452
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1454
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1458
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsManualSelectNW:Z

    .line 1459
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1488
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1489
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1402
    return-void
.end method

.method public setPhoneSlot(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 447
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneSlotId:I

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSlot(I)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSM setPhoneSlot slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public setPreferredPLMNList(IILjava/lang/String;IIIILandroid/os/Message;)V
    .locals 9
    .parameter "index"
    .parameter "format"
    .parameter "oper"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "e_utranAct"
    .parameter "response"

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredPLMNList(IILjava/lang/String;IIIILandroid/os/Message;)V

    .line 2827
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 3
    .parameter "power"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Forbid others to use this interface: setRadioPower."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v0, 0x64

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change airplane mode setRadioPower power="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    .line 1068
    :cond_0
    return-void
.end method

.method public setRadioPowerEx(Z)V
    .locals 2
    .parameter "power"

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "use this interface: [GSMPhone] setRadioPowerEx."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    .line 2704
    return-void
.end method

.method public setRasConnectFunction(ILandroid/os/Message;)Z
    .locals 2
    .parameter "func"
    .parameter "result"

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CP_COMM: [setRasConnectFunction] Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    const/4 v0, 0x0

    return v0
.end method

.method public setRemoteMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setRemoteMute(Z)V

    .line 2921
    return-void
.end method

.method public setSounddevice(I)V
    .locals 2
    .parameter "sndDevice"

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setSounddevice()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSounddevice(ILandroid/os/Message;)V

    .line 2581
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 648
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public setVTCallBarringOption(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 3002
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidFacilityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3005
    :cond_0
    return-void
.end method

.method public setVTCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v1, 0x0

    .line 2975
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2979
    if-nez p2, :cond_2

    .line 2980
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2985
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 2992
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2980
    goto :goto_0

    .line 2983
    :cond_2
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v2, 0x0

    .line 1245
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1246
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v2, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1247
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1248
    return-void
.end method

.method public spcpaSendCmd(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .parameter "cmdstring"
    .parameter "result"

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSMPhone spcpaSendCmd cmdstring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->spcpaSendCmd(Ljava/lang/String;Landroid/os/Message;)V

    .line 2865
    const/4 v0, 0x1

    return v0
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1042
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public startModemCellTest(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->startModemCellTest(Landroid/os/Message;)V

    .line 3070
    return-void
.end method

.method public startRecording()V
    .locals 1

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->startRecording()V

    .line 2926
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1052
    return-void
.end method

.method public stopModemCellTest(ILandroid/os/Message;)V
    .locals 1
    .parameter "ioCode"
    .parameter "onComplete"

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->stopModemCellTest(Landroid/os/Message;)V

    .line 3075
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->stopRecording()V

    .line 2931
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 674
    return-void
.end method

.method protected syncClirSetting()V
    .locals 4

    .prologue
    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1664
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1665
    .local v0, clirSetting:I
    if-ltz v0, :cond_0

    .line 1666
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1668
    :cond_0
    return-void
.end method

.method public testUARTchannel(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .parameter "subpkg"
    .parameter "index"
    .parameter "portNo"
    .parameter "reserved"

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "testUARTchannel not implemented in GSMPhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    return-void
.end method

.method public unregisterForCdmaNotifyMeid(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 3064
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 662
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 5

    .prologue
    .line 2403
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2405
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2407
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2408
    .local v1, map:Landroid/content/ContentValues;
    const-string v4, "numeric"

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2411
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v4, "updateCurrentCarrierInProvider for gsm phone."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    const/4 v3, 0x1

    .line 2417
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 2413
    :catch_0
    move-exception v0

    .line 2414
    .local v0, e:Landroid/database/SQLException;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2417
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 3
    .parameter "mwi"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 637
    :cond_0
    return-void

    .line 635
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updatePrlOrPlmn(I[BLandroid/os/Message;)V
    .locals 3
    .parameter "itemType"
    .parameter "baItemData"
    .parameter "response"

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsmphone updatePrlOrPlmn,itemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",baItemData ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3228
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->updatePrlOrPlmn([BLandroid/os/Message;)V

    .line 3231
    :cond_0
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1542
    return-void
.end method

.method public updateSignalStrength()V
    .locals 1

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSignalStrength()V

    .line 2765
    return-void
.end method

.method public vpAnswer(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vpAnswer(Landroid/os/Message;)V

    .line 2895
    return-void
.end method

.method public vpAnswerForVoice()Z
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vpAnswerForVoice()Z

    move-result v0

    return v0
.end method

.method public vpCancel()V
    .locals 1

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vpCancel()V

    .line 2900
    return-void
.end method

.method public vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "strTelphoneCode"
    .parameter "anyone_path"
    .parameter "remot_path"
    .parameter "displayType"

    .prologue
    .line 2884
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2888
    :goto_0
    return v1

    .line 2885
    :catch_0
    move-exception v0

    .line 2887
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2888
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public vpReject()V
    .locals 1

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vpReject()V

    .line 2904
    return-void
.end method

.method public vpSendUserNum(Ljava/lang/String;)V
    .locals 1
    .parameter "cDigit"

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vpSendUserNum(Ljava/lang/String;)V

    .line 2912
    return-void
.end method

.method public vpSetMicorphone(S)Z
    .locals 1
    .parameter "iCommand"

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vpSetMicorphone(S)Z

    move-result v0

    return v0
.end method
