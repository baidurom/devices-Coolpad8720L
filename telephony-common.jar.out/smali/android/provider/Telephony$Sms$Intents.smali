.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DUAL_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "yulong.intent.action.DUAL_DATA_SMS_RECEIVED"

.field public static final DUAL_PB_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_PB_PARAM_ON_ICC_ACTION"

.field public static final DUAL_SIM_FULL_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SIM_FULL"

.field public static final DUAL_SMS_ON_ICC_RECEIVED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_ON_ICC_RECEIVED"

.field public static final DUAL_SMS_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_PARAM_ON_ICC_ACTION"

.field public static final DUAL_SMS_RECEIVED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_RECEIVED"

.field public static final DUAL_SMS_REJECTED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_REJECTED"

.field public static final DUAL_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_WAP_PUSH_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final PB_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "android.provider.Telephony.PB_PARAM_ON_ICC_ACTION"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_ON_ICC_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_ON_ICC_RECEIVED"

.field public static final SMS_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_PARAM_ON_ICC_ACTION"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromDualIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 14
    .parameter "intentDual"

    .prologue
    const/4 v13, -0x1

    .line 854
    if-nez p0, :cond_1

    .line 855
    const-string v10, "Telephony"

    const-string v11, "intentDual == null, return null"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v5, 0x0

    .line 898
    :cond_0
    return-object v5

    .line 858
    :cond_1
    const-string v10, "pdus"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v4, v10

    check-cast v4, [Ljava/lang/Object;

    .line 859
    .local v4, messages:[Ljava/lang/Object;
    const-string v10, "phoneIdKey"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 860
    .local v8, phoneId:I
    invoke-static {v8}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeByPhoneId(I)I

    move-result v9

    .line 861
    .local v9, phoneType:I
    const-string v10, "index"

    invoke-virtual {p0, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 862
    .local v2, iIndexIccCard:I
    const-string v10, "status"

    invoke-virtual {p0, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 863
    .local v3, iReadStatus:I
    const-string v10, "format"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, format:Ljava/lang/String;
    array-length v6, v4

    .line 870
    .local v6, pduCount:I
    const-string v10, "Telephony"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--getMessagesFromDualIntent,phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",phoneType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", format = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    array-length v10, v4

    new-array v7, v10, [[B

    .line 875
    .local v7, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v10, v4

    if-ge v1, v10, :cond_2

    .line 876
    aget-object v10, v4, v1

    check-cast v10, [B

    check-cast v10, [B

    aput-object v10, v7, v1

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    :cond_2
    new-array v5, v6, [Landroid/telephony/SmsMessage;

    .line 881
    .local v5, msgs:[Landroid/telephony/SmsMessage;
    if-nez v3, :cond_3

    if-ne v2, v13, :cond_3

    .line 882
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_0

    .line 884
    aget-object v10, v7, v1

    invoke-static {v10, v0}, Landroid/telephony/SmsMessage;->createDualFromEfRecord([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v5, v1

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 886
    :cond_3
    if-gez v2, :cond_4

    .line 887
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_0

    .line 889
    aget-object v10, v7, v1

    invoke-static {v10, v0}, Landroid/telephony/SmsMessage;->createDualFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v5, v1

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 892
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_0

    .line 894
    aget-object v10, v7, v1

    invoke-static {v10, v0}, Landroid/telephony/SmsMessage;->createDualFromEfRecord([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v5, v1

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "intent"

    .prologue
    .line 844
    const-string v0, "Telephony"

    const-string v1, "--invoke,getMessagesFromIntent--"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromDualIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method
