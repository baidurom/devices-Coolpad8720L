.class public Lcom/baidu/location/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c;

.field public byte:J

.field public do:I

.field public for:I

.field public if:I

.field public int:I

.field public new:C

.field public try:I


# direct methods
.method public constructor <init>(Lcom/baidu/location/c;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/c$a;->for:I

    iput v2, p0, Lcom/baidu/location/c$a;->try:I

    iput v2, p0, Lcom/baidu/location/c$a;->do:I

    iput v2, p0, Lcom/baidu/location/c$a;->if:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    iput v2, p0, Lcom/baidu/location/c$a;->int:I

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/baidu/location/c$a;->new:C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/c;IIIIC)V
    .locals 4

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/c$a;->for:I

    iput v2, p0, Lcom/baidu/location/c$a;->try:I

    iput v2, p0, Lcom/baidu/location/c$a;->do:I

    iput v2, p0, Lcom/baidu/location/c$a;->if:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    iput v2, p0, Lcom/baidu/location/c$a;->int:I

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/baidu/location/c$a;->new:C

    iput p2, p0, Lcom/baidu/location/c$a;->for:I

    iput p3, p0, Lcom/baidu/location/c$a;->try:I

    iput p4, p0, Lcom/baidu/location/c$a;->do:I

    iput p5, p0, Lcom/baidu/location/c$a;->if:I

    iput-char p6, p0, Lcom/baidu/location/c$a;->new:C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&nw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v1}, Lcom/baidu/location/c;->if(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v1

    iget-char v1, v1, Lcom/baidu/location/c$a;->new:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "&cl=%d|%d|%d|%d:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/location/c$a;->do:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/baidu/location/c$a;->if:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/baidu/location/c$a;->for:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/baidu/location/c$a;->int:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&cl_t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/location/c$a;->byte:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/location/c$a;)Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/c$a;->for:I

    iget v1, p1, Lcom/baidu/location/c$a;->for:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/c$a;->try:I

    iget v1, p1, Lcom/baidu/location/c$a;->try:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/c$a;->if:I

    iget v1, p1, Lcom/baidu/location/c$a;->if:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public do()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/baidu/location/c$a;->for:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/c$a;->try:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public if()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c$a;->byte:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/baidu/location/c;->new()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "&nw="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->if(Lcom/baidu/location/c;)Lcom/baidu/location/c$a;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/c$a;->new:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/location/c$a;->do:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget v4, p0, Lcom/baidu/location/c$a;->if:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v11

    iget v4, p0, Lcom/baidu/location/c$a;->for:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v12

    iget v4, p0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v13

    iget v4, p0, Lcom/baidu/location/c$a;->int:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v14

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&cl_t="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v0, p0, Lcom/baidu/location/c$a;->byte:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v0, "&clt="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c$a;->a:Lcom/baidu/location/c;

    invoke-static {v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c$a;

    add-int/lit8 v5, v4, -0x1

    if-eq v1, v5, :cond_0

    const-string v5, "%d|%d|%d|%d|%d;"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/baidu/location/c$a;->do:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, v0, Lcom/baidu/location/c$a;->if:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    iget v7, v0, Lcom/baidu/location/c$a;->for:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    iget v7, v0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    iget-wide v7, v0, Lcom/baidu/location/c$a;->byte:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v14

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v5, "%d|%d|%d|%d|%d;"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/baidu/location/c$a;->do:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, v0, Lcom/baidu/location/c$a;->if:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    iget v7, v0, Lcom/baidu/location/c$a;->for:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    iget v7, v0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/baidu/location/c$a;->byte:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v14

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
