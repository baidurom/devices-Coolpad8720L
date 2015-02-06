.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private mAddress:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSCAddress:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    .line 57
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 132
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 134
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 135
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    return-object v0
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 30
    .parameter "pdu"

    .prologue
    .line 165
    const/4 v14, 0x0

    .line 166
    .local v14, index:I
    add-int/lit8 v15, v14, 0x1

    .end local v14           #index:I
    .local v15, index:I
    aget-byte v27, p1, v14

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 167
    .local v24, transactionId:I
    add-int/lit8 v14, v15, 0x1

    .end local v15           #index:I
    .restart local v14       #index:I
    aget-byte v27, p1, v15

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 168
    .local v20, pduType:I
    const/4 v12, 0x0

    .line 170
    .local v12, headerLength:I
    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    const/16 v27, 0x7

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 173
    const/16 v27, 0x1

    .line 379
    :goto_0
    return v27

    .line 176
    :cond_0
    new-instance v27, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 186
    const/16 v27, 0x2

    goto :goto_0

    .line 188
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v12, v0

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int/lit8 v14, v27, 0x2

    .line 191
    move v13, v14

    .line 205
    .local v13, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v27

    if-nez v27, :cond_2

    .line 207
    const/16 v27, 0x2

    goto :goto_0

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v19

    .line 211
    .local v19, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    .line 212
    .local v5, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int v14, v14, v27

    .line 214
    new-array v11, v12, [B

    .line 215
    .local v11, header:[B
    const/16 v27, 0x0

    array-length v0, v11

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v13, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    if-nez v19, :cond_3

    .line 220
    const-string v27, "WAP PUSH"

    const-string v28, "Header Content-Type error."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v27, 0x2

    goto/16 :goto_0

    .line 224
    :cond_3
    if-eqz v19, :cond_5

    const-string v27, "application/vnd.wap.coc"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 225
    move-object/from16 v17, p1

    .line 233
    .local v17, intentData:[B
    :goto_1
    const-string v27, "application/vnd.wap.slc"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 234
    const-string v27, "WAP PUSH"

    const-string v28, "parser wap push SL message"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 250
    :cond_4
    const-string v27, "WAP PUSH"

    const-string v28, "wap push data length is 0,return"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v27, 0x2

    goto/16 :goto_0

    .line 227
    .end local v17           #intentData:[B
    :cond_5
    add-int v9, v13, v12

    .line 228
    .local v9, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v9

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 229
    .restart local v17       #intentData:[B
    const/16 v27, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v9, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 255
    .end local v9           #dataIndex:I
    :cond_6
    :try_start_0
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/IDecodImpl;->decode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 262
    .local v8, data:Ljava/lang/String;
    :goto_2
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "wap push after decode data="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_8

    .line 265
    :cond_7
    const/16 v27, 0x2

    goto/16 :goto_0

    .line 256
    .end local v8           #data:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 257
    .local v10, e:Ljava/lang/Exception;
    const-string v27, "WAP PUSH"

    const-string v28, "wap push SL decode exception!!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    const/4 v8, 0x0

    .restart local v8       #data:Ljava/lang/String;
    goto :goto_2

    .line 267
    .end local v10           #e:Ljava/lang/Exception;
    :cond_8
    const-string v21, "android.permission.RECEIVE_UNIVERSAL_DOWNLOAD_WAP_PUSH"

    .line 268
    .local v21, permission:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v27, "UNIVERSAL_DOWNLOAD_WAP_PUSH_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v16, intent:Landroid/content/Intent;
    const-string v27, "serverurl"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v27, v0

    const/16 v28, 0x13

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 271
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 280
    .end local v8           #data:Ljava/lang/String;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v21           #permission:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    add-int v28, v14, v12

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v25

    .line 284
    .local v25, wapAppId:Ljava/lang/String;
    if-nez v25, :cond_a

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 288
    :cond_a
    if-nez v19, :cond_c

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, contentType:Ljava/lang/String;
    :goto_3
    const/16 v23, 0x1

    .line 294
    .local v23, processFurther:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v26

    .line 296
    .local v26, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v26, :cond_d

    .line 315
    :cond_b
    :goto_4
    if-nez v23, :cond_e

    .line 316
    const/16 v27, 0x1

    goto/16 :goto_0

    .end local v7           #contentType:Ljava/lang/String;
    .end local v23           #processFurther:Z
    .end local v26           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_c
    move-object/from16 v7, v19

    .line 288
    goto :goto_3

    .line 299
    .restart local v7       #contentType:Ljava/lang/String;
    .restart local v23       #processFurther:Z
    .restart local v26       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_d
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 300
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v27, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v27, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v27, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 303
    const-string v27, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 304
    const-string v27, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 306
    const-string v27, "scaddress"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v7, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v22

    .line 310
    .local v22, procRet:I
    and-int/lit8 v27, v22, 0x1

    if-lez v27, :cond_b

    const v27, 0x8000

    and-int v27, v27, v22

    if-nez v27, :cond_b

    .line 312
    const/16 v23, 0x0

    goto :goto_4

    .line 318
    .end local v16           #intent:Landroid/content/Intent;
    .end local v22           #procRet:I
    .end local v26           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v27

    .line 327
    .end local v7           #contentType:Ljava/lang/String;
    .end local v23           #processFurther:Z
    .end local v25           #wapAppId:Ljava/lang/String;
    :cond_e
    const-string v27, "application/vnd.wap.mms-message"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 328
    const-string v21, "android.permission.RECEIVE_MMS"

    .line 329
    .restart local v21       #permission:Ljava/lang/String;
    const/16 v4, 0x12

    .line 348
    .local v4, appOp:I
    :goto_5
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 349
    new-instance v16, Landroid/content/Intent;

    const-string v27, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v16       #intent:Landroid/content/Intent;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v27, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v27, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string v27, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 354
    const-string v27, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 355
    const-string v27, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v27, "scaddress"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v27, "index"

    const/16 v28, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v27, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v27, "sub_id"

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v27, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 365
    .end local v16           #intent:Landroid/content/Intent;
    :cond_f
    new-instance v18, Landroid/content/Intent;

    const-string v27, "yulong.provider.Telephony.DUAL_WAP_PUSH_RECEIVED"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v18, intentDual:Landroid/content/Intent;
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v27, "transactionId"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v27, "pduType"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string v27, "header"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 370
    const-string v27, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 371
    const-string v27, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v27, "scaddress"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v27, "index"

    const/16 v28, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v27, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 377
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "pduType = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "address = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "permission = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v27, -0x1

    goto/16 :goto_0

    .line 331
    .end local v4           #appOp:I
    .end local v18           #intentDual:Landroid/content/Intent;
    .end local v21           #permission:Ljava/lang/String;
    :cond_10
    const-string v21, "android.permission.RECEIVE_WAP_PUSH"

    .line 332
    .restart local v21       #permission:Ljava/lang/String;
    const/16 v4, 0x13

    .restart local v4       #appOp:I
    goto/16 :goto_5
.end method

.method public dispatchWapPdu([BLjava/lang/String;)I
    .locals 3
    .parameter "pdu"
    .parameter "scAddress"

    .prologue
    .line 147
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSCAddress:Ljava/lang/String;

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method

.method public setAdddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    .line 389
    const-string v0, "WAP PUSH"

    const-string v1, "--address--"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
