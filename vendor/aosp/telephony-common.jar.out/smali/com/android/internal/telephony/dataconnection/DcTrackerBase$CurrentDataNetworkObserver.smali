.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CurrentDataNetworkObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentDataNetworkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CurrentDataNetworkObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 2334
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2335
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "change"

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CurrentDataNetworkObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$CurrentDataNetworkObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x42024

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2340
    return-void
.end method
