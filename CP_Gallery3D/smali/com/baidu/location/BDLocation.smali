.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;


# static fields
.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeServerError:I = 0xa7


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private byte:Ljava/lang/String;

.field private c:Z

.field private case:Z

.field private char:F

.field private d:Ljava/lang/String;

.field private do:I

.field private e:D

.field private else:D

.field private for:D

.field private goto:Ljava/lang/String;

.field private if:I

.field private int:Z

.field private long:F

.field public mServerString:Ljava/lang/String;

.field private new:F

.field private try:Z

.field private void:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->e:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(DDF)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->e:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    iput-wide p3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->for:D

    iput p5, p0, Lcom/baidu/location/BDLocation;->long:F

    invoke-static {}, Lcom/baidu/location/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->e:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string v3, "time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    const/16 v1, 0x3d

    if-ne v2, v1, :cond_2

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setDerect(F)V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa1

    if-ne v2, v1, :cond_3

    :try_start_1
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "detail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    const-string v1, "poi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    const-string v1, "poi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x41

    if-ne v2, v1, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setRadius(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->e:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide p4, p0, Lcom/baidu/location/BDLocation;->for:D

    iput p6, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-object p7, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddrStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->e:D

    return-wide v0
.end method

.method public getCoorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public getDerect()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->char:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->else:D

    return-wide v0
.end method

.method public getLocType()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->if:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->for:D

    return-wide v0
.end method

.method public getPoi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->long:F

    return v0
.end method

.method public getSatelliteNumber()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->b:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->do:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->new:F

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->void:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->c:Z

    return v0
.end method

.method public hasPoi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->case:Z

    return v0
.end method

.method public hasRadius()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->try:Z

    return v0
.end method

.method public hasSateNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->b:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->int:Z

    return v0
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->void:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->e:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->c:Z

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    return-void
.end method

.method public setDerect(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->char:F

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->else:D

    return-void
.end method

.method public setLocType(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->if:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->for:D

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->long:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->try:Z

    return-void
.end method

.method public setSatelliteNumber(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->do:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->new:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->int:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toNewLocation(Ljava/lang/String;)Lcom/baidu/location/BDLocation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
