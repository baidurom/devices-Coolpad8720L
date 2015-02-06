.class final Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final VDBG:Z = true


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mScpResultsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 93
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 833
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 778
    add-int/lit8 p1, p1, 0x4

    .line 779
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 780
    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 783
    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 786
    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v4

    .line 790
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 793
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 797
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 799
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .parameter "sms"

    .prologue
    .line 124
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 125
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 126
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    if-ne v5, v6, :cond_1

    .line 128
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 130
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 133
    const-string v5, "phoneId"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v5, "format"

    const-string v6, "3gpp2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCdmaStatusReport deliveryIntent send "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 124
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 5
    .parameter "sms"

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    .local v1, programDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    if-nez v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "handleServiceCategoryProgramData: program data list is null!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sender"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v2, "program_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 163
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 750
    packed-switch p1, :pswitch_data_0

    .line 761
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 754
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 758
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendCoolpadCdmaSms(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;-><init>()V

    .line 1159
    .local v8, cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    shr-int/lit8 v2, p3, 0x10

    const v4, 0xffff

    and-int v9, v2, v4

    .line 1160
    .local v9, dcs:I
    const v2, 0xffff

    and-int v11, p3, v2

    .line 1163
    .local v11, tel_service_id:I
    const/4 v2, 0x1

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->maxNum:I

    .line 1164
    const/4 v2, 0x0

    iput-byte v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->bIsEms:B

    .line 1167
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->refNum:I

    .line 1168
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->SN:I

    .line 1169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->telLen:I

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->telNum:[B

    .line 1171
    const/4 v2, 0x0

    iput-byte v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pid:B

    .line 1174
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->content:[B

    .line 1175
    iget-object v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->content:[B

    array-length v2, v2

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->msgLen:I

    .line 1179
    packed-switch v9, :pswitch_data_0

    .line 1195
    :pswitch_0
    const/4 v2, 0x4

    :try_start_0
    iput-byte v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->encoding:B

    .line 1196
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContent:[B
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :goto_0
    iget-object v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContent:[B

    array-length v2, v2

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContentLen:I

    .line 1207
    const/4 v2, 0x0

    iput-byte v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->validityPeriodRelativeSet:B

    .line 1209
    if-eqz p6, :cond_0

    .line 1210
    const/4 v2, 0x1

    iput-byte v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->deliveryAckReq:B

    .line 1213
    :cond_0
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->type:I

    .line 1214
    const/16 v2, 0x1002

    iput v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->serviceID:I

    .line 1216
    const/16 v2, 0x1003

    if-eq v11, v2, :cond_1

    const/16 v2, 0x1004

    if-eq v11, v2, :cond_1

    const/16 v2, 0x1005

    if-eq v11, v2, :cond_1

    const v2, 0xfdea

    if-eq v11, v2, :cond_1

    const v2, 0xfdf1

    if-ne v11, v2, :cond_2

    .line 1222
    :cond_1
    iput v11, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->serviceID:I

    .line 1227
    :cond_2
    const-string v2, "ril.cdma.inecmmode"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1229
    const/4 v2, 0x4

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1233
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Block SMS in Emergency Callback mode"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :goto_2
    return-void

    .line 1182
    :pswitch_1
    const/4 v2, 0x0

    :try_start_2
    iput-byte v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->encoding:B

    .line 1183
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContent:[B
    :try_end_2
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1199
    :catch_0
    move-exception v10

    .line 1200
    .local v10, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1201
    const-string v2, "sms_code_decode_exception"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1202
    throw v10

    .line 1187
    .end local v10           #ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :pswitch_2
    const/4 v2, 0x2

    :try_start_3
    iput-byte v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->encoding:B

    .line 1190
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContent:[B
    :try_end_3
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1238
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1239
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1241
    .local v1, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v2, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    .line 1242
    sget v2, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    iput v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    .line 1247
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: SMSDispatcher cdmaSmsSendSt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", smsref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const-string v2, "cdmaSmsSendSt"

    invoke-virtual {v3, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SmsQueueManager;->addTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 1230
    .end local v1           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v2

    goto :goto_1

    .line 1179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 5
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "acknowledgeLastIncomingSms enter."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, inEcm:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "acknowledgeLastIncomingSms emergency callback mode true."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    .line 738
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 740
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acknowledgeLastIncomingSms causeCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    if-nez v0, :cond_2

    .line 743
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 745
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 655
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 24
    .parameter "smsb"

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "dispatchMessage: message is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x2

    .line 421
    :goto_0
    return v2

    .line 176
    :cond_0
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 177
    .local v19, inEcm:Ljava/lang/String;
    const-string v2, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const/4 v2, -0x1

    goto :goto_0

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v2, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v20, p1

    .line 188
    check-cast v20, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 203
    .local v20, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 204
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "dispatchMessage duplicate message return."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x1

    goto :goto_0

    .line 211
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_4
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 220
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v5

    .line 221
    .local v5, teleService:I
    const/16 v18, 0x0

    .line 223
    .local v18, handled:Z
    const/16 v2, 0x1003

    if-eq v2, v5, :cond_5

    const/high16 v2, 0x4

    if-ne v2, v5, :cond_7

    .line 226
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v23

    .line 227
    .local v23, voicemailCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voicemail count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 231
    .local v22, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 232
    .local v17, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_count_key_cdma"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    move/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchVoiceMail(I)V

    .line 237
    const/16 v18, 0x1

    .line 253
    .end local v17           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v22           #sp:Landroid/content/SharedPreferences;
    .end local v23           #voicemailCount:I
    :cond_6
    :goto_2
    if-eqz v18, :cond_b

    .line 254
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 214
    .end local v5           #teleService:I
    .end local v18           #handled:Z
    :catch_0
    move-exception v16

    .line 215
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v5       #teleService:I
    .restart local v18       #handled:Z
    :cond_7
    const/16 v2, 0x1002

    if-eq v2, v5, :cond_8

    const/16 v2, 0x1005

    if-ne v2, v5, :cond_9

    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 242
    const/16 v18, 0x1

    goto :goto_2

    .line 243
    :cond_9
    const/16 v2, 0x1006

    if-ne v2, v5, :cond_a

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 245
    const/16 v18, 0x1

    goto :goto_2

    .line 246
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    if-nez v2, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "Received SMS without user data"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v18, 0x1

    goto :goto_2

    .line 257
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v2, v3, :cond_c

    .line 262
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 266
    :cond_c
    const/16 v2, 0x1004

    if-eq v2, v5, :cond_d

    const v2, 0xfdf1

    if-eq v2, v5, :cond_d

    const v2, 0xfdea

    if-ne v2, v5, :cond_f

    .line 270
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchMessage]delete wap sms index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 282
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM:CT DM WAP processing , sms.messageRef = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 291
    :cond_f
    const/16 v2, 0x1002

    if-eq v2, v5, :cond_10

    const/16 v2, 0x1005

    if-eq v2, v5, :cond_10

    const v2, 0xfded

    if-eq v2, v5, :cond_10

    const/4 v2, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v3

    if-eq v2, v3, :cond_10

    .line 296
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 311
    :cond_10
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v21

    .line 320
    .local v21, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_1a

    .line 322
    :cond_11
    const/4 v2, 0x1

    new-array v8, v2, [[B

    .line 323
    .local v8, pdus:[[B
    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    aput-object v3, v8, v2

    .line 326
    const/4 v2, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v3

    if-ne v2, v3, :cond_12

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v2

    const/16 v3, 0x1000

    if-lt v2, v3, :cond_12

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v2

    const/16 v3, 0x1004

    if-gt v2, v3, :cond_12

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "this is a CMAS message"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCMASPdus([[B)V

    .line 331
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 336
    :cond_12
    if-eqz v21, :cond_16

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_16

    .line 338
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchMessage]delete wap sms index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 349
    :cond_13
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v3, 0xb84

    if-ne v2, v3, :cond_14

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WapPushOverSms;->setAdddress(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v2

    goto/16 :goto_0

    .line 355
    :cond_14
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 402
    :cond_15
    :goto_3
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 362
    :cond_16
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sender:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",teleService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->ExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v9

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v2 .. v11}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->getExternInterfaceParseResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[B[[BIILjava/lang/String;)I

    move-result v9

    .line 371
    .local v9, bRet:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v2, 0x1

    if-ne v9, v2, :cond_17

    .line 374
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 375
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 377
    :cond_17
    const/4 v2, 0x2

    if-ne v9, v2, :cond_18

    .line 380
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BIIII)V

    .line 382
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 386
    :cond_18
    const/4 v12, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v13

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v10, p0

    move-object v11, v8

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BIIII)V

    goto/16 :goto_3

    .line 389
    .end local v9           #bRet:I
    :cond_19
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdusOnIcc([[BII)V

    .line 390
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v2, v3, :cond_15

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    goto/16 :goto_3

    .line 407
    .end local v8           #pdus:[[B
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchMessage]delete long sms index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 421
    :cond_1b
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->processDualMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;I)I

    move-result v2

    goto/16 :goto_0
.end method

.method public dispatchPbParam(III)I
    .locals 1
    .parameter "total"
    .parameter "used"
    .parameter "state"

    .prologue
    .line 905
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchParamPb(III)I

    .line 906
    const/4 v0, -0x1

    return v0
.end method

.method public dispatchSmsParam(III)I
    .locals 1
    .parameter "total"
    .parameter "used"
    .parameter "state"

    .prologue
    .line 900
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchParam(III)I

    .line 901
    const/4 v0, -0x1

    return v0
.end method

.method protected dispatchVoiceMail(I)V
    .locals 3
    .parameter "iNumVoiceMail"

    .prologue
    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.VOICEMAIL_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "number_voicemail"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 829
    return-void
.end method

.method protected dispatchVoicemail(I)I
    .locals 3
    .parameter "mVoiceMailCnt"

    .prologue
    .line 808
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 810
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 811
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_count_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 812
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 813
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 814
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchVoiceMail(I)V

    .line 815
    const/4 v2, 0x0

    return v2
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "3gpp2"

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 29
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 436
    const/16 v17, 0x0

    .line 437
    .local v17, index:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .local v18, index:I
    aget-byte v3, p1, v17

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    .line 438
    .local v19, msgType:I
    if-eqz v19, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v3, 0x1

    move/from16 v17, v18

    .line 551
    .end local v18           #index:I
    .restart local v17       #index:I
    :cond_0
    :goto_0
    return v3

    .line 442
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_1
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v3, p1, v18

    and-int/lit16 v0, v3, 0xff

    move/from16 v26, v0

    .line 443
    .local v26, totalSegments:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v17

    and-int/lit16 v0, v3, 0xff

    move/from16 v23, v0

    .line 445
    .local v23, segment:I
    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WDP bad segment #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expecting 0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v26, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v3, 0x1

    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto :goto_0

    .line 450
    .end local v17           #index:I
    .restart local v18       #index:I
    :cond_2
    const/16 v25, 0x0

    .line 451
    .local v25, sourcePort:I
    const/4 v13, 0x0

    .line 452
    .local v13, destinationPort:I
    if-nez v23, :cond_a

    .line 454
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v25, v3, 0x8

    .line 455
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v17

    and-int/lit16 v3, v3, 0xff

    or-int v25, v25, v3

    .line 456
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v13, v3, 0x8

    .line 457
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v17

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v13, v3

    .line 460
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v3, :cond_a

    .line 461
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 462
    add-int/lit8 v17, v18, 0x4

    .line 468
    .end local v18           #index:I
    .restart local v17       #index:I
    :goto_1
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .local v28, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    const-string v3, " AND address = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v7, v3

    .line 473
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received WAP PDU. Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", src-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dst-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", segment# = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v22, 0x0

    check-cast v22, [[B

    .line 478
    .local v22, pdus:[[B
    const/4 v9, 0x0

    .line 480
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 481
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 482
    .local v10, cursorCount:I
    add-int/lit8 v3, v26, -0x1

    if-eq v10, v3, :cond_3

    .line 484
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v27, values:Landroid/content/ContentValues;
    const-string v3, "date"

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 486
    const-string v3, "pdu"

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v3, "address"

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v3, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v3, "count"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    const-string v3, "sequence"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string v3, "destination_port"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "processCdmaWapPdu,received one segment."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    const/4 v3, 0x1

    .line 523
    if-eqz v9, :cond_0

    .end local v10           #cursorCount:I
    .end local v27           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 500
    .restart local v10       #cursorCount:I
    :cond_3
    :try_start_1
    const-string v3, "pdu"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 501
    .local v21, pduColumn:I
    const-string v3, "sequence"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 503
    .local v24, sequenceColumn:I
    move/from16 v0, v26

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    .line 504
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v10, :cond_5

    .line 505
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 506
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v11, v3

    .line 508
    .local v11, cursorSequence:I
    if-nez v11, :cond_4

    .line 509
    const-string v3, "destination_port"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 510
    .local v14, destinationPortColumn:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v13, v3

    .line 512
    .end local v14           #destinationPortColumn:I
    :cond_4
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v22, v11

    .line 504
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 518
    .end local v11           #cursorSequence:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 523
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_6
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 528
    .local v20, output:Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 530
    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 532
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v17

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 528
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 519
    .end local v10           #cursorCount:I
    .end local v16           #i:I
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    .end local v21           #pduColumn:I
    .end local v24           #sequenceColumn:I
    :catch_0
    move-exception v15

    .line 520
    .local v15, e:Landroid/database/SQLException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t access multipart SMS database"

    invoke-static {v3, v4, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    const/4 v3, 0x2

    .line 523
    if-eqz v9, :cond_0

    goto/16 :goto_2

    .end local v15           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 534
    .restart local v10       #cursorCount:I
    .restart local v16       #i:I
    .restart local v20       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #pduColumn:I
    .restart local v24       #sequenceColumn:I
    :cond_8
    aget-object v3, v22, v16

    const/4 v4, 0x0

    aget-object v5, v22, v16

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 538
    :cond_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 540
    .local v12, datagram:[B
    packed-switch v13, :pswitch_data_0

    .line 547
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v22, v0

    .line 548
    const/4 v3, 0x0

    aput-object v12, v22, v3

    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 551
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 543
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->setAdddress(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_0

    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #cursorCount:I
    .end local v12           #datagram:[B
    .end local v16           #i:I
    .end local v17           #index:I
    .end local v20           #output:Ljava/io/ByteArrayOutputStream;
    .end local v21           #pduColumn:I
    .end local v22           #pdus:[[B
    .end local v24           #sequenceColumn:I
    .end local v28           #where:Ljava/lang/StringBuilder;
    .restart local v18       #index:I
    :cond_a
    move/from16 v17, v18

    .end local v18           #index:I
    .restart local v17       #index:I
    goto/16 :goto_1

    .line 540
    :pswitch_data_0
    .packed-switch 0xb84
        :pswitch_0
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 561
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter CdmaSMSDispatcher sendData.destAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz p6, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "enter CdmaSMSDispatcher deliveryIntent not null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getSmsSendpduCodeType(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 573
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p4}, Ljava/lang/String;-><init>([B)V

    .local v4, text:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 575
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendCoolpadCdmaSms(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v4           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 577
    .restart local v4       #text:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 579
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 582
    .end local v4           #text:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz p6, :cond_3

    :goto_1
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduDM(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 584
    .local v8, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v8, :cond_4

    .line 585
    if-eqz p5, :cond_2

    .line 587
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p5, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "sendData getSubmitPdu fail!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v0, "sms_code_decode_exception"

    invoke-static {v0, v5, v5}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    goto :goto_0

    .line 582
    .end local v8           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 596
    .restart local v8       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_4
    invoke-virtual {p0, v8, p5, p6, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 29
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v17

    .line 915
    .local v17, cpTelephonyManager:Lcom/yulong/android/telephony/CPTelephonyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/yulong/android/telephony/CPTelephonyManager;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CdmaSMSDispatcher sendMultipartText: destAddr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()S

    move-result v24

    .line 927
    .local v24, refNumber:S
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getSmsSendpduCodeType(I)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_a

    .line 928
    const/16 v20, 0x4

    .line 929
    .local v20, encoding:B
    const/16 v23, 0x0

    .line 930
    .local v23, j:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "[sendMultipartText] send cdma sms begin"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 936
    .local v26, smsMaxNum:I
    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 938
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .line 939
    .local v18, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "CdmaSMSDispatcher sendText: ENCODING_7BIT_ASCII"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/16 v20, 0x2

    .line 936
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 944
    :cond_0
    const/16 v20, 0x4

    .line 949
    .end local v18           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 950
    new-instance v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;-><init>()V

    .line 951
    .local v15, cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->maxNum:I

    .line 952
    iget v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->maxNum:I

    const/4 v7, 0x1

    if-le v3, v7, :cond_2

    .line 953
    const/4 v3, 0x1

    iput-byte v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->bIsEms:B

    .line 956
    :cond_2
    const/4 v5, 0x0

    .line 957
    .local v5, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_3

    .line 958
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 961
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v6, 0x0

    .line 962
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_4

    .line 963
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 967
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    move/from16 v0, v24

    iput v0, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->refNum:I

    .line 968
    add-int/lit8 v3, v22, 0x1

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->SN:I

    .line 969
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->telLen:I

    .line 970
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->telNum:[B

    .line 971
    const/4 v3, 0x0

    iput-byte v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pid:B

    .line 974
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->msgLen:I

    .line 975
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->content:[B

    .line 978
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    .line 979
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContentLen:I

    .line 980
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContent:[B

    .line 994
    :goto_2
    const/4 v3, 0x0

    iput-byte v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->validityPeriodRelativeSet:B

    .line 996
    if-eqz p5, :cond_5

    iget v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->maxNum:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_5

    .line 997
    const/4 v3, 0x1

    iput-byte v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->deliveryAckReq:B

    .line 1000
    :cond_5
    move/from16 v0, v20

    iput-byte v0, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->encoding:B

    .line 1001
    const/4 v3, 0x0

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->type:I

    .line 1002
    const/16 v3, 0x1002

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->serviceID:I

    .line 1005
    const-string v3, "ril.cdma.inecmmode"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1007
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v5, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1011
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "Block SMS in Emergency Callback mode"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v15           #cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    .end local v20           #encoding:B
    .end local v23           #j:I
    .end local v26           #smsMaxNum:I
    :cond_6
    :goto_4
    return-void

    .line 985
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v15       #cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    .restart local v20       #encoding:B
    .restart local v23       #j:I
    .restart local v26       #smsMaxNum:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContent:[B

    .line 986
    iget-object v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContent:[B

    array-length v3, v3

    iput v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->pduContentLen:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 987
    :catch_0
    move-exception v19

    .line 989
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V

    .line 990
    const-string v3, "sms_code_decode_exception"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    goto :goto_2

    .line 1016
    .end local v19           #e:Ljava/lang/Exception;
    :cond_8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1017
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1022
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    .line 1023
    sget v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    iput v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    .line 1024
    iget v3, v15, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->SN:I

    iput v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    .line 1025
    move/from16 v0, v26

    iput v0, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    .line 1027
    const-string v3, "cdmaSmsSendSt"

    invoke-virtual {v4, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SmsQueueManager;->addTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: SMSDispatcher cdmaSmsSendSt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", smsref = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->smsref:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 1060
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v15           #cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "[sendMultipartText] send cdma sms end"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1063
    .end local v20           #encoding:B
    .end local v22           #i:I
    .end local v23           #j:I
    .end local v26           #smsMaxNum:I
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1064
    .local v14, msgCount:I
    const/16 v20, 0x0

    .line 1065
    .local v20, encoding:I
    new-array v0, v14, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v21, v0

    .line 1067
    .local v21, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v14, :cond_d

    .line 1068
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .line 1069
    .restart local v18       #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v20

    if-eq v0, v3, :cond_c

    if-eqz v20, :cond_b

    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_c

    .line 1072
    :cond_b
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v20, v0

    .line 1074
    :cond_c
    aput-object v18, v21, v22

    .line 1067
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 1077
    .end local v18           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_d
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v14, :cond_6

    .line 1078
    new-instance v16, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1080
    .local v16, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1081
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1082
    move-object/from16 v0, v16

    iput v14, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1083
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1084
    new-instance v25, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1085
    .local v25, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1086
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_e

    .line 1087
    aget-object v3, v21, v22

    iget v3, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1088
    aget-object v3, v21, v22

    iget v3, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1091
    :cond_e
    const/4 v5, 0x0

    .line 1092
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_f

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_f

    .line 1093
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 1096
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_f
    const/4 v6, 0x0

    .line 1097
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_10

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_10

    .line 1098
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1101
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_10
    new-instance v28, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1102
    .local v28, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1103
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1104
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_12

    .line 1107
    const/4 v3, 0x2

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1111
    :goto_7
    const/4 v3, 0x1

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1117
    if-eqz v6, :cond_13

    add-int/lit8 v3, v14, -0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_13

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v27

    .line 1121
    .local v27, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const-string v3, "ril.cdma.inecmmode"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1122
    if-eqz v5, :cond_11

    .line 1124
    const/4 v3, 0x4

    :try_start_2
    invoke-virtual {v5, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1128
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "Block SMS in Emergency Callback mode"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1109
    .end local v27           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_12
    const/4 v3, 0x4

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_7

    .line 1117
    :cond_13
    const/4 v3, 0x0

    goto :goto_8

    .line 1133
    .restart local v27       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_14
    if-nez v27, :cond_15

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "sendMultipartText getSubmitPdu fail"

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v3, "sms_code_decode_exception"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1139
    :cond_15
    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v27

    iget-object v9, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move-object/from16 v7, p0

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V

    .line 1077
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 1008
    .end local v14           #msgCount:I
    .end local v16           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v21           #encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v25           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v27           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v28           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v15       #cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    .local v20, encoding:B
    .restart local v23       #j:I
    .restart local v26       #smsMaxNum:I
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 1125
    .end local v15           #cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    .end local v23           #j:I
    .end local v26           #smsMaxNum:I
    .restart local v14       #msgCount:I
    .restart local v16       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .local v20, encoding:I
    .restart local v21       #encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v25       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v27       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v28       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :catch_2
    move-exception v3

    goto :goto_9
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    const/4 v2, 0x1

    .line 663
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 664
    .local v1, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 665
    iput-object p4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 666
    if-ne p5, v2, :cond_0

    .line 667
    const/16 v3, 0x9

    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 671
    :goto_0
    iput-boolean v2, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 677
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    :goto_1
    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 680
    .local v0, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p6, p7, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 681
    return-void

    .line 669
    .end local v0           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v3, 0x4

    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 677
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    const/4 v7, 0x1

    .line 702
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 704
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 706
    .local v3, reply:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaSMSDispatcher sendSms, tracker = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getSmsSendpduCodeType(I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 711
    const-string v4, "cdmaSmsSendSt"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;

    .line 712
    .local v0, cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms(Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;Landroid/os/Message;)V

    .line 713
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaSmsSendStruct,sn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->SN:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",content ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;->content:[B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v0           #cdmaSmsSendSt:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;
    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->smsResultLock:Z

    .line 720
    return-void

    .line 715
    :cond_0
    const-string v4, "pdu"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v2, v4

    check-cast v2, [B

    .line 716
    .local v2, pdu:[B
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 6
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "destAddr"

    .prologue
    .line 685
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    if-eqz p2, :cond_0

    .line 688
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_1
    return-void

    .line 696
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    .line 689
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 604
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v9

    .line 605
    .local v9, cpTelephonyManager:Lcom/yulong/android/telephony/CPTelephonyManager;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v9, p1, v2}, Lcom/yulong/android/telephony/CPTelephonyManager;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 607
    const/4 v5, 0x0

    .line 608
    .local v5, destPort:I
    const/4 v12, 0x4

    .line 609
    .local v12, encoding:I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaSMSDispatcher sendText: destAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v10

    .line 612
    .local v10, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v10, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CdmaSMSDispatcher sendText: ENCODING_7BIT_ASCII"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v12, 0x2

    .line 617
    :cond_0
    shl-int/lit8 v5, v12, 0x10

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getSmsSendpduCodeType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 622
    :try_start_0
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendCoolpadCdmaSms(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v11

    .line 625
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 629
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz p5, :cond_3

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 631
    .local v13, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v13, :cond_4

    .line 632
    if-eqz p4, :cond_2

    .line 634
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "sendText getSubmitPdu fail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v2, "sms_code_decode_exception"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    goto :goto_0

    .line 629
    .end local v13           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 645
    .restart local v13       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v13, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public setCnmiMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCnmiMode(ILandroid/os/Message;)V

    .line 1154
    return-void
.end method
