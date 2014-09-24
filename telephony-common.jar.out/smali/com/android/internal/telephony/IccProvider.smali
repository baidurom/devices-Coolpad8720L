.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = true

.field private static final FDN:I = 0x2

.field private static final RUIM_ADN:I = 0x4

.field private static final RUIM_FDN:I = 0x6

.field private static final RUIM_SDN:I = 0x8

.field private static final SDN:I = 0x3

.field private static final SIM_ADN:I = 0x5

.field private static final SIM_FDN:I = 0x7

.field private static final SIM_SDN:I = 0x9

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSimulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 187
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 188
    const-string v2, "name"

    aput-object v2, v0, v1

    .line 189
    const-string v1, "number"

    aput-object v1, v0, v3

    .line 190
    const-string v1, "emails"

    aput-object v1, v0, v4

    .line 187
    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 209
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 208
    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 212
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/cdma"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/gsm"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/cdma"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/gsm"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/cdma"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/gsm"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 11
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "efType"

    .prologue
    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addIccRecordToEf: name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 631
    const/4 v10, 0x0

    .line 637
    .local v10, success:Z
    move-object/from16 v8, p5

    .line 640
    .local v8, efTypeAndNetMode:[I
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 639
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 641
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 643
    if-eqz v8, :cond_1

    array-length v1, v8

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 644
    const/4 v1, 0x0

    aget v1, p5, v1

    const-string v2, ""

    const-string v3, ""

    .line 645
    const/4 v4, 0x1

    aget v7, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    .line 644
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 657
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addIccRecordToEf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 658
    return v10

    .line 646
    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    if-eqz v8, :cond_0

    :try_start_1
    array-length v1, v8

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 647
    const/4 v1, 0x0

    aget v1, p5, v1

    const-string v2, ""

    const-string v3, ""

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto :goto_0

    .line 654
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v9

    .line 655
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 11
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "efType"

    .prologue
    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteIccRecordFromEf: name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 693
    const/4 v10, 0x0

    .line 694
    .local v10, success:Z
    move-object/from16 v8, p5

    .line 698
    .local v8, efTypeAndNetMode:[I
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 697
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 699
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 700
    if-eqz v8, :cond_1

    array-length v1, v8

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 701
    const-string v1, " one here "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 703
    const/4 v1, 0x0

    aget v1, v8, v1

    .line 704
    const-string v4, ""

    const-string v5, ""

    const/4 v2, 0x1

    aget v7, v8, v2

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    .line 703
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 716
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteIccRecordFromEf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 717
    return v10

    .line 705
    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    if-eqz v8, :cond_0

    :try_start_1
    array-length v1, v8

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 706
    const-string v1, " two there "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 707
    const/4 v1, 0x0

    aget v1, v8, v1

    .line 708
    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    .line 707
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto :goto_0

    .line 713
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v9

    .line 714
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private loadFromEf([I)Ljava/util/ArrayList;
    .locals 11
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 591
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v6, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 594
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const-string v7, "loadFromEf!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 595
    move-object v2, p1

    .line 598
    .local v2, efTypeAndNetMode:[I
    :try_start_0
    const-string v7, "simphonebook"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 597
    invoke-static {v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 599
    .local v5, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 600
    if-eqz v2, :cond_1

    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    const-string v7, "debug-zjh: getDualAdnRecordsInEf"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 601
    const/4 v7, 0x0

    aget v7, p1, v7

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/telephony/IIccPhoneBook;->getDualAdnRecordsInEf(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 611
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 614
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 615
    .local v0, N:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "adnRecords.size="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 616
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v0, :cond_2

    .line 624
    .end local v0           #N:I
    .end local v4           #i:I
    :goto_2
    const-string v7, "loadFromEf: return results"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 625
    return-object v6

    .line 602
    .restart local v5       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    if-eqz v2, :cond_0

    :try_start_1
    array-length v7, v2

    if-lt v7, v9, :cond_0

    .line 603
    const/4 v7, 0x0

    aget v7, p1, v7

    invoke-interface {v5, v7}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 608
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v3

    .line 609
    .local v3, ex:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v3           #ex:Ljava/lang/SecurityException;
    .restart local v0       #N:I
    .restart local v4       #i:I
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->isAdnRecordInvalid(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v10

    if-nez v10, :cond_baidu_0

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/util/ArrayList;)V

    .line 616
    :cond_baidu_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 621
    .end local v0           #N:I
    .end local v4           #i:I
    :cond_3
    const-string v7, "IccProvider"

    const-string v8, "Cannot load ADN records"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 606
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v1, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 731
    .local v5, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    .line 733
    .local v4, emails:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadRecord: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .local v3, emailString:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_2

    .line 739
    array-length v7, v4

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 744
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    :goto_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v1           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #emailString:Ljava/lang/StringBuilder;
    .end local v4           #emails:[Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    :cond_0
    return-void

    .line 739
    .restart local v0       #alphaTag:Ljava/lang/String;
    .restart local v1       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #emailString:Ljava/lang/StringBuilder;
    .restart local v4       #emails:[Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    :cond_1
    aget-object v2, v4, v6

    if-eqz v2, :cond_2

    .line 740
    .local v2, email:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding email:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 746
    .end local v2           #email:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 753
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[IccProvider] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    .local v0, len:I
    move-object v1, p1

    .line 417
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 418
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 421
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 11
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "efType"

    .prologue
    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateIccRecordInEf: oldname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 665
    const/4 v10, 0x0

    .line 666
    .local v10, success:Z
    move-object/from16 v8, p6

    .line 669
    .local v8, efTypeAndNetMode:[I
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 668
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 670
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 672
    if-eqz v8, :cond_1

    array-length v1, v8

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 673
    const/4 v1, 0x0

    aget v1, p6, v1

    .line 674
    const/4 v2, 0x1

    aget v7, p6, v2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    .line 673
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateDualAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 685
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateIccRecordInEf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 686
    return v10

    .line 675
    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    if-eqz v8, :cond_0

    :try_start_1
    array-length v1, v8

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 676
    const/4 v1, 0x0

    aget v1, p6, v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto :goto_0

    .line 682
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v9

    .line 683
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 680
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 428
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 429
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 431
    .local v10, match:I
    const/4 v12, -0x1

    .line 432
    .local v12, netType:I
    packed-switch v10, :pswitch_data_0

    .line 458
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "Cannot insert into URL: "

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 458
    invoke-direct {v2, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :pswitch_1
    const/16 v8, 0x6f3a

    .line 462
    .local v8, efType:I
    :goto_0
    const/4 v3, 0x0

    .line 463
    .local v3, tag:Ljava/lang/String;
    const/4 v4, 0x0

    .line 464
    .local v4, number:Ljava/lang/String;
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    .line 465
    .local v5, emails:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 469
    .local v6, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 470
    .local v16, tokens:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v11, v0

    .line 472
    .local v11, n:I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_1

    .line 501
    if-nez v3, :cond_6

    .line 502
    const/4 v2, 0x0

    .line 521
    :goto_2
    return v2

    .line 438
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #emails:[Ljava/lang/String;
    .end local v6           #pin2:Ljava/lang/String;
    .end local v8           #efType:I
    .end local v11           #n:I
    .end local v16           #tokens:[Ljava/lang/String;
    :pswitch_2
    const/16 v8, 0x6f3b

    .line 439
    .restart local v8       #efType:I
    goto :goto_0

    .line 442
    .end local v8           #efType:I
    :pswitch_3
    const/4 v12, 0x1

    .line 443
    const/16 v8, 0x6f3a

    .line 444
    .restart local v8       #efType:I
    goto :goto_0

    .line 446
    .end local v8           #efType:I
    :pswitch_4
    const/4 v12, 0x2

    .line 447
    const/16 v8, 0x6f3a

    .line 448
    .restart local v8       #efType:I
    goto :goto_0

    .line 450
    .end local v8           #efType:I
    :pswitch_5
    const/4 v12, 0x1

    .line 451
    const/16 v8, 0x6f3b

    .line 452
    .restart local v8       #efType:I
    goto :goto_0

    .line 454
    .end local v8           #efType:I
    :pswitch_6
    const/4 v12, 0x2

    .line 455
    const/16 v8, 0x6f3b

    .line 456
    .restart local v8       #efType:I
    goto :goto_0

    .line 473
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #emails:[Ljava/lang/String;
    .restart local v6       #pin2:Ljava/lang/String;
    .restart local v11       #n:I
    .restart local v16       #tokens:[Ljava/lang/String;
    :cond_1
    aget-object v14, v16, v11

    .line 474
    .local v14, param:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "parsing \'"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 476
    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 478
    .local v13, pair:[Ljava/lang/String;
    array-length v2, v13

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    .line 479
    const-string v2, "IccProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "resolve: bad whereClause parameter: "

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 483
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 486
    .local v17, val:Ljava/lang/String;
    const-string v2, "tag"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 488
    :cond_3
    const-string v2, "number"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 490
    :cond_4
    const-string v2, "emails"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    goto/16 :goto_1

    .line 493
    :cond_5
    const-string v2, "pin2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 505
    .end local v9           #key:Ljava/lang/String;
    .end local v13           #pair:[Ljava/lang/String;
    .end local v14           #param:Ljava/lang/String;
    .end local v17           #val:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    if-ne v8, v2, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 506
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 511
    :cond_7
    const/4 v15, 0x0

    .line 512
    .local v15, success:Z
    const/4 v2, -0x1

    if-eq v12, v2, :cond_8

    .line 513
    const/4 v2, 0x2

    new-array v7, v2, [I

    const/4 v2, 0x0

    aput v8, v7, v2

    const/4 v2, 0x1

    aput v12, v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v15

    .line 517
    :goto_3
    if-nez v15, :cond_9

    .line 518
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 515
    :cond_8
    const/4 v2, 0x1

    new-array v7, v2, [I

    const/4 v2, 0x0

    aput v8, v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v15

    goto :goto_3

    .line 521
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 308
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 322
    const/4 v4, 0x0

    .line 324
    .local v4, pin2:Ljava/lang/String;
    const-string v0, "insert"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 328
    .local v8, match:I
    const/4 v9, -0x1

    .line 329
    .local v9, netType:I
    packed-switch v8, :pswitch_data_0

    .line 359
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Cannot insert into URL: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :pswitch_1
    const/16 v7, 0x6f3a

    .line 363
    .local v7, efType:I
    :goto_0
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, tag:Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, number:Ljava/lang/String;
    const/4 v11, 0x0

    .line 367
    .local v11, success:Z
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    .line 368
    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput v7, v5, v0

    const/4 v0, 0x1

    aput v9, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v11

    .line 373
    :goto_1
    if-nez v11, :cond_1

    .line 374
    const/4 v10, 0x0

    .line 410
    :goto_2
    return-object v10

    .line 335
    .end local v1           #tag:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v7           #efType:I
    .end local v11           #success:Z
    :pswitch_2
    const/4 v9, 0x1

    .line 336
    const/16 v7, 0x6f3a

    .line 337
    .restart local v7       #efType:I
    goto :goto_0

    .line 339
    .end local v7           #efType:I
    :pswitch_3
    const/4 v9, 0x2

    .line 340
    const/16 v7, 0x6f3a

    .line 341
    .restart local v7       #efType:I
    goto :goto_0

    .line 344
    .end local v7           #efType:I
    :pswitch_4
    const/16 v7, 0x6f3b

    .line 345
    .restart local v7       #efType:I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    goto :goto_0

    .line 348
    .end local v7           #efType:I
    :pswitch_5
    const/4 v9, 0x1

    .line 349
    const/16 v7, 0x6f3b

    .line 350
    .restart local v7       #efType:I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    goto :goto_0

    .line 353
    .end local v7           #efType:I
    :pswitch_6
    const/4 v9, 0x2

    .line 354
    const/16 v7, 0x6f3b

    .line 355
    .restart local v7       #efType:I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 356
    goto :goto_0

    .line 370
    .restart local v1       #tag:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    .restart local v11       #success:Z
    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput v7, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v11

    goto :goto_1

    .line 377
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "content://icc/"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .local v6, buf:Ljava/lang/StringBuilder;
    packed-switch v8, :pswitch_data_1

    .line 400
    :goto_3
    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 410
    .local v10, resultUri:Landroid/net/Uri;
    goto :goto_2

    .line 380
    .end local v10           #resultUri:Landroid/net/Uri;
    :pswitch_8
    const-string v0, "adn/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 384
    :pswitch_9
    const-string v0, "fdn/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 387
    :pswitch_a
    const-string v0, "adn/cdma/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 390
    :pswitch_b
    const-string v0, "adn/gsm/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 393
    :pswitch_c
    const-string v0, "fdn/cdma/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 396
    :pswitch_d
    const-string v0, "fdn/gsm/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 378
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 228
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, device:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    .line 236
    :goto_0
    return v2

    .line 233
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 243
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    if-nez v2, :cond_0

    .line 244
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :pswitch_0
    new-array v2, v5, [I

    const/16 v3, 0x6f3a

    aput v3, v2, v4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 304
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v2

    .line 250
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_1
    new-array v2, v5, [I

    const/16 v3, 0x6f3b

    aput v3, v2, v4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 251
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 254
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    new-array v2, v5, [I

    const/16 v3, 0x6f49

    aput v3, v2, v4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 255
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 258
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_3
    const-string v1, "debug-zjh: loadFromEf"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 259
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 261
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_4
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 262
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 264
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_5
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 265
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 267
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_6
    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 268
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 270
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_7
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 271
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 273
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_8
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadFromEf([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 274
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 280
    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/H"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v2, "512-555-5038"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/M"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Melissa Owens"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Directory Assistence"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v2, "411"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 258
    :array_0
    .array-data 0x4
        0x3at 0x6ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 261
    :array_1
    .array-data 0x4
        0x3at 0x6ft 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 264
    :array_2
    .array-data 0x4
        0x3bt 0x6ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 267
    :array_3
    .array-data 0x4
        0x3bt 0x6ft 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 270
    :array_4
    .array-data 0x4
        0x49t 0x6ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 273
    :array_5
    .array-data 0x4
        0x49t 0x6ft 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 527
    const/4 v6, 0x0

    .line 529
    .local v6, pin2:Ljava/lang/String;
    const-string v1, "update"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 530
    const/4 v11, -0x1

    .line 531
    .local v11, netType:I
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 532
    .local v10, match:I
    packed-switch v10, :pswitch_data_0

    .line 562
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "Cannot insert into URL: "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 562
    invoke-direct {v1, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :pswitch_1
    const/16 v8, 0x6f3a

    .line 566
    .local v8, efType:I
    :goto_0
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, tag:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, number:Ljava/lang/String;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/String;

    .line 569
    .local v9, emails:[Ljava/lang/String;
    const-string v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, newTag:Ljava/lang/String;
    const-string v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, newNumber:Ljava/lang/String;
    const/4 v12, 0x0

    check-cast v12, [Ljava/lang/String;

    .line 574
    .local v12, newEmails:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 575
    .local v13, success:Z
    const/4 v1, -0x1

    if-eq v11, v1, :cond_0

    .line 577
    const/4 v1, 0x2

    new-array v7, v1, [I

    const/4 v1, 0x0

    aput v8, v7, v1

    const/4 v1, 0x1

    aput v11, v7, v1

    move-object v1, p0

    .line 576
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v13

    .line 583
    :goto_1
    if-nez v13, :cond_1

    .line 584
    const/4 v1, 0x0

    .line 587
    :goto_2
    return v1

    .line 538
    .end local v2           #tag:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #newTag:Ljava/lang/String;
    .end local v5           #newNumber:Ljava/lang/String;
    .end local v8           #efType:I
    .end local v9           #emails:[Ljava/lang/String;
    .end local v12           #newEmails:[Ljava/lang/String;
    .end local v13           #success:Z
    :pswitch_2
    const/16 v8, 0x6f3b

    .line 539
    .restart local v8       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 540
    goto :goto_0

    .line 544
    .end local v8           #efType:I
    :pswitch_3
    const/4 v11, 0x1

    .line 545
    const/16 v8, 0x6f3a

    .line 546
    .restart local v8       #efType:I
    goto :goto_0

    .line 548
    .end local v8           #efType:I
    :pswitch_4
    const/4 v11, 0x2

    .line 549
    const/16 v8, 0x6f3a

    .line 550
    .restart local v8       #efType:I
    goto :goto_0

    .line 552
    .end local v8           #efType:I
    :pswitch_5
    const/4 v11, 0x1

    .line 553
    const/16 v8, 0x6f3b

    .line 554
    .restart local v8       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 555
    goto :goto_0

    .line 557
    .end local v8           #efType:I
    :pswitch_6
    const/4 v11, 0x2

    .line 558
    const/16 v8, 0x6f3b

    .line 559
    .restart local v8       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 560
    goto :goto_0

    .line 580
    .restart local v2       #tag:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #newTag:Ljava/lang/String;
    .restart local v5       #newNumber:Ljava/lang/String;
    .restart local v9       #emails:[Ljava/lang/String;
    .restart local v12       #newEmails:[Ljava/lang/String;
    .restart local v13       #success:Z
    :cond_0
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    aput v8, v7, v1

    move-object v1, p0

    .line 579
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v13

    goto :goto_1

    .line 587
    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isAdnRecordInvalid(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method