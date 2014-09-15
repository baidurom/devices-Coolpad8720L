.class Lcom/android/camera/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 426
    iput-object p2, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 427
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 428
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .parameter "newLocation"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 432
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$500(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gps"

    iget-object v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 443
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    if-nez v0, :cond_3

    .line 444
    const-string v0, "LocationManager"

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 447
    iput-boolean v2, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 449
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mLocating:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 456
    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 457
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mLocating:Z
    invoke-static {v0, v5}, Lcom/android/camera/LocationManager;->access$002(Lcom/android/camera/LocationManager;Z)Z

    .line 459
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mLocationCount:I
    invoke-static {v0, v5}, Lcom/android/camera/LocationManager;->access$202(Lcom/android/camera/LocationManager;I)I

    .line 461
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 462
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 463
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/camera/LocationManager;->access$302(Lcom/android/camera/LocationManager;Ljava/util/Timer;)Ljava/util/Timer;

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 474
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 469
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 479
    packed-switch p2, :pswitch_data_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 482
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 483
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$500(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
