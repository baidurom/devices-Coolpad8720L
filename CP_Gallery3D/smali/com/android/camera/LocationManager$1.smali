.class Lcom/android/camera/LocationManager$1;
.super Ljava/util/TimerTask;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/LocationManager;->startReceivingLocationUpdates()V
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
    .line 192
    iput-object p1, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mLocating:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mLocationCount:I
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$200(Lcom/android/camera/LocationManager;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$208(Lcom/android/camera/LocationManager;)I

    .line 203
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mLocating:Z
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$000(Lcom/android/camera/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mLocationCount:I
    invoke-static {v0, v2}, Lcom/android/camera/LocationManager;->access$202(Lcom/android/camera/LocationManager;I)I

    .line 206
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 207
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$300(Lcom/android/camera/LocationManager;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 208
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/LocationManager;->mTimerGPS:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/camera/LocationManager;->access$302(Lcom/android/camera/LocationManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mLocating:Z
    invoke-static {v0, v2}, Lcom/android/camera/LocationManager;->access$002(Lcom/android/camera/LocationManager;Z)Z

    .line 219
    :cond_1
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/camera/LocationManager$1;->this$0:Lcom/android/camera/LocationManager;

    #getter for: Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/camera/LocationManager;->access$100(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_0
.end method
