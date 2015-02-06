.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;
.super Ljava/lang/Thread;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dnsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 2843
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2843
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2849
    :try_start_0
    const-string v2, "www.baidu.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2859
    :goto_0
    return-void

    .line 2850
    :catch_0
    move-exception v0

    .line 2851
    .local v0, e:Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2853
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v3, 0x42018

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2854
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2855
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 2856
    const-string v2, "cleanupAfterDnsException"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2857
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
