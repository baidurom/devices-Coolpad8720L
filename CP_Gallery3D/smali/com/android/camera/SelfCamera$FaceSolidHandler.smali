.class Lcom/android/camera/SelfCamera$FaceSolidHandler;
.super Landroid/os/Handler;
.source "SelfCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SelfCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceSolidHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SelfCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/SelfCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    .line 283
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 284
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v2, v2, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v2, v2, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    iget-object v3, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    invoke-interface {v2, v3}, Lcom/android/camera/SelfCamera$Listener;->registerOneShotPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 296
    :pswitch_1
    const-string v2, "SelfCamera"

    const-string v4, "#####@@ STATE_FACE_FINDER_DETECTION"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, ret:I
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->progress:[I
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$000(Lcom/android/camera/SelfCamera;)[I

    move-result-object v2

    aput v3, v2, v3

    .line 299
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$200(Lcom/android/camera/SelfCamera;)Lcom/morpho/core/FaceSolid;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->inputImageBuffer:[B
    invoke-static {v4}, Lcom/android/camera/SelfCamera;->access$100(Lcom/android/camera/SelfCamera;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/morpho/core/FaceSolid;->detectStart([B)I

    move-result v1

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->progress:[I
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$000(Lcom/android/camera/SelfCamera;)[I

    move-result-object v2

    aget v2, v2, v3

    const v4, 0x8000

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mCancleFaceDetected:Z
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$300(Lcom/android/camera/SelfCamera;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$200(Lcom/android/camera/SelfCamera;)Lcom/morpho/core/FaceSolid;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$200(Lcom/android/camera/SelfCamera;)Lcom/morpho/core/FaceSolid;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->progress:[I
    invoke-static {v4}, Lcom/android/camera/SelfCamera;->access$000(Lcom/android/camera/SelfCamera;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/morpho/core/FaceSolid;->detect([I)I

    move-result v1

    .line 305
    if-eqz v1, :cond_1

    .line 306
    const-string v2, "SelfCamera"

    const-string v4, ">>>>>>force break the detect operation"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v2, v2, Lcom/android/camera/SelfCamera;->mMainHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v2, v2, Lcom/android/camera/SelfCamera;->mMainHandler:Landroid/os/Handler;

    const v4, 0x1e240

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    :cond_3
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$200(Lcom/android/camera/SelfCamera;)Lcom/morpho/core/FaceSolid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/morpho/core/FaceSolid;->detectEnd()I

    move-result v1

    .line 316
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolid:Lcom/morpho/core/FaceSolid;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$200(Lcom/android/camera/SelfCamera;)Lcom/morpho/core/FaceSolid;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->m_arFaceNum:[I
    invoke-static {v4}, Lcom/android/camera/SelfCamera;->access$400(Lcom/android/camera/SelfCamera;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->m_arFaceRect:[I
    invoke-static {v5}, Lcom/android/camera/SelfCamera;->access$500(Lcom/android/camera/SelfCamera;)[I

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/morpho/core/FaceSolid;->getFaces([I[I)I

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v4, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->inputImageBuffer:[B
    invoke-static {v4}, Lcom/android/camera/SelfCamera;->access$100(Lcom/android/camera/SelfCamera;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->m_arFaceNum:[I
    invoke-static {v5}, Lcom/android/camera/SelfCamera;->access$400(Lcom/android/camera/SelfCamera;)[I

    move-result-object v5

    aget v3, v5, v3

    #calls: Lcom/android/camera/SelfCamera;->detectBlinkSmile([BI)V
    invoke-static {v2, v4, v3}, Lcom/android/camera/SelfCamera;->access$600(Lcom/android/camera/SelfCamera;[BI)V

    .line 320
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v3, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #calls: Lcom/android/camera/SelfCamera;->checkSmileLevel()Z
    invoke-static {v3}, Lcom/android/camera/SelfCamera;->access$800(Lcom/android/camera/SelfCamera;)Z

    move-result v3

    #setter for: Lcom/android/camera/SelfCamera;->mIsSmiling:Z
    invoke-static {v2, v3}, Lcom/android/camera/SelfCamera;->access$702(Lcom/android/camera/SelfCamera;Z)Z

    .line 324
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mTrackNum:I
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$900(Lcom/android/camera/SelfCamera;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 325
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #calls: Lcom/android/camera/SelfCamera;->updateFaceRect(I)V
    invoke-static {v2, v0}, Lcom/android/camera/SelfCamera;->access$1000(Lcom/android/camera/SelfCamera;I)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    :cond_4
    const-string v2, "SelfCamera"

    const-string v3, "#####@@ STATE_FACE_FINDER_DETECTION end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1100(Lcom/android/camera/SelfCamera;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 331
    .end local v0           #i:I
    .end local v1           #ret:I
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v5, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mType:I
    invoke-static {v5}, Lcom/android/camera/SelfCamera;->access$1200(Lcom/android/camera/SelfCamera;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mMode:I
    invoke-static {v6}, Lcom/android/camera/SelfCamera;->access$1300(Lcom/android/camera/SelfCamera;)I

    move-result v6

    #calls: Lcom/android/camera/SelfCamera;->checkFacePosition(II)Z
    invoke-static {v2, v5, v6}, Lcom/android/camera/SelfCamera;->access$1400(Lcom/android/camera/SelfCamera;II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 332
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mShutterReady:Z
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1500(Lcom/android/camera/SelfCamera;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 333
    iget-object v5, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mIsSmileEnable:Z
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1700(Lcom/android/camera/SelfCamera;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mVoiceOn:Z
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1600(Lcom/android/camera/SelfCamera;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_5
    move v2, v4

    :goto_2
    #setter for: Lcom/android/camera/SelfCamera;->mVoiceOn:Z
    invoke-static {v5, v2}, Lcom/android/camera/SelfCamera;->access$1602(Lcom/android/camera/SelfCamera;Z)Z

    .line 334
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v5, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mIsSmiling:Z
    invoke-static {v5}, Lcom/android/camera/SelfCamera;->access$700(Lcom/android/camera/SelfCamera;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mIsSmileEnable:Z
    invoke-static {v5}, Lcom/android/camera/SelfCamera;->access$1700(Lcom/android/camera/SelfCamera;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    #setter for: Lcom/android/camera/SelfCamera;->mShutterReady:Z
    invoke-static {v2, v3}, Lcom/android/camera/SelfCamera;->access$1502(Lcom/android/camera/SelfCamera;Z)Z

    .line 335
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mVoiceOn:Z
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1600(Lcom/android/camera/SelfCamera;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mShutterReady:Z
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1500(Lcom/android/camera/SelfCamera;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 336
    :cond_8
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mVoiceGuide:Lcom/android/camera/SelfCamera$VoiceGuide;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1900(Lcom/android/camera/SelfCamera;)Lcom/android/camera/SelfCamera$VoiceGuide;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mIsSmileEnable:Z
    invoke-static {v3}, Lcom/android/camera/SelfCamera;->access$1700(Lcom/android/camera/SelfCamera;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/SelfCamera$VoiceGuide;->voicePerfect(Z)V

    .line 344
    :cond_9
    :goto_3
    const-string v2, "SelfCamera"

    const-string v3, "@@@@@@@@@@ can take pic !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_4
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1100(Lcom/android/camera/SelfCamera;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    const-string v2, "SelfCamera"

    const-string v3, "-----------sendEmptyMessageDelayed---REGISTER_ONE_SHOT_PRIVIEW_FRAME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1100(Lcom/android/camera/SelfCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mFaceSolidHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1100(Lcom/android/camera/SelfCamera;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 333
    :cond_a
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mIsPrevPerfect:Z
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$1800(Lcom/android/camera/SelfCamera;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_2

    .line 339
    :cond_b
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #calls: Lcom/android/camera/SelfCamera;->releaseShutter()V
    invoke-static {v2}, Lcom/android/camera/SelfCamera;->access$2000(Lcom/android/camera/SelfCamera;)V

    .line 340
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #setter for: Lcom/android/camera/SelfCamera;->mShutterReady:Z
    invoke-static {v2, v3}, Lcom/android/camera/SelfCamera;->access$1502(Lcom/android/camera/SelfCamera;Z)Z

    .line 341
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #setter for: Lcom/android/camera/SelfCamera;->mIsSmiling:Z
    invoke-static {v2, v3}, Lcom/android/camera/SelfCamera;->access$702(Lcom/android/camera/SelfCamera;Z)Z

    goto :goto_3

    .line 346
    :cond_c
    const-string v2, "SelfCamera"

    const-string v5, "@@@@@@@@@@ can\'t take pic !"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #setter for: Lcom/android/camera/SelfCamera;->mShutterReady:Z
    invoke-static {v2, v3}, Lcom/android/camera/SelfCamera;->access$1502(Lcom/android/camera/SelfCamera;Z)Z

    .line 348
    iget-object v2, p0, Lcom/android/camera/SelfCamera$FaceSolidHandler;->this$0:Lcom/android/camera/SelfCamera;

    #setter for: Lcom/android/camera/SelfCamera;->mIsPrevPerfect:Z
    invoke-static {v2, v3}, Lcom/android/camera/SelfCamera;->access$1802(Lcom/android/camera/SelfCamera;Z)Z

    goto :goto_4

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
