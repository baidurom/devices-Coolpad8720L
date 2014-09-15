.class Lcom/android/camera/SelfCamera$VoiceGuide;
.super Ljava/lang/Object;
.source "SelfCamera.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SelfCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceGuide"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsShutterOn:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mUriBase:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/SelfCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/SelfCamera;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->this$0:Lcom/android/camera/SelfCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mIsShutterOn:Z

    .line 739
    iput-object p2, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mContext:Landroid/content/Context;

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mUriBase:Ljava/lang/String;

    .line 744
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 745
    iget-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 746
    iget-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 747
    return-void
.end method

.method private prepareSoundFile(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 851
    iget-object v1, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mUriBase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 852
    iget-object v1, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 866
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 855
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 856
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 857
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 858
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 859
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 861
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 862
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 863
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 864
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mIsShutterOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->this$0:Lcom/android/camera/SelfCamera;

    #getter for: Lcom/android/camera/SelfCamera;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/SelfCamera;->access$2100(Lcom/android/camera/SelfCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->this$0:Lcom/android/camera/SelfCamera;

    iget-object v0, v0, Lcom/android/camera/SelfCamera;->mListener:Lcom/android/camera/SelfCamera$Listener;

    invoke-interface {v0}, Lcom/android/camera/SelfCamera$Listener;->doCapture()V

    .line 787
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 788
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mIsShutterOn:Z

    .line 791
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 773
    return-void
.end method

.method public voiceCloser()V
    .locals 1

    .prologue
    .line 832
    const v0, 0x7f08000b

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 833
    return-void
.end method

.method public voiceDown()V
    .locals 1

    .prologue
    .line 824
    const v0, 0x7f08000d

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 825
    return-void
.end method

.method public voiceLeft()V
    .locals 1

    .prologue
    .line 816
    const v0, 0x7f080010

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 817
    return-void
.end method

.method public voiceNoFace()V
    .locals 1

    .prologue
    .line 828
    const v0, 0x7f080011

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 829
    return-void
.end method

.method public voiceOneFace()V
    .locals 1

    .prologue
    .line 836
    const v0, 0x7f080012

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 837
    return-void
.end method

.method public voicePerfect(Z)V
    .locals 1
    .parameter "isSmile"

    .prologue
    .line 797
    if-eqz p1, :cond_0

    .line 798
    const v0, 0x7f080015

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 804
    :goto_0
    return-void

    .line 801
    :cond_0
    const v0, 0x7f08000a

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SelfCamera$VoiceGuide;->mIsShutterOn:Z

    goto :goto_0
.end method

.method public voiceRight()V
    .locals 1

    .prologue
    .line 812
    const v0, 0x7f080014

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 813
    return-void
.end method

.method public voiceUp()V
    .locals 1

    .prologue
    .line 820
    const v0, 0x7f080016

    invoke-direct {p0, v0}, Lcom/android/camera/SelfCamera$VoiceGuide;->prepareSoundFile(I)V

    .line 821
    return-void
.end method
