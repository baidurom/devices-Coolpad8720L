.class public Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "IccSmsInterfaceManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IccSmsInterfaceManagerProxy"

.field private static mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static priority:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 2
    .parameter "iccSmsInterfaceManager"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 56
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    .line 57
    .local v0, mPhoneId:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 58
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 63
    :goto_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    const-string v1, "isms"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    :cond_0
    return-void

    .line 60
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .parameter "iccSmsInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 183
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 184
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 189
    :goto_0
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 196
    :cond_0
    return-void

    .line 186
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public static addIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .parameter "iccSmsInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 213
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 214
    sput-object p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    sput-object p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 451
    const/4 v0, -0x1

    .line 452
    .local v0, phoneId:I
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: convertSlotIdToPhoneId, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneIdBySlotId(I)I

    move-result v0

    .line 454
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: convertSlotIdToPhoneId, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return v0
.end method

.method private csCheckSms()Z
    .locals 10

    .prologue
    .line 557
    const/4 v5, 0x1

    .line 559
    .local v5, ret:Z
    :try_start_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isOverseaProduct()Z

    move-result v6

    if-nez v6, :cond_1

    .line 560
    const-string v6, "com.yulong.android.cloudsecurity.server.CloudSecurity"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 562
    .local v0, CloudSecurity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 563
    const-string v7, "getDefault"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 564
    .local v3, getDefault:Ljava/lang/reflect/Method;
    const-string v6, "csCheckSms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 565
    .local v1, csCheckSms:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 566
    .local v4, instance:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 567
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 569
    .end local v4           #instance:Ljava/lang/Object;
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 570
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v5

    .line 594
    .end local v0           #CloudSecurity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #csCheckSms:Ljava/lang/reflect/Method;
    .end local v3           #getDefault:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v5

    .line 574
    :catch_0
    move-exception v2

    .line 576
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 577
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 579
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 580
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 582
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 583
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 585
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 586
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 588
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 589
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 591
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 174
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 176
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method private getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, smsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    const/4 v1, 0x0

    .line 533
    .local v1, phoneId:I
    sget-object v3, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "card_to_send_mms"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 535
    .local v0, cardType:I
    const-string v3, "IccSmsInterfaceManagerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "card_to_send_mms type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eq v0, v6, :cond_0

    if-ne v0, v7, :cond_2

    .line 538
    :cond_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 543
    :goto_0
    if-ne v1, v6, :cond_3

    .line 544
    sget-object v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 549
    :cond_1
    :goto_1
    return-object v2

    .line 540
    :cond_2
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    goto :goto_0

    .line 545
    :cond_3
    if-ne v1, v7, :cond_1

    .line 546
    sget-object v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_1
.end method

.method public static getpriority()I
    .locals 3

    .prologue
    .line 430
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    return v0
.end method


# virtual methods
.method public changeCardUnreadState(II)V
    .locals 3
    .parameter "index"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: changeCardUnreadState, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 438
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->changeCardUnreadState(II)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 440
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->changeCardUnreadState(II)V

    goto :goto_0
.end method

.method public changeCardUnreadStateBySlotId(II)V
    .locals 2
    .parameter "index"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyDualMessageToIccEf(Ljava/lang/String;I[B[BI)Z
    .locals 1
    .parameter "callingPackage"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 241
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 242
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v0

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyDualMessageToIccEfBySlotId(Ljava/lang/String;I[B[BI)Z
    .locals 2
    .parameter "callingPackage"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 1
    .parameter "callingPackage"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public disableDualCellBroadcast(II)V
    .locals 3
    .parameter "messageIdentifier"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter disableDualCellBroadcast, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 331
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 333
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    goto :goto_0
.end method

.method public disableDualCellBroadcastBySlotId(II)V
    .locals 2
    .parameter "messageIdentifier"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableDualCellBroadcast(II)V
    .locals 3
    .parameter "messageIdentifier"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualCellBroadcast, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 318
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 320
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    goto :goto_0
.end method

.method public enableDualCellBroadcastBySlotId(II)V
    .locals 2
    .parameter "messageIdentifier"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDualAllMessagesFromIccEf(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "callingPackage"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 253
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 255
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualAllMessagesFromIccEfBySlotId(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .parameter "callingPackage"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSmsTotalParam(I)I
    .locals 3
    .parameter "mPhoneId"

    .prologue
    .line 355
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: getDualSmsTotalParam, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 358
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getDualSmsTotalParam()I

    move-result v0

    .line 362
    :goto_0
    return v0

    .line 359
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 360
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getDualSmsTotalParam()I

    move-result v0

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSmsTotalParam1(I)I
    .locals 3
    .parameter "mPhoneId"

    .prologue
    .line 342
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: getDualSmsTotalParam, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 345
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    .line 349
    :goto_0
    return v0

    .line 346
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 347
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSmsTotalParamBySlotId(I)I
    .locals 3
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    const/4 v0, -0x1

    .line 494
    .local v0, mPhoneId:I
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "not implement,please use phoneid interface"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSMSCAddr(I)Ljava/lang/String;
    .locals 6
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 391
    const-string v2, "IccSmsInterfaceManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: getSMSCAddr, mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeByPhoneId(I)I

    move-result v0

    .line 393
    .local v0, phonetype:I
    if-ne p1, v5, :cond_2

    .line 394
    if-ne v0, v5, :cond_1

    .line 395
    const-string v2, "IccSmsInterfaceManagerProxy"

    const-string v3, "CP_COMM: getSMSCAddr, cdma not support "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    :goto_0
    return-object v1

    .line 398
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ISms$Stub;->getSMSCAddr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 400
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 401
    if-ne v0, v5, :cond_3

    .line 402
    const-string v2, "IccSmsInterfaceManagerProxy"

    const-string v3, "CP_COMM: getSMSCAddr, cdma not support "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ISms$Stub;->getSMSCAddr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSMSCAddrBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 504
    const/4 v0, -0x1

    .line 505
    .local v0, mPhoneId:I
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "not implement,please use phoneid interface"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSmsTotalParam()I
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsTotalParam()I

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->csCheckSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ISmsProxy sendData method is denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDualData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: enter sendDualData, mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_1

    .line 268
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_0

    .line 271
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDualDataBySlotId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDualMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 7
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualMultipartText, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    div-int/lit8 v0, p7, 0xa

    sput v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    .line 300
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 303
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public sendDualMultipartTextBySlotId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 489
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDualText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendDualText, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    div-int/lit8 v0, p7, 0xa

    sput v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    .line 281
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shixiaogang: priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 284
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    rem-int/lit8 v0, p7, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 287
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendDualTextBySlotId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter "callingPackage"
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
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->csCheckSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ISmsProxy sendMultipartText method is denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->csCheckSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "CloudSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ISmsProxy sendText method is denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsSendInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setCnmiMode(II)I
    .locals 4
    .parameter "mPhoneId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 415
    const-string v1, "IccSmsInterfaceManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: setCnmiMode, mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 419
    sget-object v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCnmiMode(II)I

    .line 425
    :goto_0
    return v0

    .line 421
    :cond_0
    if-ne p1, v0, :cond_1

    .line 422
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCnmiMode(II)I

    move-result v0

    goto :goto_0

    .line 425
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setCnmiModeBySlotId(II)I
    .locals 2
    .parameter "mSlotId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)V
    .locals 1
    .parameter "iccSmsInterfaceManager"
    .parameter "mPhoneId"

    .prologue
    .line 203
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 204
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public updateDualMessageOnIccEf(Ljava/lang/String;II[BI)Z
    .locals 1
    .parameter "callingPackage"
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v0

    .line 231
    :goto_0
    return v0

    .line 226
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 227
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v0

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDualMessageOnIccEfBySlotId(Ljava/lang/String;II[BI)Z
    .locals 2
    .parameter "callingPackage"
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 1
    .parameter "callingPackage"
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v0

    return v0
.end method

.method public writeDualSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "status"
    .parameter "destAddr"
    .parameter "message"
    .parameter "dateTime"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    const-string v0, "IccSmsInterfaceManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: writeDualSmsToCard, mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    .line 380
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone2:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms$Stub;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 386
    :goto_0
    return v0

    .line 382
    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 383
    sget-object v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mSmsInterfaceManager_Phone1:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms$Stub;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 386
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public writeDualSmsToCardBySlotId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "status"
    .parameter "destAddr"
    .parameter "message"
    .parameter "dateTime"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "status"
    .parameter "destAddr"
    .parameter "message"
    .parameter "dateTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    const-string v0, "IccSmsInterfaceManagerProxy"

    const-string v1, "CP_COMM: writeDualSmsToCard "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->getPreferredSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms$Stub;->writeSmsToCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
