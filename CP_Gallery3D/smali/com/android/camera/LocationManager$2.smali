.class Lcom/android/camera/LocationManager$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/LocationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/LocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 5
    .parameter "location"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_1

    .line 308
    :cond_0
    const-string v0, "LocationManager"

    const-string v1, "Baidu Location return error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    new-instance v1, Landroid/location/Location;

    const-string v2, "baidu"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/android/camera/LocationManager;->access$402(Lcom/android/camera/LocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 314
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mBaiDuLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$400(Lcom/android/camera/LocationManager;)Landroid/location/Location;

    move-result-object v0

    const/high16 v1, 0x447a

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mLocationCount:I
    invoke-static {v0, v3}, Lcom/android/camera/LocationManager;->access$202(Lcom/android/camera/LocationManager;I)I

    .line 323
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 324
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 325
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/camera/LocationManager;->access$302(Lcom/android/camera/LocationManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mLocating:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/android/camera/LocationManager$2;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mLocating:Z
    invoke-static {v0, v3}, Lcom/android/camera/LocationManager;->access$002(Lcom/android/camera/LocationManager;Z)Z

    .line 337
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Get location from Baidu, lat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 346
    return-void
.end method
