.class public Lcom/android/internal/telephony/PhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneSubInfoProxy"

.field private static mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

.field private static mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 2
    .parameter "phoneSubInfo"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 40
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 41
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 46
    :goto_0
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 49
    :cond_0
    return-void

    .line 43
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .parameter "phoneSubInfo"
    .parameter "mPhoneId"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 186
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 187
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 193
    :cond_0
    :goto_0
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 198
    :cond_1
    return-void

    .line 189
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 190
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 524
    const/4 v0, -0x1

    .line 525
    .local v0, phoneId:I
    const-string v1, "PhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSlotIdToPhoneId: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneIdBySlotId(I)I

    move-result v0

    .line 527
    const-string v1, "PhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSlotIdToPhoneId: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v0
.end method

.method private getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 179
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 430
    move-object v0, p1

    .line 431
    .local v0, retAddress:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 432
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 434
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "address"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 415
    move-object v0, p1

    .line 416
    .local v0, retAddress:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 417
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 419
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "address"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 346
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 347
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 348
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 349
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getAudioRevision()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 480
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getBackCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 322
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 323
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 325
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 221
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 222
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 224
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualDeviceIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualDeviceSvn(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 257
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 258
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 260
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualDeviceSvnBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualEriVersion(I)I
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 462
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 463
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    .line 467
    :goto_0
    return v0

    .line 464
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 465
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaEriVersion()I

    move-result v0

    goto :goto_0

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualEriVersionBySlotId(I)I
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualEsn(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 401
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 402
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 403
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 404
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualEsnBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualGroupIdLevel1(I)Ljava/lang/String;
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualGroupIdLevel1BySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualIccSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 275
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 276
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 277
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 278
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualIccSerialNumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 305
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 306
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 308
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 284
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 285
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 286
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 287
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualLine1NumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 471
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 472
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 474
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualMinBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 377
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 378
    const-string v0, "yulong.gsm.plmn.ver"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 379
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 380
    const-string v0, "yulong.cdma.prl.ver"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualPrlVersionBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualRFCalibration(I)[I
    .locals 2
    .parameter "mPhoneId"

    .prologue
    .line 359
    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 360
    .local v0, defaultDualRFCalibration:[I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 361
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    .line 365
    .end local v0           #defaultDualRFCalibration:[I
    :cond_0
    :goto_0
    return-object v0

    .line 362
    .restart local v0       #defaultDualRFCalibration:[I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 363
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    goto :goto_0

    .line 359
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDualRFCalibrationBySlotId(I)[I
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSnId(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 249
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 250
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 252
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualSnIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 266
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 267
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 268
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 269
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 389
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 390
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 391
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 392
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCdmaUimId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualUimIdBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 332
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 333
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 334
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 335
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 575
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 314
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 315
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    .line 316
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 317
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFCalibration()[I
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getRFCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 445
    const-string v0, ""

    .line 446
    .local v0, retIddStr:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 447
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRegIdd(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    :cond_0
    :goto_0
    return-object v0

    .line 448
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 449
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getRegIdd(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegIddBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 611
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYLDeviceId(II)Ljava/lang/String;
    .locals 2
    .parameter "mPhoneId"
    .parameter "devType"

    .prologue
    .line 230
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 232
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 237
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 239
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 242
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getYLDeviceIdBySlotId(II)Ljava/lang/String;
    .locals 2
    .parameter "mSlotId"
    .parameter "devType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public operateFactoryNumber(IILjava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "operate"
    .parameter "value"
    .parameter "phoneId"

    .prologue
    .line 492
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 494
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 498
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 500
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 501
    :catch_1
    move-exception v0

    .line 502
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public operateFactoryNumberBySlotId(IILjava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "operate"
    .parameter "value"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 1
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"
    .parameter "phoneId"

    .prologue
    .line 509
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 510
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    .line 514
    :goto_0
    return v0

    .line 511
    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 512
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 514
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 2
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getPreferredPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->phoneSubIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 484
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "phoneId"

    .prologue
    .line 297
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 298
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 300
    sget-object v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDualLine1NumberBySlotId(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "mSlotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implement,please use phoneid interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 2
    .parameter "phoneSubInfo"

    .prologue
    .line 201
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPreferredPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 202
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .parameter "phoneSubInfo"
    .parameter "mPhoneId"

    .prologue
    .line 213
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 214
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone2:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 216
    sput-object p1, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo_phone1:Lcom/android/internal/telephony/PhoneSubInfo;

    goto :goto_0
.end method

.method public setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .parameter "phoneSubInfo"

    .prologue
    .line 53
    return-void
.end method
