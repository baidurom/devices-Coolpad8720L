.class public final Lcom/baidu/location/LocationClientOption;
.super Ljava/lang/Object;


# static fields
.field public static final GpsFirst:I = 0x1

.field public static final MIN_SCAN_SPAN:I = 0x3e8

.field public static final NetWorkFirst:I = 0x2


# instance fields
.field protected a:I

.field protected byte:Z

.field protected case:Ljava/lang/String;

.field protected char:Z

.field protected do:F

.field protected else:I

.field protected for:I

.field protected goto:I

.field protected if:Z

.field protected int:Ljava/lang/String;

.field protected long:Z

.field protected new:Ljava/lang/String;

.field protected try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    const-string v0, "detail"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->case:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->byte:Z

    iput v1, p0, Lcom/baidu/location/LocationClientOption;->for:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->goto:I

    const-string v0, "SDK2.0"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->else:I

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->long:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->char:Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->if:Z

    const/high16 v0, 0x43fa

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->do:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/LocationClientOption;->a:I

    const-string v0, "com.baidu.location.service_v2.3"

    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Lcom/baidu/location/LocationClientOption;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->case:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->case:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->byte:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->byte:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->for:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->for:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->goto:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->goto:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->long:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->long:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->a:I

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->if:Z

    iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->if:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->do:F

    iget v1, p1, Lcom/baidu/location/LocationClientOption;->do:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddrType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->case:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiDistance()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->do:F

    return v0
.end method

.method public getPoiExtranInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->if:Z

    return v0
.end method

.method public getPoiNumber()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->a:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->else:I

    return v0
.end method

.method public getProdName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    return-object v0
.end method

.method public getScanSpan()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->for:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/LocationClientOption;->goto:I

    return v0
.end method

.method public isLocationNotify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->long:Z

    return v0
.end method

.method public isOpenGps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->byte:Z

    return v0
.end method

.method public isPoiOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->char:Z

    return v0
.end method

.method public setAddrType(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->case:Ljava/lang/String;

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bd09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setLocationNotify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->long:Z

    return-void
.end method

.method public setOpenGps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->byte:Z

    return-void
.end method

.method public setPoi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->char:Z

    return-void
.end method

.method public setPoiDistance(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->do:F

    return-void
.end method

.method public setPoiExtraInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->if:Z

    return-void
.end method

.method public setPoiNumber(I)V
    .locals 1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/baidu/location/LocationClientOption;->a:I

    return-void
.end method

.method public setPriority(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/baidu/location/LocationClientOption;->else:I

    :cond_1
    return-void
.end method

.method public setProdName(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x40

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    return-void
.end method

.method public setScanSpan(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->for:I

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/LocationClientOption;->goto:I

    return-void
.end method
