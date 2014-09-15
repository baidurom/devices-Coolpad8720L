.class public Lcom/android/camera/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# static fields
.field private static mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private static mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    .line 27
    new-instance v0, Lcom/android/camera/AudioFocusManager$1;

    invoke-direct {v0}, Lcom/android/camera/AudioFocusManager$1;-><init>()V

    sput-object v0, Lcom/android/camera/AudioFocusManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public static getAudioFocus(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 54
    sget-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    sget-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/android/camera/AudioFocusManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "AudioFocusManager"

    const-string v1, "get AudioFocus is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static releaseAudioFocus(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/android/camera/AudioFocusManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 67
    sget-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/android/camera/AudioFocusManager;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    :cond_0
    return-void
.end method
