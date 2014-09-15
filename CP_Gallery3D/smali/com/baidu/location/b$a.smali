.class Lcom/baidu/location/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b;Lcom/baidu/location/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b$a;-><init>(Lcom/baidu/location/b;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v3}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v2}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Z)V

    invoke-static {v2}, Lcom/baidu/location/b;->a(I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    iget-object v1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v1}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v1}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/baidu/location/b;->for()I

    move-result v0

    if-lt v0, v5, :cond_3

    if-ge v1, v5, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;J)J

    :cond_3
    if-ge v1, v5, :cond_4

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v2}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Z)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/b;->for()I

    move-result v0

    if-gt v0, v5, :cond_5

    if-le v1, v5, :cond_5

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Z)V

    :cond_5
    invoke-static {v1}, Lcom/baidu/location/b;->a(I)I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
