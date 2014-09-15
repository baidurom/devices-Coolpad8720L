.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private final mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mLastSystemUiVis:I

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private final mRootView:Landroid/view/View;

.field private mShowing:Z

.field private final mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 9
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "videoUri"
    .parameter "savedInstance"
    .parameter "canReplay"

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const/4 v6, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 84
    iput-wide v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 85
    iput v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 86
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 87
    iput v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 95
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 106
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 116
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 117
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 118
    const v2, 0x7f1000ae

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 119
    new-instance v2, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v2, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 120
    iput-object p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 122
    new-instance v2, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    .line 123
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 125
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, p5}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 129
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 130
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V

    .line 152
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 154
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 155
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    if-eqz p4, :cond_0

    .line 162
    const-string v2, "video-position"

    invoke-virtual {p4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 163
    const-string v2, "resumeable-timeout"

    invoke-virtual {p4, v2, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 164
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 165
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->suspend()V

    .line 166
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 169
    .local v0, bookmark:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 421
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPaused()V

    .line 314
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPlaying()V

    .line 308
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 309
    return-void
.end method

.method private setOnSystemUiVisibilityChangeListener()V
    .locals 2

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method private setProgress()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 285
    :goto_0
    return v1

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 283
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 284
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3, v1, v0, v2, v2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setTimes(IIII)V

    goto :goto_0
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "bookmark"

    .prologue
    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const v1, 0x7f0e0077

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    const v1, 0x7f0e0078

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    const v1, 0x7f0e007d

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    return-void
.end method

.method private showSystemUi(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 200
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    const/16 v0, 0x700

    .line 205
    .local v0, flag:I
    if-nez p1, :cond_1

    .line 207
    or-int/lit8 v0, v0, 0x7

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showLoading()V

    .line 294
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 302
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 303
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPlaying()V

    .line 298
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showEnded()V

    .line 329
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 330
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 273
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 372
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 373
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 385
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 413
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 388
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 413
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 394
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 398
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 403
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 417
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 255
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 378
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 214
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 1
    .parameter "time"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 358
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 359
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 360
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 353
    return-void
.end method

.method public onSeekStart()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 348
    return-void
.end method

.method public onShown()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 365
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 366
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 367
    return-void
.end method
