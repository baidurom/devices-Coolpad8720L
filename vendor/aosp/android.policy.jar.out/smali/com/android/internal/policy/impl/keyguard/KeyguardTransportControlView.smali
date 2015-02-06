.class public Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
.super Landroid/widget/FrameLayout;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DISPLAY_TIMEOUT_MS:I = 0x1388

.field private static final MSG_SET_ARTWORK:I = 0x67

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_STATE:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "TransportControlView"


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAttached:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mClientGeneration:I

.field private mClientIntent:Landroid/app/PendingIntent;

.field private mCurrentPlayState:I

.field private mHandler:Landroid/os/Handler;

.field private mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

.field private mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

.field private mMusicClientPresent:Z

.field private mPopulateMetadataWhenAttached:Landroid/os/Bundle;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransportCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;

.field private mTransportControlFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMusicClientPresent:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 86
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    .line 196
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->onListenerAttached()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 285
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onListenerAttached()V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMusicClientPresent:Z

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;->onListenerAttached()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "TransportControlView"

    const-string v1, "onListenerAttached(): no callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private populateMetadata()V
    .locals 8

    .prologue
    const/16 v7, 0x21

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 305
    .local v3, trackTitleLength:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 309
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 322
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 323
    .local v2, str:Landroid/text/Spannable;
    if-eqz v3, :cond_5

    .line 324
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 326
    add-int/lit8 v3, v3, 0x1

    .line 328
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_6

    .line 329
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, 0x7fffffff

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-interface {v2, v4, v3, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 333
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 335
    .local v0, flags:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 336
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v5, 0x80

    invoke-static {v4, v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 337
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v5, 0x3c

    invoke-static {v4, v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 343
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    .line 344
    return-void
.end method

.method private sendMediaButtonClick(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    .line 465
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    .line 467
    const-string v3, "TransportControlView"

    const-string v4, "sendMediaButtonClick(): No client is currently registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 473
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 476
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    :goto_1
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 483
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 486
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 477
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 478
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "flags"
    .parameter "flag"

    .prologue
    .line 352
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0xd

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    goto :goto_0
.end method

.method private updatePlayPauseState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 362
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    if-ne p1, v2, :cond_0

    .line 395
    :goto_0
    return-void

    .line 367
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 387
    const v1, 0x1080024

    .line 388
    .local v1, imageResId:I
    const v0, 0x104031d

    .line 391
    .local v0, imageDescId:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 393
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;->onPlayStateChanged()V

    goto :goto_0

    .line 369
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_0
    const v1, 0x108008a

    .line 372
    .restart local v1       #imageResId:I
    const v0, 0x104031d

    .line 373
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 376
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_1
    const v1, 0x1080023

    .line 377
    .restart local v1       #imageResId:I
    const v0, 0x104031c

    .line 378
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 381
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_2
    const v1, 0x108031a

    .line 382
    .restart local v1       #imageResId:I
    const v0, 0x104031e

    .line 383
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .locals 0
    .parameter "transportControlFlags"

    .prologue
    .line 220
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 221
    return-void
.end method

.method private wasPlayingRecently(IJ)Z
    .locals 6
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    packed-switch p1, :pswitch_data_0

    .line 522
    const-string v0, "TransportControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown playback state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in wasPlayingRecently()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 523
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 508
    goto :goto_0

    .line 520
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public isMusicPlaying()Z
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 250
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 450
    const/4 v0, -0x1

    .line 451
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 452
    const/16 v0, 0x58

    .line 459
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 460
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V

    .line 462
    :cond_1
    return-void

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 454
    const/16 v0, 0x57

    goto :goto_0

    .line 455
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 456
    const/16 v0, 0x55

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 266
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 270
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    .line 271
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 225
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 226
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 227
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 228
    const v5, 0x10202e8

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    .line 229
    const v5, 0x10202e9

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    .line 230
    const v5, 0x10202ea

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    .line 231
    const v5, 0x10202eb

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    .line 232
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v5, v1, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    .line 233
    .local v1, buttons:[Landroid/view/View;
    move-object v0, v1

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 234
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onListenerDetached()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMusicClientPresent:Z

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;->onListenerDetached()V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "TransportControlView"

    const-string v1, "onListenerDetached: no callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 437
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;

    if-nez v1, :cond_1

    .line 438
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 441
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;

    .line 442
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 443
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;->clientPresent:Z

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->onListenerAttached()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 429
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 430
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 431
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMusicClientPresent:Z

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;->clientPresent:Z

    .line 432
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 255
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-eqz v1, :cond_0

    .line 256
    const/16 v1, 0x200

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 258
    .local v0, dim:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2, v0, v0}, Landroid/media/AudioManager;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 260
    .end local v0           #dim:I
    :cond_0
    return-void
.end method

.method public providesClock()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;)V
    .locals 0
    .parameter "transportCallback"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;

    .line 529
    return-void
.end method
