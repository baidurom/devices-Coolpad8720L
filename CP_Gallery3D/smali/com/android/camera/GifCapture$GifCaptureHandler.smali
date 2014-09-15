.class Lcom/android/camera/GifCapture$GifCaptureHandler;
.super Landroid/os/Handler;
.source "GifCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GifCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifCaptureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/GifCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/GifCapture;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    .line 329
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 449
    return-void

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mInputImageBuffer:[B
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$000(Lcom/android/camera/GifCapture;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "GifCapture"

    const-string v1, "w: MESSAGE_ON_PREVIEW_FRAME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$100(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifState;

    move-result-object v0

    sget-object v1, Lcom/android/camera/GifCapture$GifState;->RUNNING:Lcom/android/camera/GifCapture$GifState;

    if-eq v0, v1, :cond_1

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    sget-object v1, Lcom/android/camera/GifCapture$GifState;->RUNNING:Lcom/android/camera/GifCapture$GifState;

    #setter for: Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;
    invoke-static {v0, v1}, Lcom/android/camera/GifCapture;->access$102(Lcom/android/camera/GifCapture;Lcom/android/camera/GifCapture$GifState;)Lcom/android/camera/GifCapture$GifState;

    .line 341
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #calls: Lcom/android/camera/GifCapture;->playGifCaptureSound()V
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$200(Lcom/android/camera/GifCapture;)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$300(Lcom/android/camera/GifCapture;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 345
    const/4 v10, 0x0

    .line 347
    .local v10, constructor:Ljava/lang/reflect/Constructor;
    :try_start_1
    const-class v0, Landroid/graphics/YuvImage;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, [I

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 349
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifWidth:I
    invoke-static {v3}, Lcom/android/camera/GifCapture;->access$400(Lcom/android/camera/GifCapture;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifHeight:I
    invoke-static {v3}, Lcom/android/camera/GifCapture;->access$500(Lcom/android/camera/GifCapture;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/GifCapture;->access$600(Lcom/android/camera/GifCapture;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #setter for: Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/camera/GifCapture;->access$302(Lcom/android/camera/GifCapture;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    const-class v1, Landroid/graphics/YuvImage;

    const-string v2, "compressToGif"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [B

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/io/OutputStream;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    #setter for: Lcom/android/camera/GifCapture;->mGifencode:Ljava/lang/reflect/Method;
    invoke-static {v0, v1}, Lcom/android/camera/GifCapture;->access$702(Lcom/android/camera/GifCapture;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifencode:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$700(Lcom/android/camera/GifCapture;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$300(Lcom/android/camera/GifCapture;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$800(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifCaptureHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$800(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifCaptureHandler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 341
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 353
    .restart local v10       #constructor:Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v11

    .line 355
    .local v11, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v11           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v12

    .line 358
    .local v12, e1:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 359
    .end local v12           #e1:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v12

    .line 361
    .local v12, e1:Ljava/lang/InstantiationException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 362
    .end local v12           #e1:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v12

    .line 364
    .local v12, e1:Ljava/lang/IllegalAccessException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 365
    .end local v12           #e1:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v12

    .line 367
    .local v12, e1:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 380
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;
    .end local v12           #e1:Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$900(Lcom/android/camera/GifCapture;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    if-nez v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #setter for: Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lcom/android/camera/GifCapture;->access$902(Lcom/android/camera/GifCapture;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 384
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifencode:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$700(Lcom/android/camera/GifCapture;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/GifCapture;->access$300(Lcom/android/camera/GifCapture;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mInputImageBuffer:[B
    invoke-static {v4}, Lcom/android/camera/GifCapture;->access$000(Lcom/android/camera/GifCapture;)[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifIndex:I
    invoke-static {v4}, Lcom/android/camera/GifCapture;->access$1000(Lcom/android/camera/GifCapture;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v4}, Lcom/android/camera/GifCapture;->access$900(Lcom/android/camera/GifCapture;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_7

    .line 396
    :goto_2
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    iget-object v1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v1}, Lcom/android/camera/GifCapture;->access$900(Lcom/android/camera/GifCapture;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    #setter for: Lcom/android/camera/GifCapture;->mGifData:[B
    invoke-static {v0, v1}, Lcom/android/camera/GifCapture;->access$1102(Lcom/android/camera/GifCapture;[B)[B

    .line 397
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mThumbnailData:[B
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$1200(Lcom/android/camera/GifCapture;)[B

    move-result-object v0

    if-nez v0, :cond_5

    .line 398
    iget-object v1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mInputImageBuffer:[B
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$000(Lcom/android/camera/GifCapture;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    #setter for: Lcom/android/camera/GifCapture;->mThumbnailData:[B
    invoke-static {v1, v0}, Lcom/android/camera/GifCapture;->access$1202(Lcom/android/camera/GifCapture;[B)[B

    .line 400
    :cond_5
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    iget-object v1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifData:[B
    invoke-static {v1}, Lcom/android/camera/GifCapture;->access$1100(Lcom/android/camera/GifCapture;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/GifCapture;->access$1300(Lcom/android/camera/GifCapture;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/GifCapture;->access$1400(Lcom/android/camera/GifCapture;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mLocation:Landroid/location/Location;
    invoke-static {v4}, Lcom/android/camera/GifCapture;->access$1500(Lcom/android/camera/GifCapture;)Landroid/location/Location;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifWidth:I
    invoke-static {v5}, Lcom/android/camera/GifCapture;->access$400(Lcom/android/camera/GifCapture;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifHeight:I
    invoke-static {v6}, Lcom/android/camera/GifCapture;->access$500(Lcom/android/camera/GifCapture;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mThumbnailWidth:I
    invoke-static {v7}, Lcom/android/camera/GifCapture;->access$1600(Lcom/android/camera/GifCapture;)I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mOrientation:I
    invoke-static {v8}, Lcom/android/camera/GifCapture;->access$600(Lcom/android/camera/GifCapture;)I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifIndex:I
    invoke-static {v9}, Lcom/android/camera/GifCapture;->access$1000(Lcom/android/camera/GifCapture;)I

    move-result v9

    #calls: Lcom/android/camera/GifCapture;->storeGifImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIII)V
    invoke-static/range {v0 .. v9}, Lcom/android/camera/GifCapture;->access$1700(Lcom/android/camera/GifCapture;[BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIII)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$1800(Lcom/android/camera/GifCapture;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/GifCapture$GifCaptureHandler$1;

    invoke-direct {v1, p0}, Lcom/android/camera/GifCapture$GifCaptureHandler$1;-><init>(Lcom/android/camera/GifCapture$GifCaptureHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$1008(Lcom/android/camera/GifCapture;)I

    .line 418
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$900(Lcom/android/camera/GifCapture;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 419
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #calls: Lcom/android/camera/GifCapture;->stopGifCaptureSound()V
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$1900(Lcom/android/camera/GifCapture;)V

    .line 420
    const-string v0, "GifCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w: mGifIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifIndex:I
    invoke-static {v2}, Lcom/android/camera/GifCapture;->access$1000(Lcom/android/camera/GifCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifIndex:I
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$1000(Lcom/android/camera/GifCapture;)I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_6

    .line 422
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$800(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifCaptureHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$800(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifCaptureHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 385
    :catch_5
    move-exception v11

    .line 387
    .local v11, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 388
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v11

    .line 390
    .local v11, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 391
    .end local v11           #e:Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v11

    .line 393
    .local v11, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 427
    .end local v11           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_6
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifIndex:I
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$1000(Lcom/android/camera/GifCapture;)I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$800(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifCaptureHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$800(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifCaptureHandler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mOperationListener:Lcom/android/camera/GifCapture$OperationListener;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$2000(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$OperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    #getter for: Lcom/android/camera/GifCapture;->mOperationListener:Lcom/android/camera/GifCapture$OperationListener;
    invoke-static {v0}, Lcom/android/camera/GifCapture;->access$2000(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$OperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    invoke-interface {v0, v1}, Lcom/android/camera/GifCapture$OperationListener;->registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 444
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/GifCapture$GifCaptureHandler;->this$0:Lcom/android/camera/GifCapture;

    invoke-virtual {v0}, Lcom/android/camera/GifCapture;->onStop()V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
