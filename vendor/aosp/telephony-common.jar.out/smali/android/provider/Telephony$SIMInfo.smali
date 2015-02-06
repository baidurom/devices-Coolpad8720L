.class public Landroid/provider/Telephony$SIMInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$SIMInfo$ErrorCode;
    }
.end annotation


# instance fields
.field private dataRoaming:I

.field private dispalyNumberFormat:I

.field private displayName:Ljava/lang/String;

.field private iccId:Ljava/lang/String;

.field private iconId:I

.field private nameSource:I

.field private number:Ljava/lang/String;

.field private simId:J

.field private slot:I

.field private wapPush:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2356
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    .line 2358
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    .line 2359
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    .line 2360
    iput v2, p0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    .line 2361
    iput v2, p0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    .line 2362
    iput v1, p0, Landroid/provider/Telephony$SIMInfo;->slot:I

    .line 2363
    iput v1, p0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    .line 2446
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 2453
    new-instance v0, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {v0}, Landroid/provider/Telephony$SIMInfo;-><init>()V

    .line 2454
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->simId:J

    .line 2455
    const-string v1, "icc_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->iccId:Ljava/lang/String;

    .line 2456
    const-string v1, "display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    .line 2457
    const-string v1, "name_source"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->nameSource:I

    .line 2458
    const-string v1, "number"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    .line 2459
    const-string v1, "display_number_format"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    .line 2460
    const-string v1, "icon_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    .line 2461
    const-string v1, "data_roaming"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    .line 2462
    const-string v1, "slot"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->slot:I

    .line 2463
    const-string v1, "wap_push"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    .line 2464
    return-object v0
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 2689
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2692
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2693
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2696
    if-eqz v6, :cond_0

    .line 2697
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2700
    :cond_0
    :goto_0
    return v0

    .line 2696
    :cond_1
    if-eqz v6, :cond_2

    .line 2697
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2700
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2696
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2697
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2496
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2497
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2500
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2501
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2502
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2506
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 2507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 2506
    :cond_1
    if-eqz v6, :cond_2

    .line 2507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2510
    :cond_2
    return-object v7
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 3
    .parameter "ctx"
    .parameter "slot"

    .prologue
    .line 2636
    invoke-static {p0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2637
    .local v0, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 2638
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->simId:J

    .line 2639
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 2670
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2673
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2674
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2677
    if-eqz v6, :cond_0

    .line 2678
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2681
    :cond_0
    :goto_0
    return v0

    .line 2677
    :cond_1
    if-eqz v6, :cond_2

    .line 2678
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2681
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2677
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2678
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2473
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2477
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2478
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2483
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 2484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 2483
    :cond_1
    if-eqz v6, :cond_2

    .line 2484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2487
    :cond_2
    return-object v7
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "iccid"

    .prologue
    const/4 v2, 0x0

    .line 2590
    if-nez p1, :cond_1

    .line 2604
    :cond_0
    :goto_0
    return-object v2

    .line 2591
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2594
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2595
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2596
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2600
    if-eqz v6, :cond_0

    .line 2601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2600
    :cond_2
    if-eqz v6, :cond_0

    .line 2601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2600
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v2, 0x0

    .line 2520
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 2534
    :cond_0
    :goto_0
    return-object v2

    .line 2521
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2524
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2525
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2526
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2530
    if-eqz v6, :cond_0

    .line 2531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2530
    :cond_2
    if-eqz v6, :cond_0

    .line 2531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2530
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v2, 0x0

    .line 2544
    if-nez p1, :cond_1

    .line 2558
    :cond_0
    :goto_0
    return-object v2

    .line 2545
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2548
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2549
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2550
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2554
    if-eqz v6, :cond_0

    .line 2555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2554
    :cond_2
    if-eqz v6, :cond_0

    .line 2555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2554
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 8
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    const/4 v2, 0x0

    .line 2567
    if-gez p1, :cond_1

    .line 2581
    :cond_0
    :goto_0
    return-object v2

    .line 2568
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2571
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2572
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2573
    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2577
    if-eqz v6, :cond_0

    .line 2578
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2577
    :cond_2
    if-eqz v6, :cond_0

    .line 2578
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2577
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2578
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 2613
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 2627
    :cond_0
    :goto_0
    return v0

    .line 2614
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2617
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2618
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2619
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2623
    if-eqz v6, :cond_0

    .line 2624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2623
    :cond_2
    if-eqz v6, :cond_3

    .line 2624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 2627
    goto :goto_0

    .line 2623
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2624
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 2648
    if-nez p1, :cond_1

    move v0, v7

    .line 2662
    :cond_0
    :goto_0
    return v0

    .line 2649
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "slot"

    aput-object v3, v2, v5

    const-string v3, "display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2652
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2653
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2654
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2658
    if-eqz v6, :cond_0

    .line 2659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2658
    :cond_2
    if-eqz v6, :cond_3

    .line 2659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 2662
    goto :goto_0

    .line 2658
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static insertDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 13
    .parameter "ctx"
    .parameter "iccId"
    .parameter "defaultIconId"
    .parameter "defaultName"
    .parameter "slot"

    .prologue
    .line 2877
    if-nez p1, :cond_0

    .line 2878
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ICCId should not null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2881
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2882
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "icc_id=?"

    .line 2883
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "slot"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2889
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2890
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2891
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "icc_id"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const-string v2, "icon_id"

    invoke-virtual {v12, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    const-string v2, "name_source"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2895
    const-string v2, "slot"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2896
    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 2908
    .end local v12           #values:Landroid/content/ContentValues;
    .local v11, uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 2909
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2913
    :cond_3
    return-object v11

    .line 2898
    .end local v11           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2899
    .local v9, simId:J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2900
    .local v8, oldSlot:I
    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 2901
    .restart local v11       #uri:Landroid/net/Uri;
    move/from16 v0, p4

    if-eq v0, v8, :cond_2

    .line 2902
    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2903
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v2, "slot"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2904
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v11, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2908
    .end local v8           #oldSlot:I
    .end local v9           #simId:J
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 2909
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "ICCId"
    .parameter "slot"

    .prologue
    .line 2842
    if-nez p1, :cond_0

    .line 2843
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ICCId should not null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2846
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2847
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "icc_id=?"

    .line 2848
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "slot"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2850
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2851
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2852
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "icc_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string v1, "icon_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2854
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2855
    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 2868
    .end local v11           #values:Landroid/content/ContentValues;
    .local v10, uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2873
    :cond_3
    return-object v10

    .line 2858
    .end local v10           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2859
    .local v8, simId:J
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2860
    .local v7, oldSlot:I
    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2861
    .restart local v10       #uri:Landroid/net/Uri;
    if-eq p2, v7, :cond_2

    .line 2862
    new-instance v11, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2863
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2864
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2868
    .end local v7           #oldSlot:I
    .end local v8           #simId:J
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 2869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static resetSlot(Landroid/content/Context;)I
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 2916
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2917
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "slot"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2918
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static resetSlot(Landroid/content/Context;I)I
    .locals 5
    .parameter "ctx"
    .parameter "slot"

    .prologue
    .line 2922
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2923
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "slot"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2924
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static updateDataRoaming(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "roaming"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 2814
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 2817
    :goto_0
    return v1

    .line 2815
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2816
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2817
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "format"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 2799
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 2802
    :goto_0
    return v1

    .line 2800
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2801
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 10
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 2711
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 2727
    :cond_1
    :goto_0
    return v0

    .line 2712
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "display_name=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2715
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2716
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 2717
    const/4 v0, -0x2

    .line 2721
    if-eqz v6, :cond_1

    .line 2722
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2721
    :cond_3
    if-eqz v6, :cond_4

    .line 2722
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2725
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 2726
    .local v7, value:Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2721
    .end local v7           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2722
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static updateDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 10
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"
    .parameter "Source"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 2740
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayNameEx SIMId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 2758
    :cond_1
    :goto_0
    return v0

    .line 2742
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "display_name=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2745
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2746
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 2747
    const/4 v0, -0x2

    .line 2751
    if-eqz v6, :cond_1

    .line 2752
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2751
    :cond_3
    if-eqz v6, :cond_4

    .line 2752
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2755
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 2756
    .local v7, value:Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    const-string v0, "name_source"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2758
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2751
    .end local v7           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2752
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static updateIconId(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "iconId"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 2784
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 2787
    :goto_0
    return v1

    .line 2785
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2786
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "icon_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2787
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "number"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 2769
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 2772
    :goto_0
    return v1

    .line 2770
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2771
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static updateWAPPush(Landroid/content/Context;IJ)I
    .locals 6
    .parameter "ctx"
    .parameter "enable"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 2826
    if-gt p1, v4, :cond_0

    if-lt p1, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 2831
    :cond_0
    :goto_0
    return v1

    .line 2829
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2830
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "wap_push"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2831
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getDataRoaming()I
    .locals 1

    .prologue
    .line 2422
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    return v0
.end method

.method public getDispalyNumberFormat()I
    .locals 1

    .prologue
    .line 2406
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Landroid/provider/Telephony$SIMInfo;->iccId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 2414
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    return v0
.end method

.method public getNameSource()I
    .locals 1

    .prologue
    .line 2390
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->nameSource:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()J
    .locals 2

    .prologue
    .line 2366
    iget-wide v0, p0, Landroid/provider/Telephony$SIMInfo;->simId:J

    return-wide v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 2430
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->slot:I

    return v0
.end method

.method public getWapPush()I
    .locals 1

    .prologue
    .line 2438
    iget v0, p0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    return v0
.end method

.method public setDataRoaming(I)V
    .locals 0
    .parameter "dataRoaming"

    .prologue
    .line 2426
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->dataRoaming:I

    .line 2427
    return-void
.end method

.method public setDispalyNumberFormat(I)V
    .locals 0
    .parameter "dispalyNumberFormat"

    .prologue
    .line 2410
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->dispalyNumberFormat:I

    .line 2411
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 2386
    iput-object p1, p0, Landroid/provider/Telephony$SIMInfo;->displayName:Ljava/lang/String;

    .line 2387
    return-void
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 0
    .parameter "iccId"

    .prologue
    .line 2378
    iput-object p1, p0, Landroid/provider/Telephony$SIMInfo;->iccId:Ljava/lang/String;

    .line 2379
    return-void
.end method

.method public setIconId(I)V
    .locals 0
    .parameter "iconId"

    .prologue
    .line 2418
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->iconId:I

    .line 2419
    return-void
.end method

.method public setNameSource(I)V
    .locals 0
    .parameter "nameSource"

    .prologue
    .line 2394
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->nameSource:I

    .line 2395
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 2402
    iput-object p1, p0, Landroid/provider/Telephony$SIMInfo;->number:Ljava/lang/String;

    .line 2403
    return-void
.end method

.method public setSimId(J)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 2370
    iput-wide p1, p0, Landroid/provider/Telephony$SIMInfo;->simId:J

    .line 2371
    return-void
.end method

.method public setSlot(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 2434
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->slot:I

    .line 2435
    return-void
.end method

.method public setWapPush(I)V
    .locals 0
    .parameter "wapPush"

    .prologue
    .line 2442
    iput p1, p0, Landroid/provider/Telephony$SIMInfo;->wapPush:I

    .line 2443
    return-void
.end method
