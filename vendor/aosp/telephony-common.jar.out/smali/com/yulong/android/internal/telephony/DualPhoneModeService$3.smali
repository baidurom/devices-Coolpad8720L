.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;
.super Ljava/util/TimerTask;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 1
    .parameter

    .prologue
    .line 4991
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4992
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->i:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x3f

    .line 4998
    const-string v2, "yulong.hotswap.checkcard.finish"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4999
    .local v0, checkCardTag:Ljava/lang/String;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTSWAP:timer run times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", checkCardTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reCheckCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 5000
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5002
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5003
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v3, "HOTSWAP: recheckcard"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 5004
    monitor-enter p0

    .line 5005
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v3, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 5006
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v3, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4702(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 5007
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5009
    const/4 v1, -0x1

    .line 5011
    .local v1, mSlotId:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-virtual {v2, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->setSlotId(I)V

    .line 5012
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    const-string v5, "mCheckCardService"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 5013
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 5030
    .end local v1           #mSlotId:I
    :cond_0
    :goto_0
    return-void

    .line 5007
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5018
    :cond_1
    monitor-enter p0

    .line 5019
    :try_start_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v3, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4702(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 5020
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5021
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5022
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5025
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto :goto_0

    .line 5020
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 5027
    :cond_2
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->i:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 5028
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto :goto_0
.end method
