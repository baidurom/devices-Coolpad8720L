.class public Lcom/android/telephony/modemaccess/YLModemDataItem;
.super Ljava/lang/Object;
.source "YLModemDataItem.java"

# interfaces
.implements Lcom/android/telephony/modemaccess/ModemDataItem;


# static fields
.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private itemType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "mItemType"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "YLModemDataItem"

    iput-object v0, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    .line 31
    iput p1, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    .line 32
    return-void
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 35
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    .local v0, myBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 38
    .local v1, myTp:Lcom/android/internal/telephony/ITelephony;
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/telephony/modemaccess/GenericFailureException;,
            Lcom/android/telephony/modemaccess/OperationNotSupportedException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v1, -0x1

    .line 115
    .local v1, ret:I
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear,itemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 119
    new-instance v2, Lcom/android/telephony/modemaccess/OperationNotSupportedException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->OPERATION_NOT_SUPPORTED:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/OperationNotSupportedException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 123
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/telephony/modemaccess/YLModemDataItem;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget v3, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->clearPrlOrPlmn(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear,return ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clear prl/plmn or mru done"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clear prl/plmn or mru fail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v2, Lcom/android/telephony/modemaccess/GenericFailureException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->GENERIC_FAILURE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/GenericFailureException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 133
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clear prl success,clear plmn fail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_4
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clear prl fail,clear plmn success"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCapacity()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/telephony/modemaccess/GenericFailureException;,
            Lcom/android/telephony/modemaccess/OperationNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, -0x1

    .line 66
    .local v1, mCapacity:I
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapacity, itemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 70
    :cond_0
    new-instance v2, Lcom/android/telephony/modemaccess/OperationNotSupportedException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->OPERATION_NOT_SUPPORTED:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/OperationNotSupportedException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 74
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/telephony/modemaccess/YLModemDataItem;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget v3, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPrlOrPlmnCapacity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 79
    new-instance v2, Lcom/android/telephony/modemaccess/GenericFailureException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->GENERIC_FAILURE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/GenericFailureException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/16 v2, 0x2000

    if-le v1, v2, :cond_3

    .line 83
    const/16 v1, 0x2000

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapacity, mCapacitys="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1
.end method

.method public getVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/telephony/modemaccess/GenericFailureException;,
            Lcom/android/telephony/modemaccess/NoUIMCardException;,
            Lcom/android/telephony/modemaccess/OperationNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, -0x1

    .line 43
    .local v1, mVersion:I
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersion,itemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 47
    :cond_0
    new-instance v2, Lcom/android/telephony/modemaccess/OperationNotSupportedException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->OPERATION_NOT_SUPPORTED:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/OperationNotSupportedException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 51
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/telephony/modemaccess/YLModemDataItem;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget v3, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPrlOrPlmnVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 57
    new-instance v2, Lcom/android/telephony/modemaccess/GenericFailureException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->GENERIC_FAILURE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/GenericFailureException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersion, mVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v1
.end method

.method public update([B)V
    .locals 5
    .parameter "baItemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/telephony/modemaccess/GenericFailureException;,
            Lcom/android/telephony/modemaccess/BadFormatException;,
            Lcom/android/telephony/modemaccess/DataLengthExceedException;,
            Lcom/android/telephony/modemaccess/OperationNotSupportedException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v1, -0x1

    .line 93
    .local v1, ret:I
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update, itemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 97
    :cond_0
    new-instance v2, Lcom/android/telephony/modemaccess/OperationNotSupportedException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->OPERATION_NOT_SUPPORTED:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/OperationNotSupportedException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 100
    :cond_1
    if-eqz p1, :cond_2

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update,baItemData ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/android/telephony/modemaccess/YLModemDataItem;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget v3, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->itemType:I

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->updatePrlOrPlmn(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :cond_2
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v2, Lcom/android/telephony/modemaccess/GenericFailureException;

    sget-object v3, Lcom/android/telephony/modemaccess/ModemItemException$Error;->GENERIC_FAILURE:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    invoke-direct {v2, v3}, Lcom/android/telephony/modemaccess/GenericFailureException;-><init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V

    throw v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/telephony/modemaccess/YLModemDataItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "update prl/plmn done"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_4
    return-void
.end method
