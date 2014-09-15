.class public Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;
.super Ljava/lang/Object;
.source "JpgMp3Mix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;
    }
.end annotation


# static fields
.field public static final MP3_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MP3_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MP3_RECORDER_INFO_UNKNOWN:I = 0x1

.field private static mOnInfoListener:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "jpgmp3mix"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->native_init()V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->native_setup(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static notifyFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 2
    .parameter "mediarecorder_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 87
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;

    .line 88
    .local v0, mr:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;
    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v1, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->mOnInfoListener:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->mOnInfoListener:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;

    invoke-interface {v1, v0, p1, p2}, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;->onInfo(Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;II)V

    goto :goto_0
.end method


# virtual methods
.method public native jpgMp3Mix(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native mp3RecordStart(Ljava/lang/String;)V
.end method

.method public native mp3RecordStop()V
.end method

.method public native release()V
.end method

.method public setOnInfoListener(Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    sput-object p1, Lcom/yulong/android/jpgmp3mix/JpgMp3Mix;->mOnInfoListener:Lcom/yulong/android/jpgmp3mix/JpgMp3Mix$OnInfoListener;

    .line 59
    return-void
.end method
