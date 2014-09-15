.class Lcom/android/autoTest/AutoTestServer$1;
.super Landroid/os/Handler;
.source "AutoTestServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/autoTest/AutoTestServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/autoTest/AutoTestServer;


# direct methods
.method constructor <init>(Lcom/android/autoTest/AutoTestServer;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const-wide/16 v6, 0xc8

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    const-string v0, "AutoTestServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check capture result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCaptureResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCaptureResult:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 154
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$000(Lcom/android/autoTest/AutoTestServer;)I

    move-result v0

    invoke-static {}, Lcom/android/autoTest/AutoTestServer;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$008(Lcom/android/autoTest/AutoTestServer;)I

    .line 158
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$200(Lcom/android/autoTest/AutoTestServer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 161
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto :goto_0

    .line 166
    :pswitch_2
    const-string v0, "AutoTestServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check switch id cresult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchIdResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchIdResult:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-virtual {v0, v8, v4}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 169
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$000(Lcom/android/autoTest/AutoTestServer;)I

    move-result v0

    invoke-static {}, Lcom/android/autoTest/AutoTestServer;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$008(Lcom/android/autoTest/AutoTestServer;)I

    .line 173
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$200(Lcom/android/autoTest/AutoTestServer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-virtual {v0, v8, v3}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 176
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto/16 :goto_0

    .line 181
    :pswitch_3
    const-string v0, "AutoTestServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check switchmode cresult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchModeResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchModeResult:Z

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 184
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    .line 195
    :goto_1
    :pswitch_4
    const-string v0, "AutoTestServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check OPENALBUM cresult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mOpenAlbumResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mOpenAlbumResult:Z

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-virtual {v0, v5, v4}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 198
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto/16 :goto_0

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$000(Lcom/android/autoTest/AutoTestServer;)I

    move-result v0

    invoke-static {}, Lcom/android/autoTest/AutoTestServer;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 187
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$008(Lcom/android/autoTest/AutoTestServer;)I

    .line 188
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$200(Lcom/android/autoTest/AutoTestServer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 191
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto :goto_1

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$000(Lcom/android/autoTest/AutoTestServer;)I

    move-result v0

    invoke-static {}, Lcom/android/autoTest/AutoTestServer;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 201
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$008(Lcom/android/autoTest/AutoTestServer;)I

    .line 202
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$200(Lcom/android/autoTest/AutoTestServer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-virtual {v0, v5, v3}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 205
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto/16 :goto_0

    .line 210
    :pswitch_5
    const-string v0, "AutoTestServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check SETTING cresult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSettingResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSettingResult:Z

    if-eqz v0, :cond_8

    .line 212
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-virtual {v0, v5, v4}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 213
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto/16 :goto_0

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$000(Lcom/android/autoTest/AutoTestServer;)I

    move-result v0

    invoke-static {}, Lcom/android/autoTest/AutoTestServer;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 216
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$008(Lcom/android/autoTest/AutoTestServer;)I

    .line 217
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #getter for: Lcom/android/autoTest/AutoTestServer;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/autoTest/AutoTestServer;->access$200(Lcom/android/autoTest/AutoTestServer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    invoke-virtual {v0, v5, v3}, Lcom/android/autoTest/AutoTestServer;->broadCastSendStatus(IZ)V

    .line 220
    iget-object v0, p0, Lcom/android/autoTest/AutoTestServer$1;->this$0:Lcom/android/autoTest/AutoTestServer;

    #setter for: Lcom/android/autoTest/AutoTestServer;->mCount:I
    invoke-static {v0, v3}, Lcom/android/autoTest/AutoTestServer;->access$002(Lcom/android/autoTest/AutoTestServer;I)I

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
