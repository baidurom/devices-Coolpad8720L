.class Lcom/baidu/location/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c$b;,
        Lcom/baidu/location/c$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/Class;

.field private static byte:Ljava/lang/String;

.field private static case:Ljava/lang/reflect/Method;

.field private static else:Ljava/lang/reflect/Method;

.field private static for:Ljava/lang/reflect/Method;

.field private static goto:J

.field private static void:I


# instance fields
.field private a:Lcom/baidu/location/c$a;

.field private final char:Ljava/lang/String;

.field private do:Landroid/os/Handler;

.field private if:Landroid/content/Context;

.field private int:Lcom/baidu/location/c$b;

.field private long:Z

.field private new:Ljava/util/List;

.field private try:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/c;->byte:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/c;->else:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/c;->case:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/c;->for:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/baidu/location/c;->goto:J

    const/4 v0, 0x3

    sput v0, Lcom/baidu/location/c;->void:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "baidu_location_service"

    iput-object v0, p0, Lcom/baidu/location/c;->char:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/c;->if:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iput-object v1, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/c;->do:Landroid/os/Handler;

    iput-object v1, p0, Lcom/baidu/location/c;->int:Lcom/baidu/location/c$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c;->long:Z

    iput-object p1, p0, Lcom/baidu/location/c;->if:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/c;->do:Landroid/os/Handler;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v1, 0x40133333

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, "&addr=detail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&coor=gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&im="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/baidu/location/c;->byte:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&mb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&os=Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&sv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/baidu/location/c$a;

    invoke-direct {v2, p0}, Lcom/baidu/location/c$a;-><init>(Lcom/baidu/location/c;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/baidu/location/c$a;->byte:J

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v6, :cond_4

    const/4 v0, 0x0

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iget v0, v0, Lcom/baidu/location/c$a;->do:I

    :cond_2
    iput v0, v2, Lcom/baidu/location/c$a;->do:I

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iget v0, v0, Lcom/baidu/location/c$a;->if:I

    :cond_3
    iput v0, v2, Lcom/baidu/location/c$a;->if:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v2, Lcom/baidu/location/c$a;->for:I

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, v2, Lcom/baidu/location/c$a;->try:I

    const/16 v0, 0x67

    iput-char v0, v2, Lcom/baidu/location/c$a;->new:C

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    invoke-virtual {v0, v2}, Lcom/baidu/location/c$a;->a(Lcom/baidu/location/c$a;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iput-object v2, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iget-object v0, p0, Lcom/baidu/location/c;->do:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v2}, Lcom/baidu/location/c$a;->do()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    iget v1, v0, Lcom/baidu/location/c$a;->try:I

    iget-object v2, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iget v2, v2, Lcom/baidu/location/c$a;->try:I

    if-ne v1, v2, :cond_8

    iget v1, v0, Lcom/baidu/location/c$a;->for:I

    iget-object v2, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iget v2, v2, Lcom/baidu/location/c$a;->for:I

    if-eq v1, v2, :cond_0

    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iget-wide v1, v1, Lcom/baidu/location/c$a;->byte:J

    iget-wide v3, v0, Lcom/baidu/location/c$a;->byte:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/baidu/location/c$a;->byte:J

    :cond_9
    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/c;->void:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "baidu_location_service"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_5

    const/16 v0, 0x63

    iput-char v0, v2, Lcom/baidu/location/c$a;->new:C

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    if-nez v0, :cond_b

    :try_start_1
    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    sget-object v0, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    const-string v3, "getBaseStationId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c;->else:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    const-string v3, "getNetworkId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c;->case:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    const-string v3, "getSystemId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c;->for:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_b
    sget-object v0, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_2
    sget-object v0, Lcom/baidu/location/c;->for:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    iget v0, v0, Lcom/baidu/location/c$a;->if:I

    :cond_c
    iput v0, v2, Lcom/baidu/location/c$a;->if:I

    sget-object v0, Lcom/baidu/location/c;->else:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/baidu/location/c$a;->try:I

    sget-object v0, Lcom/baidu/location/c;->case:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/baidu/location/c$a;->for:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sput-object v1, Lcom/baidu/location/c;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c$a;

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/c;Landroid/telephony/CellLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->do:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    return-object v0
.end method

.method static synthetic new()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/c;->goto:J

    return-wide v0
.end method


# virtual methods
.method public do()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/c;->long:Z

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c;->if:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    new-instance v0, Lcom/baidu/location/c$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/c$b;-><init>(Lcom/baidu/location/c;)V

    iput-object v0, p0, Lcom/baidu/location/c;->int:Lcom/baidu/location/c$b;

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->int:Lcom/baidu/location/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/c;->int:Lcom/baidu/location/c$b;

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c;->byte:Ljava/lang/String;

    const-string v0, "baidu_location_service"

    const-string v1, "cell manager start..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/baidu/location/c;->long:Z

    goto :goto_0
.end method

.method public for()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->if:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c;->a(Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    invoke-virtual {v0}, Lcom/baidu/location/c$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public if()Lcom/baidu/location/c$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    invoke-virtual {v0}, Lcom/baidu/location/c$a;->if()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/c;->a(Landroid/telephony/CellLocation;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/c$a;

    return-object v0
.end method

.method public int()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/c;->byte:Ljava/lang/String;

    return-object v0
.end method

.method public try()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/c;->long:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c;->int:Lcom/baidu/location/c$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/c;->int:Lcom/baidu/location/c$b;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    iput-object v2, p0, Lcom/baidu/location/c;->int:Lcom/baidu/location/c$b;

    iput-object v2, p0, Lcom/baidu/location/c;->try:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/baidu/location/c;->new:Ljava/util/List;

    const-string v0, "baidu_location_service"

    const-string v1, "cell manager stop ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/baidu/location/c;->long:Z

    goto :goto_0
.end method
