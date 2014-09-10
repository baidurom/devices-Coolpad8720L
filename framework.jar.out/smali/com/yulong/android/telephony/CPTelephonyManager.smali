.class public Lcom/yulong/android/telephony/CPTelephonyManager;
.super Ljava/lang/Object;
.source "CPTelephonyManager.java"


# static fields
.field public static final ACTION_DUAL_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.DUAL_PHONE_STATE"

.field private static final LOG_TAG:Ljava/lang/String; = "CPTelephonyManager"

.field private static sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/yulong/android/telephony/CPTelephonyManager;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CPTelephonyManager;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    .line 68
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 70
    return-void
.end method

.method public static getCardInfoBySlot(I)Lcom/yulong/android/telephony/CardInfo;
    .locals 1
    .parameter "slot"

    .prologue
    .line 801
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .line 802
    .local v0, cardInfo:Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getCurrentCardNum()I
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/yulong/android/telephony/CPTelephonyManager;->sInstance:Lcom/yulong/android/telephony/CPTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 766
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneTypeByPhoneId(I)I
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 879
    invoke-static {p0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 275
    const-string/jumbo v3, "ro.telephony.default_network"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, mode:I
    if-ne v0, v4, :cond_1

    .line 277
    const/4 v1, 0x0

    .line 305
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 278
    :cond_1
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 305
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 289
    goto :goto_0

    .line 298
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v3

    if-eq v3, v2, :cond_0

    move v1, v2

    .line 301
    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 264
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, type:I
    return v0
.end method

.method public static getPreferredCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 1

    .prologue
    .line 814
    new-instance v0, Lcom/yulong/android/telephony/CardInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/CardInfo;-><init>()V

    .line 815
    .local v0, cardInfo:Lcom/yulong/android/telephony/CardInfo;
    return-object v0
.end method

.method public static getPreferredCardSlot()I
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x1

    .line 868
    .local v0, cardSlot:I
    return v0
.end method

.method public static getPreferredPhoneId()I
    .locals 3

    .prologue
    .line 852
    const-string v1, "gsm.current.modem-type"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 856
    .local v0, phoneId:I
    return v0
.end method

.method public static getSecondCardInfo()Lcom/yulong/android/telephony/CardInfo;
    .locals 2

    .prologue
    .line 828
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: delete interface!error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 772
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableDualLocationUpdates(I)V
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableDualLocationUpdatesBySlotId(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1462
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableDualLocationUpdatesBySlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1467
    :goto_0
    return-void

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1465
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public enableDualLocationUpdates(I)V
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableDualLocationUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableDualLocationUpdatesBySlotId(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1440
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableDualLocationUpdatesBySlotId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1445
    :goto_0
    return-void

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1443
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 1009
    move-object v1, p1

    .line 1011
    .local v1, retAddress:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: enter filterSmsAddress."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterCallAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1019
    :goto_0
    return-object v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "slotId"

    .prologue
    .line 2033
    move-object v1, p1

    .line 2035
    .local v1, retAddress:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: enter filterSmsAddress."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterCallAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2043
    :goto_0
    return-object v1

    .line 2038
    :catch_0
    move-exception v0

    .line 2040
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "phoneId"

    .prologue
    .line 992
    move-object v1, p1

    .line 994
    .local v1, retAddress:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: dont has fuction filterSmsAddress."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterSmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1001
    :goto_0
    return-object v1

    .line 996
    :catch_0
    move-exception v0

    .line 998
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "slotId"

    .prologue
    .line 2016
    move-object v1, p1

    .line 2018
    .local v1, retAddress:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: dont has fuction filterSmsAddress."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->filterSmsAddressBySlotId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2026
    :goto_0
    return-object v1

    .line 2021
    :catch_0
    move-exception v0

    .line 2023
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllG2NeighborCellInfo(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "phoneId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G2NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1181
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yulong/android/telephony/G2NeighborCellInfo;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1182
    .local v3, inData:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1184
    .local v4, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0x80

    invoke-interface {v6, v7, v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :goto_0
    const-string v6, "g2neighborcellinfolist_size"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1191
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 1192
    new-instance v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v2}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>()V

    .line 1193
    .local v2, in:Lcom/yulong/android/telephony/G2NeighborCellInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_arfcn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    .line 1194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_rxlevMin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    .line 1196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_gprsSupp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    .line 1198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_band"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    .line 1199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_bsic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    .line 1200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    .line 1201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_rxlev"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    .line 1202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    .line 1203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c31"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    .line 1204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c32"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    .line 1205
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1187
    .end local v1           #i:I
    .end local v2           #in:Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .end local v5           #size:I
    :catch_0
    move-exception v0

    .line 1188
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1207
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public getAllG2NeighborCellInfoBySlotId(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "slotId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G2NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2183
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yulong/android/telephony/G2NeighborCellInfo;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2184
    .local v3, inData:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2186
    .local v4, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0x80

    invoke-interface {v6, v7, v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2192
    :goto_0
    const-string v6, "g2neighborcellinfolist_size"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2193
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 2194
    new-instance v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v2}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>()V

    .line 2195
    .local v2, in:Lcom/yulong/android/telephony/G2NeighborCellInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_arfcn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    .line 2196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_rxlevMin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    .line 2198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_gprsSupp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    .line 2200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_band"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    .line 2201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_bsic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    .line 2202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    .line 2203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_rxlev"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    .line 2204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    .line 2205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c31"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    .line 2206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g2neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c32"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    .line 2207
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2189
    .end local v1           #i:I
    .end local v2           #in:Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .end local v5           #size:I
    :catch_0
    move-exception v0

    .line 2190
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2209
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public getAllG3NeighborCellInfo(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "phoneId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G3NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1239
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yulong/android/telephony/G3NeighborCellInfo;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1240
    .local v3, inData:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1242
    .local v4, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0x82

    invoke-interface {v6, v7, v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :goto_0
    const-string v6, "g3neighborcellinfolist_size"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1249
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 1250
    new-instance v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;

    invoke-direct {v2}, Lcom/yulong/android/telephony/G3NeighborCellInfo;-><init>()V

    .line 1251
    .local v2, in:Lcom/yulong/android/telephony/G3NeighborCellInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellParaId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    .line 1253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellArfcn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    .line 1255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellRscp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    .line 1257
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1245
    .end local v1           #i:I
    .end local v2           #in:Lcom/yulong/android/telephony/G3NeighborCellInfo;
    .end local v5           #size:I
    :catch_0
    move-exception v0

    .line 1246
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1259
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public getAllG3NeighborCellInfoBySlotId(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "slotId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/telephony/G3NeighborCellInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2242
    .local p2, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/yulong/android/telephony/G3NeighborCellInfo;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2243
    .local v3, inData:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2245
    .local v4, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/16 v7, 0x82

    invoke-interface {v6, v7, v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    :goto_0
    const-string v6, "g3neighborcellinfolist_size"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2252
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 2253
    new-instance v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;

    invoke-direct {v2}, Lcom/yulong/android/telephony/G3NeighborCellInfo;-><init>()V

    .line 2254
    .local v2, in:Lcom/yulong/android/telephony/G3NeighborCellInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellParaId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    .line 2256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellArfcn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    .line 2258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g3neighborcellinfolist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_cellRscp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    .line 2260
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2248
    .end local v1           #i:I
    .end local v2           #in:Lcom/yulong/android/telephony/G3NeighborCellInfo;
    .end local v5           #size:I
    :catch_0
    move-exception v0

    .line 2249
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2262
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public getDualAudioRevision(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 905
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualAudioRevision(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 909
    :goto_0
    return-object v1

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 908
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 909
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1948
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualAudioRevisionBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1953
    :goto_0
    return-object v1

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1952
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1953
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1081
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualBackCallNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1086
    :goto_0
    return-object v1

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1084
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1086
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCallState(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 732
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 738
    :goto_0
    return v1

    .line 733
    :catch_0
    move-exception v0

    .line 735
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 736
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCallStateBySlotId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1888
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCallStateBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1895
    :goto_0
    return v1

    .line 1889
    :catch_0
    move-exception v0

    .line 1891
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1893
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1895
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCellLocation(I)Landroid/telephony/CellLocation;
    .locals 6
    .parameter "phoneId"

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getDualCellLocation, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCellLocation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 170
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 169
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 170
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCellLocationBySlotId(I)Landroid/telephony/CellLocation;
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 1413
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getDualCellLocation, slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualCellLocationBySlotId(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1416
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1421
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 1417
    :catch_0
    move-exception v1

    .line 1418
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1420
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1421
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 597
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 602
    :goto_0
    return-object v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 600
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 602
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1748
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualCompleteVoiceMailNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1755
    :goto_0
    return-object v1

    .line 1750
    :catch_0
    move-exception v0

    .line 1751
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1753
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1755
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataActivity(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 744
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataActivity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 750
    :goto_0
    return v1

    .line 745
    :catch_0
    move-exception v0

    .line 747
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 748
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 750
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataActivityBySlotId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1901
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataActivityBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1908
    :goto_0
    return v1

    .line 1902
    :catch_0
    move-exception v0

    .line 1904
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1906
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1908
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataState(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 756
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 761
    :goto_0
    return v1

    .line 757
    :catch_0
    move-exception v0

    .line 759
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 760
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 761
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDataStateBySlotId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1914
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualDataStateBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1920
    :goto_0
    return v1

    .line 1915
    :catch_0
    move-exception v0

    .line 1917
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1919
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1920
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 124
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 125
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1392
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1397
    :goto_0
    return-object v1

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1396
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1397
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 106
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualDeviceSoftwareVersionBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1381
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualDeviceSvnBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1386
    :goto_0
    return-object v1

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1385
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1386
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualEriVersion(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 1059
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualEriVersion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1063
    :goto_0
    return v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1062
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1063
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualEriVersionBySlotId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 2082
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualEriVersionBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2087
    :goto_0
    return v1

    .line 2083
    :catch_0
    move-exception v0

    .line 2084
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2086
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2087
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 568
    :goto_0
    return-object v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 566
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 568
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1712
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1AlphaTagBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1718
    :goto_0
    return-object v1

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1716
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1718
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 535
    :goto_0
    return-object v1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 533
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 535
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualLine1NumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1676
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualLine1NumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1682
    :goto_0
    return-object v1

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1680
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1682
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualMcc(I)Ljava/lang/String;
    .locals 5
    .parameter "phoneId"

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, imsi:Ljava/lang/String;
    const/4 v1, 0x0

    .line 513
    .local v1, mcc:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 514
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 516
    :cond_0
    const-string v2, "CPTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDualMcc phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v1
.end method

.method public getDualMccBySlotId(I)Ljava/lang/String;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 1657
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualSubscriberIdBySlotId(I)Ljava/lang/String;

    move-result-object v0

    .line 1658
    .local v0, imsi:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1659
    .local v1, mcc:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 1660
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1662
    :cond_0
    const-string v2, "CPTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDualMcc phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-object v1
.end method

.method public getDualMin(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 1070
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1074
    :goto_0
    return-object v1

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1073
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1074
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualMinBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 2094
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualMinBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2099
    :goto_0
    return-object v1

    .line 2095
    :catch_0
    move-exception v0

    .line 2096
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2098
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2099
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNeighboringCellInfo(I)Ljava/util/List;
    .locals 4
    .parameter "phoneId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNeighboringCellInfo(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 230
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNeighboringCellInfoBySlotId(I)Ljava/util/List;
    .locals 4
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1481
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNeighboringCellInfoBySlotId(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1486
    :goto_0
    return-object v1

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1485
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1486
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 368
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 369
    const-string v0, "cdma.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 372
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkCountryIsoBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1555
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 329
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 330
    const-string v0, "cdma.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 333
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperatorBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1531
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 310
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 311
    const-string v0, "cdma.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    .line 313
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 314
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualNetworkOperatorNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1519
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualNetworkType(I)I
    .locals 6
    .parameter "mPhoneId"

    .prologue
    const/4 v2, 0x0

    .line 663
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 664
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 666
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNetworkType(I)I

    move-result v2

    .line 679
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 669
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDualNetworkType: telephony == null, mphoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 674
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 676
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 677
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 679
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkTypeBySlotId(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 1818
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1819
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1821
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualNetworkTypeBySlotId(I)I

    move-result v2

    .line 1835
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1824
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDualNetworkType: telephony == null, slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1829
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1831
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1833
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1835
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "mPhoneId"

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 726
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 694
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 696
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 698
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 700
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 702
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 704
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 706
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 708
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 710
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 712
    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 714
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 716
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 718
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 720
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 722
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 724
    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getDualNetworkTypeNameBySlotId(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 1848
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkTypeBySlotId(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1882
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1850
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 1852
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 1854
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 1856
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 1858
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 1860
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 1862
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 1864
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 1866
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 1868
    :pswitch_9
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 1870
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 1872
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 1874
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 1876
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 1878
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 1880
    :pswitch_f
    const-string v0, "GSM"

    goto :goto_0

    .line 1848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getDualPhoneType(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 245
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualActivePhoneType(I)I

    move-result v2

    .line 258
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 249
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 251
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 254
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 255
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 258
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDualPhoneTypeBySlotId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1499
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1500
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1501
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDualActivePhoneTypeBySlotId(I)I

    move-result v2

    .line 1514
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1504
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1506
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1509
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1510
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 1511
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1514
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDualPrlVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 920
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualPrlVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 924
    :goto_0
    return-object v1

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 923
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 924
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualPrlVersionBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1964
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualPrlVersionBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1969
    :goto_0
    return-object v1

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1968
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1969
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualRFCalibration(I)[I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 888
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 890
    .local v0, defaultDualRFCalibration:[I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualRFCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 894
    .end local v0           #defaultDualRFCalibration:[I
    :goto_0
    return-object v0

    .line 891
    .restart local v0       #defaultDualRFCalibration:[I
    :catch_0
    move-exception v1

    .line 892
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 893
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 894
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 888
    nop

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
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1930
    const/4 v2, 0x6

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1932
    .local v0, defaultDualRFCalibration:[I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualRFCalibrationBySlotId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1937
    .end local v0           #defaultDualRFCalibration:[I
    :goto_0
    return-object v0

    .line 1933
    .restart local v0       #defaultDualRFCalibration:[I
    :catch_0
    move-exception v1

    .line 1934
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1936
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1937
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1930
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

.method public getDualSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 471
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 472
    const-string v0, "cdma.ruim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    .line 474
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 475
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 478
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimCountryIsoBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1621
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 438
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 439
    const-string v0, "cdma.ruim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 441
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 442
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperatorBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1600
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneId"

    .prologue
    .line 456
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 457
    const-string v0, "cdma.ruim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    .line 459
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 460
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualSimOperatorNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1612
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 490
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 495
    :goto_0
    return-object v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 493
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 495
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSimSerialNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1634
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualIccSerialNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1640
    :goto_0
    return-object v1

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1638
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1640
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSimState(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x2

    .line 406
    if-ne p1, v1, :cond_1

    .line 407
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    const/4 v1, 0x1

    .line 424
    :cond_0
    :goto_1
    return v1

    .line 409
    .end local v0           #prop:Ljava/lang/String;
    :cond_1
    const-string v2, "cdma.ruim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 415
    :cond_2
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    const/4 v1, 0x3

    goto :goto_1

    .line 419
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    const/4 v1, 0x4

    goto :goto_1

    .line 421
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 422
    const/4 v1, 0x5

    goto :goto_1

    .line 424
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDualSimStateBySlotId(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1586
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/4 v0, 0x0

    return v0
.end method

.method public getDualSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 501
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 504
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 506
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1646
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSubscriberIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1652
    :goto_0
    return-object v1

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1650
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1652
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUimId(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 935
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualUimId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 939
    :goto_0
    return-object v1

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 938
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 939
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUimIdBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1980
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualUimIdBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1985
    :goto_0
    return-object v1

    .line 1981
    :catch_0
    move-exception v0

    .line 1982
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1984
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1985
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualUserSetEncodingMode(I)Ljava/lang/String;
    .locals 7
    .parameter "phoneId"

    .prologue
    .line 1362
    const-string v1, ""

    .line 1363
    .local v1, encodingMode:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1364
    .local v2, inData:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1366
    .local v3, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x87

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_0
    const-string v4, "encodemode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodingMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return-object v1

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getDualUserSetEncodingModeBySlotId(I)Ljava/lang/String;
    .locals 7
    .parameter "slotId"

    .prologue
    .line 2365
    const-string v1, ""

    .line 2366
    .local v1, encodingMode:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2367
    .local v2, inData:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2369
    .local v3, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x87

    invoke-interface {v4, v5, v2, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2375
    :goto_0
    const-string v4, "encodemode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2376
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodingMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    return-object v1

    .line 2372
    :catch_0
    move-exception v0

    .line 2373
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 639
    :goto_0
    return-object v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 637
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 639
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1788
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailAlphaTagBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1794
    :goto_0
    return-object v1

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1792
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1794
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 580
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 585
    :goto_0
    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 583
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 585
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1730
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualVoiceMailNumberBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1736
    :goto_0
    return-object v1

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1734
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1736
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMessageCount(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 616
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 621
    :goto_0
    return v1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 619
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 621
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDualVoiceMessageCountBySlotId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1769
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDualVoiceMessageCountBySlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1775
    :goto_0
    return v1

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1773
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1775
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getG2ServiceCellInfo(ILcom/yulong/android/telephony/G2ServiceCellInfo;)Z
    .locals 5
    .parameter "phoneId"
    .parameter "info"

    .prologue
    .line 1135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1136
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1138
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    const-string v3, "g2servicecellinfo_mMcc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    .line 1146
    const-string v3, "g2servicecellinfo_mMnc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    .line 1147
    const-string v3, "g2servicecellinfo_mLac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    .line 1148
    const-string v3, "g2servicecellinfo_mT3212"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    .line 1149
    const-string v3, "g2servicecellinfo_mRac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    .line 1150
    const-string v3, "g2servicecellinfo_mNmo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    .line 1151
    const-string v3, "g2servicecellinfo_mServCELLBcchArfcn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    .line 1153
    const-string v3, "g2servicecellinfo_mServCellCi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    .line 1154
    const-string v3, "g2servicecellinfo_mServCellGprsSupp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    .line 1156
    const-string v3, "g2servicecellinfo_mServSysInfoRxlexMin"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    .line 1158
    const-string v3, "g2servicecellinfo_mServCellBand"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    .line 1159
    const-string v3, "g2servicecellinfo_mServCellDscMax"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    .line 1161
    const-string v3, "g2servicecellinfo_mEdgeSupport"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    .line 1162
    const-string v3, "g2servicecellinfo_mGprsSupport"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    .line 1163
    const-string v3, "g2servicecellinfo_mServSysInfoDtxInd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    .line 1165
    const-string v3, "g2servicecellinfo_mServCellRxlev"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    .line 1167
    const-string v3, "g2servicecellinfo_mServCellBsic"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    .line 1168
    const-string v3, "g2servicecellinfo_mServCellC1"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    .line 1169
    const-string v3, "g2servicecellinfo_mServCellC2"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    .line 1170
    const-string v3, "g2servicecellinfo_mServCellC31"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    .line 1171
    const-string v3, "g2servicecellinfo_mServCellC32"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    .line 1172
    const-string v3, "g2servicecellinfo_mSCellDsc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    .line 1174
    const/4 v3, 0x1

    return v3

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getG2ServiceCellInfoBySlotId(ILcom/yulong/android/telephony/G2ServiceCellInfo;)Z
    .locals 5
    .parameter "slotId"
    .parameter "info"

    .prologue
    .line 2137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2138
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2140
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    :goto_0
    const-string v3, "g2servicecellinfo_mMcc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    .line 2148
    const-string v3, "g2servicecellinfo_mMnc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    .line 2149
    const-string v3, "g2servicecellinfo_mLac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    .line 2150
    const-string v3, "g2servicecellinfo_mT3212"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    .line 2151
    const-string v3, "g2servicecellinfo_mRac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    .line 2152
    const-string v3, "g2servicecellinfo_mNmo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    .line 2153
    const-string v3, "g2servicecellinfo_mServCELLBcchArfcn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    .line 2155
    const-string v3, "g2servicecellinfo_mServCellCi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    .line 2156
    const-string v3, "g2servicecellinfo_mServCellGprsSupp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    .line 2158
    const-string v3, "g2servicecellinfo_mServSysInfoRxlexMin"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    .line 2160
    const-string v3, "g2servicecellinfo_mServCellBand"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    .line 2161
    const-string v3, "g2servicecellinfo_mServCellDscMax"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    .line 2163
    const-string v3, "g2servicecellinfo_mEdgeSupport"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    .line 2164
    const-string v3, "g2servicecellinfo_mGprsSupport"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    .line 2165
    const-string v3, "g2servicecellinfo_mServSysInfoDtxInd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    .line 2167
    const-string v3, "g2servicecellinfo_mServCellRxlev"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    .line 2169
    const-string v3, "g2servicecellinfo_mServCellBsic"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    .line 2170
    const-string v3, "g2servicecellinfo_mServCellC1"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    .line 2171
    const-string v3, "g2servicecellinfo_mServCellC2"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    .line 2172
    const-string v3, "g2servicecellinfo_mServCellC31"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    .line 2173
    const-string v3, "g2servicecellinfo_mServCellC32"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    .line 2174
    const-string v3, "g2servicecellinfo_mSCellDsc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    .line 2176
    const/4 v3, 0x1

    return v3

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getG3ServiceCellInfo(ILcom/yulong/android/telephony/G3ServiceCellInfo;)Z
    .locals 5
    .parameter "phoneId"
    .parameter "info"

    .prologue
    .line 1213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1214
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1216
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x81

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :goto_0
    const-string v3, "g3servicecellinfo_rscp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    .line 1223
    const-string v3, "g3servicecellinfo_pathLoss"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    .line 1224
    const-string v3, "g3servicecellinfo_arfcn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    .line 1225
    const-string v3, "g3servicecellinfo_rssi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    .line 1226
    const-string v3, "g3servicecellinfo_mMcc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    .line 1227
    const-string v3, "g3servicecellinfo_mMnc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    .line 1228
    const-string v3, "g3servicecellinfo_mLac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    .line 1229
    const-string v3, "g3servicecellinfo_mT3212"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    .line 1230
    const-string v3, "g3servicecellinfo_mRac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    .line 1231
    const-string v3, "g3servicecellinfo_mNmo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    .line 1232
    const/4 v3, 0x1

    return v3

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getG3ServiceCellInfoBySlotId(ILcom/yulong/android/telephony/G3ServiceCellInfo;)Z
    .locals 5
    .parameter "slotId"
    .parameter "info"

    .prologue
    .line 2216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2217
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2219
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x81

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    :goto_0
    const-string v3, "g3servicecellinfo_rscp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    .line 2226
    const-string v3, "g3servicecellinfo_pathLoss"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    .line 2227
    const-string v3, "g3servicecellinfo_arfcn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    .line 2228
    const-string v3, "g3servicecellinfo_rssi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    .line 2229
    const-string v3, "g3servicecellinfo_mMcc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    .line 2230
    const-string v3, "g3servicecellinfo_mMnc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    .line 2231
    const-string v3, "g3servicecellinfo_mLac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    .line 2232
    const-string v3, "g3servicecellinfo_mT3212"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    .line 2233
    const-string v3, "g3servicecellinfo_mRac"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    .line 2234
    const-string v3, "g3servicecellinfo_mNmo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    .line 2235
    const/4 v3, 0x1

    return v3

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLTECsPsMode(I)V
    .locals 7
    .parameter "phoneId"

    .prologue
    .line 2395
    const-string v3, ""

    .line 2396
    .local v3, state:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2397
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2398
    .local v2, outData:Landroid/os/Bundle;
    const-string/jumbo v4, "rilIoControl_ex"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2400
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0xa0

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2405
    :goto_0
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2406
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLTECsPsMode NvCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    return-void

    .line 2402
    :catch_0
    move-exception v0

    .line 2403
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLteServiceCellInfo(ILcom/yulong/android/telephony/LteServiceCellInfo;)Z
    .locals 6
    .parameter "phoneId"
    .parameter "info"

    .prologue
    .line 1265
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1266
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1268
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x89

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :goto_0
    new-instance v3, Lcom/yulong/android/telephony/LteServiceCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/LteServiceCellInfo;-><init>()V

    .line 1276
    .local v3, temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    const-string v4, "LTE_SCELL_INFO"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    check-cast v3, Lcom/yulong/android/telephony/LteServiceCellInfo;

    .line 1279
    .restart local v3       #temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    .line 1280
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    .line 1281
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    .line 1282
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    .line 1283
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    .line 1284
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    .line 1285
    const/4 v4, 0x1

    return v4

    .line 1271
    .end local v3           #temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    :catch_0
    move-exception v0

    .line 1272
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLteServiceCellInfoBySlotId(ILcom/yulong/android/telephony/LteServiceCellInfo;)Z
    .locals 6
    .parameter "slotId"
    .parameter "info"

    .prologue
    .line 2269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2270
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2272
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x89

    invoke-interface {v4, v5, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2279
    :goto_0
    new-instance v3, Lcom/yulong/android/telephony/LteServiceCellInfo;

    invoke-direct {v3}, Lcom/yulong/android/telephony/LteServiceCellInfo;-><init>()V

    .line 2280
    .local v3, temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    const-string v4, "LTE_SCELL_INFO"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    check-cast v3, Lcom/yulong/android/telephony/LteServiceCellInfo;

    .line 2283
    .restart local v3       #temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->tac:I

    .line 2284
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->earfcn:I

    .line 2285
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->antenna:I

    .line 2286
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->bandwidth:I

    .line 2287
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->lte_band:I

    .line 2288
    iget v4, v3, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    iput v4, p2, Lcom/yulong/android/telephony/LteServiceCellInfo;->pci:I

    .line 2289
    const/4 v4, 0x1

    return v4

    .line 2275
    .end local v3           #temp:Lcom/yulong/android/telephony/LteServiceCellInfo;
    :catch_0
    move-exception v0

    .line 2276
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getModemVersion(I)Ljava/lang/String;
    .locals 7
    .parameter "phoneId"

    .prologue
    .line 1290
    const-string v2, ""

    .line 1291
    .local v2, modemVersion:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1292
    .local v1, inData:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1294
    .local v3, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x85

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :goto_0
    const-string/jumbo v4, "modemversion"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1301
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xl modemVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-object v2

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getModemVersionBySlotId(I)Ljava/lang/String;
    .locals 7
    .parameter "slotId"

    .prologue
    .line 2294
    const-string v2, ""

    .line 2295
    .local v2, modemVersion:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2296
    .local v1, inData:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2298
    .local v3, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/16 v5, 0x85

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    :goto_0
    const-string/jumbo v4, "modemversion"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2305
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xl modemVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    return-object v2

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNvVersion(I)Ljava/lang/String;
    .locals 7
    .parameter "phoneId"

    .prologue
    .line 1345
    const-string v2, ""

    .line 1346
    .local v2, nvVersion:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1347
    .local v1, inData:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1349
    .local v3, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x86

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_0
    const-string/jumbo v4, "nvversion"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1356
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nvVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-object v2

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNvVersionBySlotId(I)Ljava/lang/String;
    .locals 7
    .parameter "slotId"

    .prologue
    .line 2348
    const-string v2, ""

    .line 2349
    .local v2, nvVersion:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2350
    .local v1, inData:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2352
    .local v3, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    const/16 v5, 0x86

    invoke-interface {v4, v5, v1, v3, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2358
    :goto_0
    const-string/jumbo v4, "nvversion"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2359
    const-string v4, "CPTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nvVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    return-object v2

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getRegIdd(I)Ljava/lang/String;
    .locals 4
    .parameter "iPhoneId"

    .prologue
    .line 1044
    const-string v1, ""

    .line 1046
    .local v1, regIdd:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: enter getRegIdd."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRegIdd(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1053
    :goto_0
    return-object v1

    .line 1048
    :catch_0
    move-exception v0

    .line 1050
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getRegIddBySlotId(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    .line 2067
    const-string v1, ""

    .line 2069
    .local v1, regIdd:Ljava/lang/String;
    :try_start_0
    const-string v2, "CPTelephonyManager"

    const-string v3, "CP_COMM: enter getRegIdd."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRegIddBySlotId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2076
    :goto_0
    return-object v1

    .line 2071
    :catch_0
    move-exception v0

    .line 2073
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getSnId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDualSnId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 156
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getYLDeviceId(II)Ljava/lang/String;
    .locals 3
    .parameter "phoneId"
    .parameter "devType"

    .prologue
    const/4 v1, 0x0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getYLDeviceId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 141
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getYLDeviceIdBySlotId(II)Ljava/lang/String;
    .locals 3
    .parameter "slotId"
    .parameter "devType"

    .prologue
    const/4 v1, 0x0

    .line 1403
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getYLDeviceIdBySlotId(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1408
    :goto_0
    return-object v1

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1407
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1408
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasDualIccCard(I)Z
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 383
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasDualIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 389
    :goto_0
    return v1

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 387
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 389
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasDualIccCardBySlotId(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 1564
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasDualIccCardBySlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1571
    :goto_0
    return v1

    .line 1565
    :catch_0
    move-exception v0

    .line 1567
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1569
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1571
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDualNetworkRoaming(I)Z
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 348
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 349
    const-string/jumbo v0, "true"

    const-string v1, "cdma.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    :goto_0
    return v0

    .line 351
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 352
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualNetworkRoamingBySlotId(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1542
    const-string v0, "CPTelephonyManager"

    const-string/jumbo v1, "not implement,please use phoneid interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public listenDual(Lcom/yulong/android/telephony/CPPhoneStateListener;I)V
    .locals 6
    .parameter "listenerDual"
    .parameter "events"

    .prologue
    .line 777
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 781
    .local v1, notifyNow:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Lcom/yulong/android/telephony/CPPhoneStateListener;->callback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenDual(Ljava/lang/String;Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 790
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 777
    .end local v2           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v2, "<unknown>"

    goto :goto_0

    .line 780
    .restart local v2       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 783
    :catch_0
    move-exception v0

    .line 785
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: listenDual func have RemoteException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 786
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 788
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "CPTelephonyManager"

    const-string v4, "CP_COMM: listenDual func have null pointer."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public operateFactoryNumber(IILjava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "operate"
    .parameter "value"
    .parameter "phoneId"

    .prologue
    .line 1324
    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    if-nez p3, :cond_0

    .line 1327
    const-string p3, ""

    .line 1330
    :cond_0
    :try_start_0
    const-string v1, "CPTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [operateFactoryNumber] key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", operate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->operateFactoryNumber(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1341
    :goto_0
    return-void

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1337
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1339
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public operateFactoryNumberBySlotId(IILjava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "operate"
    .parameter "value"
    .parameter "slotId"

    .prologue
    .line 2327
    iget-object v1, p0, Lcom/yulong/android/telephony/CPTelephonyManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    if-nez p3, :cond_0

    .line 2330
    const-string p3, ""

    .line 2333
    :cond_0
    :try_start_0
    const-string v1, "CPTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: [operateFactoryNumber] key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", operate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->operateFactoryNumberBySlotId(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2344
    :goto_0
    return-void

    .line 2338
    :catch_0
    move-exception v0

    .line 2339
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2340
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2342
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendCommandToRil(ILjava/lang/String;)V
    .locals 2
    .parameter "PhoneId"
    .parameter "strcmd"

    .prologue
    .line 1025
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCommandToRil(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCommandToRilBySlotId(ILjava/lang/String;)V
    .locals 2
    .parameter "slotId"
    .parameter "strcmd"

    .prologue
    .line 2049
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCommandToRilBySlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    :goto_0
    return-void

    .line 2050
    :catch_0
    move-exception v0

    .line 2051
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1093
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualBackCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1100
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1096
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1098
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "phoneId"

    .prologue
    .line 545
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualLine1Number(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualLine1NumberBySlotId(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "slotId"

    .prologue
    .line 1693
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->setDualLine1NumberBySlotId(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :goto_0
    return-void

    .line 1695
    :catch_0
    move-exception v0

    .line 1697
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setDualPreferredNetworkType(Ljava/lang/String;I)Z
    .locals 5
    .parameter "networkType"
    .parameter "phoneId"

    .prologue
    .line 2429
    const-string v2, "CPTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDualPreferredNetworkType: networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2431
    .local v0, inData:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2432
    .local v1, outData:Landroid/os/Bundle;
    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    const/16 v2, 0x18

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v2

    return v2
.end method

.method public setGpsOne(I)V
    .locals 2
    .parameter "icmd"

    .prologue
    .line 968
    const-string v0, "CPTelephonyManager"

    const-string v1, "CP_COMM: dont has fuction setGpsOne."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method

.method public setLTECsPsMode(II)I
    .locals 8
    .parameter "phoneId"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 2411
    const-string v3, ""

    .line 2412
    .local v3, state:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2413
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2414
    .local v2, outData:Landroid/os/Bundle;
    const-string/jumbo v5, "rilIoControl_ex"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2415
    const-string v5, "LTECsPsMode"

    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2417
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/16 v6, 0xa1

    invoke-interface {v5, v6, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2422
    :goto_0
    const-string v5, "CPTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLTECsPsMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const-string v5, "data"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2425
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v4

    .line 2419
    :catch_0
    move-exception v0

    .line 2420
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2425
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setLTEUsageMode(II)V
    .locals 6
    .parameter "phoneId"
    .parameter "mode"

    .prologue
    .line 2381
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2382
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2384
    .local v2, outData:Landroid/os/Bundle;
    const-string v3, "lteUsageMode"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2386
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    const/16 v4, 0x8b

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->phoneSubDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2391
    :goto_0
    const-string v3, "CPTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLTEUsageMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    return-void

    .line 2388
    :catch_0
    move-exception v0

    .line 2389
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startModemCellTest(I)Z
    .locals 5
    .parameter "phoneId"

    .prologue
    .line 1105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1106
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1108
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startModemCellTestBySlotId(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 2106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2107
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2109
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 2112
    :catch_0
    move-exception v0

    .line 2113
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopModemCellTest(I)Z
    .locals 5
    .parameter "phoneId"

    .prologue
    .line 1120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1121
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1123
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopModemCellTestBySlotId(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 2121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2122
    .local v1, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2124
    .local v2, outData:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-interface {v3, v4, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2130
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 2127
    :catch_0
    move-exception v0

    .line 2128
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 2
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"
    .parameter "phoneId"

    .prologue
    .line 957
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 964
    :goto_0
    return v1

    .line 959
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 964
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 2
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"
    .parameter "slotId"

    .prologue
    .line 1992
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControlBySlotId(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1999
    :goto_0
    return v1

    .line 1994
    :catch_0
    move-exception v0

    .line 1996
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1999
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "ioCode"
    .parameter "inData"
    .parameter "outData"

    .prologue
    .line 945
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/telephony/CPTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 951
    :goto_0
    return v1

    .line 946
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 951
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSignalStrength(I)V
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 1306
    const/16 v1, 0x1a

    .line 1307
    .local v1, ioCode:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1308
    .local v0, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1310
    .local v2, outData:Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    .line 1311
    return-void
.end method

.method public updateSignalStrengthBySlotId(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 2310
    const/16 v1, 0x1a

    .line 2311
    .local v1, ioCode:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2312
    .local v0, inData:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2313
    .local v2, outData:Landroid/os/Bundle;
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/yulong/android/telephony/CPTelephonyManager;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    .line 2314
    return-void
.end method
