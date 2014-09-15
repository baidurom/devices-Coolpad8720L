.class Lcom/android/camera/ui/AudioImageView$RecordAudioData;
.super Ljava/lang/Object;
.source "AudioImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AudioImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordAudioData"
.end annotation


# instance fields
.field audioPath:Ljava/lang/String;

.field imagePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/ui/AudioImageView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/AudioImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/camera/ui/AudioImageView$RecordAudioData;->this$0:Lcom/android/camera/ui/AudioImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/AudioImageView;Lcom/android/camera/ui/AudioImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AudioImageView$RecordAudioData;-><init>(Lcom/android/camera/ui/AudioImageView;)V

    return-void
.end method
