.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 376
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 380
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 377
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 392
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/RILRequest;

    move-object v9, v11

    check-cast v9, Lcom/android/internal/telephony/RILRequest;

    .line 393
    .local v9, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v8, 0x0

    .line 395
    .local v8, req:Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 402
    :pswitch_0
    const/4 v1, 0x0

    .line 406
    .local v1, alreadySubtracted:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 408
    .local v10, s:Landroid/net/LocalSocket;
    if-nez v10, :cond_4

    .line 409
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mSocket == null"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 411
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 412
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v11, :cond_1

    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 414
    :cond_1
    const/4 v1, 0x1

    .line 415
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 449
    .end local v10           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 450
    .local v4, ex:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "IOException"

    invoke-static {v11, v12, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 454
    if-nez v8, :cond_2

    if-nez v1, :cond_3

    .line 455
    :cond_2
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 456
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 458
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    .end local v4           #ex:Ljava/io/IOException;
    :goto_1
    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v11, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    goto :goto_0

    .line 419
    .restart local v10       #s:Landroid/net/LocalSocket;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 420
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 422
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 424
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v11, :cond_5

    .line 425
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 426
    :cond_5
    const/4 v1, 0x1

    .line 430
    iget-object v11, v9, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v11}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 431
    .local v3, data:[B
    iget-object v11, v9, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 432
    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 434
    array-length v11, v3

    const/16 v12, 0x2000

    if-le v11, v12, :cond_8

    .line 435
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parcel larger than max bytes allowed! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 459
    .end local v3           #data:[B
    .end local v10           #s:Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 460
    .local v5, exc:Ljava/lang/RuntimeException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Uncaught exception "

    invoke-static {v11, v12, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 464
    if-nez v8, :cond_6

    if-nez v1, :cond_7

    .line 465
    :cond_6
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 466
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 468
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 469
    .end local v5           #exc:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v11

    throw v11

    .line 422
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catchall_1
    move-exception v11

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v11

    .line 441
    .restart local v3       #data:[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    aput-byte v15, v11, v12

    .line 442
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v12, 0x2

    array-length v13, v3

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 443
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v12, 0x3

    array-length v13, v3

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 447
    invoke-virtual {v10}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 448
    invoke-virtual {v10}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 486
    .end local v1           #alreadySubtracted:Z
    .end local v3           #data:[B
    .end local v10           #s:Landroid/net/LocalSocket;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v11, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v12

    .line 487
    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 499
    :try_start_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 500
    .local v2, count:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WAKE_LOCK_TIMEOUT mReqPending="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v15, v15, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mRequestList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 503
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v2, :cond_9

    .line 504
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v9, v0

    .line 505
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 503
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 508
    :cond_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 511
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->mMuxDataState:I
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;)I

    move-result v11

    if-nez v11, :cond_c

    .line 519
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-eqz v11, :cond_a

    .line 520
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v14, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at TIMEOUT, reset!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 526
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x1

    #setter for: Lcom/android/internal/telephony/RIL;->mSleepAllow:Z
    invoke-static {v11, v13}, Lcom/android/internal/telephony/RIL;->access$902(Lcom/android/internal/telephony/RIL;Z)Z

    .line 527
    const/16 v11, 0xed

    const/4 v13, 0x0

    invoke-static {v11, v13}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v9

    .line 528
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v11, v13}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 531
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v13, 0x1

    invoke-virtual {v11, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 532
    .local v7, msgSend:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 539
    .end local v2           #count:I
    .end local v6           #i:I
    .end local v7           #msgSend:Landroid/os/Message;
    :cond_b
    :goto_3
    monitor-exit v12

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v11

    .line 508
    :catchall_3
    move-exception v11

    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v11

    .line 534
    .restart local v2       #count:I
    .restart local v6       #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 536
    .restart local v7       #msgSend:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v13, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v13, v13

    invoke-virtual {v11, v7, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method
