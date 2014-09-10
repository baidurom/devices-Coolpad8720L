.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$Led$SettingsObserver;
    }
.end annotation


# instance fields
.field private final mBatteryChargingARGB:I

.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/LightsService$Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 885
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 887
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 889
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 893
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryChargingARGB:I

    .line 896
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 898
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->createSettingsObserver()V

    .line 900
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 8

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLockedHook()Z

    move-result v0

    if-eqz v0, :cond_baidu_0

    goto :goto_baidu_0

    :cond_baidu_0

    const/4 v3, 0x1

    .line 908
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 909
    .local v1, level:I
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)I

    move-result v2

    .line 910
    .local v2, status:I
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mAcOnline:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mUsbOnline:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mWirelessOnline:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)I

    move-result v4

    if-ne v4, v3, :cond_1

    :cond_0
    move v0, v3

    .line 914
    .local v0, isCharing:Z
    :goto_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 915
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()Ljava/lang/String;

    move-result-object v3

    const-string v4, " factory breath light testing ...do nothing ..."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_1
    :goto_baidu_0
    return-void

    .line 910
    .end local v0           #isCharing:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 917
    .restart local v0       #isCharing:Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBooted:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->isScreenOn:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightDisturb:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 918
    :cond_3
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ylBreathLightDisturb is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightDisturb:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_1

    .line 920
    :cond_4
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightNotify:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showMessageLight:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 921
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_1

    .line 924
    :cond_5
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightCharging:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    .line 925
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 927
    :cond_6
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto/16 :goto_1

    .line 929
    :cond_7
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto/16 :goto_1

    .line 932
    :cond_8
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightLowpower:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)I

    move-result v5

    if-gt v4, v5, :cond_9

    .line 933
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 936
    :cond_9
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_1
.end method

.method static synthetic access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$iget-mBatteryLedOn-1d5160(Lcom/android/server/BatteryService$Led;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    return v0
.end method

.method static synthetic access$iget-mBatteryLedOff-cc2be1(Lcom/android/server/BatteryService$Led;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    return v0
.end method

.method private createSettingsObserver()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/BatteryService$Led$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->observe()V

    return-void
.end method

.method private updateLightsLockedHook()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mObserver:Lcom/android/server/BatteryService$Led$SettingsObserver;

    #calls: Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightPulse()Z
    invoke-static {v0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->access$invoke-updateLightPulse-fe2949(Lcom/android/server/BatteryService$Led$SettingsObserver;)Z

    const/4 v0, 0x1

    return v0
.end method
