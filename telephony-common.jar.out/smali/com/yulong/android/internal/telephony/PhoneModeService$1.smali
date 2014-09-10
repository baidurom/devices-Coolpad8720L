.class Lcom/yulong/android/internal/telephony/PhoneModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 398
    .local v1, iLevel:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: sam enter PhoneModeService mBatInfoReceiver battery level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->onBatteryInfoReceiver(I)V
    invoke-static {v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$100(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    .line 402
    .end local v1           #iLevel:I
    :cond_0
    return-void
.end method
