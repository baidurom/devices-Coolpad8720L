.class Lcom/baidu/location/Jni;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static do:I

.field private static for:I

.field private static if:I

.field private static int:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/Jni;->for:I

    const/4 v0, 0x1

    sput v0, Lcom/baidu/location/Jni;->do:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/location/Jni;->int:I

    const/16 v0, 0xb

    sput v0, Lcom/baidu/location/Jni;->a:I

    const/16 v0, 0x400

    sput v0, Lcom/baidu/location/Jni;->if:I

    const-string v0, "locSDK_2.3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget v1, Lcom/baidu/location/Jni;->if:I

    new-array v3, v1, [B

    move v1, v0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    aget-byte v4, v2, v1

    if-eqz v4, :cond_0

    aget-byte v4, v2, v1

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "baidu_location_service"

    const-string v5, "\\0 found in string"

    invoke-static {v4, v5}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/baidu/location/Jni;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|tp=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(DDLjava/lang/String;)[D
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    const/4 v0, -0x1

    const-string v2, "bd09"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lcom/baidu/location/Jni;->for:I

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/location/Jni;->coorEncry(DDI)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_1
    const-string v2, "bd09ll"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v0, Lcom/baidu/location/Jni;->do:I

    goto :goto_0

    :cond_2
    const-string v2, "gcj02"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v0, Lcom/baidu/location/Jni;->int:I

    goto :goto_0

    :cond_3
    const-string v2, "gps2gcj"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v0, Lcom/baidu/location/Jni;->a:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static native coorEncry(DDI)Ljava/lang/String;
.end method

.method private static native encode([B)Ljava/lang/String;
.end method
