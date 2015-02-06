.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 609
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    .line 613
    const/4 v5, 0x0

    .line 616
    .local v5, retryCount:I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "for (;;),rilReciver"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-boolean v9, v9, Lcom/android/internal/telephony/RIL;->mCloseSocket:Z

    if-ne v9, v12, :cond_0

    .line 618
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 743
    :goto_1
    return-void

    .line 621
    :cond_0
    const/4 v6, 0x0

    .line 623
    .local v6, s:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v9, v9, Lcom/android/internal/telephony/BaseCommands;->mPhoneId:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v9

    if-ne v9, v12, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v9, v9, Lcom/android/internal/telephony/BaseCommands;->mPhoneId:I

    if-ne v9, v12, :cond_3

    .line 625
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " only the need socket connect, teturn"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 740
    .end local v6           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v8

    .line 741
    .local v8, tr:Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Uncaught exception"

    invoke-static {v9, v10, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 630
    .end local v8           #tr:Ljava/lang/Throwable;
    .restart local v6       #s:Landroid/net/LocalSocket;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_9

    .line 632
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v9, v9, Lcom/android/internal/telephony/BaseCommands;->mPhoneId:I

    if-eq v9, v12, :cond_4

    sget v9, Lcom/android/internal/telephony/RIL;->phoneone_socket_connect_success:I

    if-ne v9, v12, :cond_6

    .line 634
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " socket SOCKET_NAME_RIL = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    .end local v6           #s:Landroid/net/LocalSocket;
    .local v7, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 638
    .local v2, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 680
    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    :goto_2
    const/4 v5, 0x0

    .line 681
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v6, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 683
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v9, v9, Lcom/android/internal/telephony/BaseCommands;->mPhoneId:I

    if-ne v9, v12, :cond_5

    .line 685
    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 686
    const/4 v9, 0x1

    sput v9, Lcom/android/internal/telephony/RIL;->phoneone_socket_connect_success:I

    .line 689
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connected to \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 690
    const/4 v3, 0x0

    .line 692
    .local v3, length:I
    :try_start_4
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 697
    .local v1, is:Ljava/io/InputStream;
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[BLjava/lang/String;)I
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/RIL;->access$1100(Ljava/io/InputStream;[BLjava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    .line 698
    if-gez v3, :cond_b

    .line 718
    .end local v1           #is:Ljava/io/InputStream;
    :goto_4
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-boolean v9, v9, Lcom/android/internal/telephony/RIL;->mCloseSocket:Z

    if-ne v9, v12, :cond_c

    .line 719
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 640
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :cond_6
    :try_start_6
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "phone one socket not connect"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 651
    :catch_1
    move-exception v0

    .line 653
    .local v0, ex:Ljava/io/IOException;
    :goto_5
    if-eqz v6, :cond_7

    .line 654
    :try_start_7
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 663
    :cond_7
    :goto_6
    if-ne v5, v13, :cond_a

    .line 664
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, continuing to retry silently"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 673
    :cond_8
    :goto_7
    const-wide/16 v9, 0xfa0

    :try_start_9
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 676
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 677
    goto/16 :goto_0

    .line 645
    .end local v0           #ex:Ljava/io/IOException;
    :cond_9
    :try_start_a
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " socket SOCKET_NAME_RIL = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 647
    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v7       #s:Landroid/net/LocalSocket;
    :try_start_b
    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 649
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    move-object v6, v7

    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    goto/16 :goto_2

    .line 667
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .restart local v0       #ex:Ljava/io/IOException;
    :cond_a
    if-lez v5, :cond_8

    if-ge v5, v13, :cond_8

    .line 668
    :try_start_c
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket; retrying after timeout"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_7

    .line 703
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    :cond_b
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 704
    .local v4, p:Landroid/os/Parcel;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 705
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 708
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v9, v4}, Lcom/android/internal/telephony/RIL;->access$1200(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 709
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    .line 711
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #p:Landroid/os/Parcel;
    :catch_2
    move-exception v0

    .line 712
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_e
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket closed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 714
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 715
    .restart local v8       #tr:Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uncaught exception read length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 725
    .end local v8           #tr:Ljava/lang/Throwable;
    :cond_c
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnected from \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v9, 0x0

    sput v9, Lcom/android/internal/telephony/RIL;->phoneone_socket_connect_success:I

    .line 728
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/RIL;->mMuxDataState:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->access$802(Lcom/android/internal/telephony/RIL;I)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    .line 731
    :try_start_f
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    .line 735
    :goto_9
    :try_start_10
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 736
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 739
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/RIL;->access$1300(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 656
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .restart local v0       #ex:Ljava/io/IOException;
    :catch_4
    move-exception v9

    goto/16 :goto_6

    .line 674
    :catch_5
    move-exception v9

    goto/16 :goto_8

    .line 732
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    :catch_6
    move-exception v9

    goto :goto_9

    .line 651
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v7       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
