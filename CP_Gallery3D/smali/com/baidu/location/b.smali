.class Lcom/baidu/location/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b$1;,
        Lcom/baidu/location/b$a;,
        Lcom/baidu/location/b$b;
    }
.end annotation


# static fields
.field private static final byte:Ljava/lang/String; = "baidu_location_service"

.field private static c:I = 0x0

.field private static final case:I = 0x5

.field private static final long:D = 1.0E-5

.field private static final new:I = 0xbb8

.field private static final try:I = 0x3


# instance fields
.field private a:Z

.field private b:Z

.field private char:Landroid/location/GpsStatus;

.field private d:Lcom/baidu/location/b$b;

.field private do:J

.field private e:Landroid/location/Location;

.field private else:Lcom/baidu/location/b$a;

.field private final f:J

.field private for:Ljava/lang/String;

.field private g:Landroid/location/LocationManager;

.field private goto:J

.field private if:Landroid/os/Handler;

.field private int:Z

.field private void:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/baidu/location/b;->f:J

    iput-object v2, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/baidu/location/b;->d:Lcom/baidu/location/b$b;

    iput-object v2, p0, Lcom/baidu/location/b;->else:Lcom/baidu/location/b$a;

    iput-wide v4, p0, Lcom/baidu/location/b;->goto:J

    iput-wide v4, p0, Lcom/baidu/location/b;->do:J

    iput-boolean v3, p0, Lcom/baidu/location/b;->a:Z

    iput-object v2, p0, Lcom/baidu/location/b;->if:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/baidu/location/b;->int:Z

    iput-object v2, p0, Lcom/baidu/location/b;->for:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/b;->b:Z

    iput-object p1, p0, Lcom/baidu/location/b;->void:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/b;->if:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/baidu/location/b;->c:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/location/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/b;->do:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/b;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b;->char:Landroid/location/GpsStatus;

    return-object p1
.end method

.method private a(Landroid/location/Location;)V
    .locals 8

    const-string v0, "baidu_location_service"

    const-string v1, "set new gpsLocation ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    iget-object v0, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b;->for:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/baidu/location/b;->if:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    iget-object v2, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const-string v3, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    sget v5, Lcom/baidu/location/b;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b;->for:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/b;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/baidu/location/b;->b:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/location/b;->byte()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/baidu/location/j;->new:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Lcom/baidu/location/j;->new:Z

    sget-boolean v0, Lcom/baidu/location/j;->char:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b;->if:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 10

    const-wide v8, 0x3ee4f8b588e368f1L

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {p1, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-double v4, v2

    const-wide/high16 v6, 0x4024

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    sget v2, Lcom/baidu/location/j;->try:F

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    float-to-double v4, v2

    const-wide/high16 v6, 0x4000

    cmpl-double v2, v4, v6

    if-lez v2, :cond_3

    sget v2, Lcom/baidu/location/j;->a:F

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b;->b:Z

    return v0
.end method

.method static synthetic do(Lcom/baidu/location/b;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic for()I
    .locals 1

    sget v0, Lcom/baidu/location/b;->c:I

    return v0
.end method

.method static synthetic if(Lcom/baidu/location/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/b;->goto:J

    return-wide p1
.end method

.method static synthetic if(Lcom/baidu/location/b;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b;->char:Landroid/location/GpsStatus;

    return-object v0
.end method

.method public static if(Landroid/location/Location;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL

    mul-double/2addr v0, v2

    double-to-float v2, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_1
    float-to-int v3, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    :goto_2
    const-string v4, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    sget v3, Lcom/baidu/location/b;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x7

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x4080

    goto :goto_1

    :cond_2
    const-wide v0, 0x4081580000000000L

    goto :goto_2
.end method

.method static synthetic if(Lcom/baidu/location/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b;->a:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/b;->int:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b;->d:Lcom/baidu/location/b$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/b;->d:Lcom/baidu/location/b$b;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b;->else:Lcom/baidu/location/b$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/b;->else:Lcom/baidu/location/b$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/baidu/location/b;->d:Lcom/baidu/location/b$b;

    iput-object v2, p0, Lcom/baidu/location/b;->else:Lcom/baidu/location/b$a;

    iput-object v2, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    iput-boolean v3, p0, Lcom/baidu/location/b;->int:Z

    invoke-direct {p0, v3}, Lcom/baidu/location/b;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public byte()Z
    .locals 8

    const-wide/16 v6, 0xbb8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/location/b;->try()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/baidu/location/b;->a:Z

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/baidu/location/b;->do:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    :cond_2
    sget v4, Lcom/baidu/location/b;->c:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lcom/baidu/location/b;->goto:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public do()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"s\":\"%f\",\"n\":\"%d\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iget-object v2, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-string v7, "gps2gcj"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aget-wide v5, v3, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    aget-wide v5, v3, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    iget-object v5, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x5

    sget v2, Lcom/baidu/location/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu_location_service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wgs84: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " gcj02: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, v3, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const/high16 v0, 0x4120

    goto/16 :goto_0

    :cond_1
    const-string v1, "baidu_location_service"

    const-string v2, "gps man getGpsJson but gpslocation is null"

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public int()V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/b;->int:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b;->void:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    new-instance v0, Lcom/baidu/location/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/b$b;-><init>(Lcom/baidu/location/b;Lcom/baidu/location/b$1;)V

    iput-object v0, p0, Lcom/baidu/location/b;->d:Lcom/baidu/location/b$b;

    new-instance v0, Lcom/baidu/location/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/b$a;-><init>(Lcom/baidu/location/b;Lcom/baidu/location/b$1;)V

    iput-object v0, p0, Lcom/baidu/location/b;->else:Lcom/baidu/location/b$a;

    iget-object v0, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x40a0

    iget-object v5, p0, Lcom/baidu/location/b;->d:Lcom/baidu/location/b$b;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/baidu/location/b;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/b;->else:Lcom/baidu/location/b$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b;->int:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "baidu_location_service"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b;->for:Ljava/lang/String;

    return-object v0
.end method

.method public try()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b;->e:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
