.class Landroid/net/wifi/WifiStatusBar$WifiHandler;
.super Landroid/os/Handler;
.source "WifiStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStatusBar;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStatusBar;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 109
    iput-object p1, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    .line 110
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 116
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    iget-object v0, v0, Landroid/net/wifi/WifiStatusBar;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "WifiStatusBar"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    iget v1, v1, Landroid/net/wifi/WifiStatusBar;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/net/wifi/WifiStatusBar;->mWifiActivity:I

    .line 126
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    iget v0, v0, Landroid/net/wifi/WifiStatusBar;->mWifiActivity:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStatusBar;->sendUpdateWifiIconChange()V

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    const/4 v1, 0x5

    #setter for: Landroid/net/wifi/WifiStatusBar;->wifiIconType:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStatusBar;->access$002(Landroid/net/wifi/WifiStatusBar;I)I

    goto :goto_1

    .line 131
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    const/4 v1, 0x6

    #setter for: Landroid/net/wifi/WifiStatusBar;->wifiIconType:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStatusBar;->access$002(Landroid/net/wifi/WifiStatusBar;I)I

    goto :goto_1

    .line 134
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    const/4 v1, 0x7

    #setter for: Landroid/net/wifi/WifiStatusBar;->wifiIconType:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStatusBar;->access$002(Landroid/net/wifi/WifiStatusBar;I)I

    goto :goto_1

    .line 137
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiStatusBar$WifiHandler;->this$0:Landroid/net/wifi/WifiStatusBar;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiStatusBar;->wifiIconType:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStatusBar;->access$002(Landroid/net/wifi/WifiStatusBar;I)I

    goto :goto_1

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
