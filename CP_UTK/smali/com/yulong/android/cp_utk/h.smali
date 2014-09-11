.class Lcom/yulong/android/cp_utk/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic q:Lcom/yulong/android/cp_utk/UtkMenuActivity;


# direct methods
.method constructor <init>(Lcom/yulong/android/cp_utk/UtkMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/yulong/android/cp_utk/h;->q:Lcom/yulong/android/cp_utk/UtkMenuActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    sput-boolean v2, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    .line 193
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 189
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    sput-boolean v2, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v2, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    throw v0
.end method
