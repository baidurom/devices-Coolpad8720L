.class abstract Lcom/yulong/android/cp_utk/c;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "UTK App"

.field static final d:I = 0x1

.field static final e:I = 0x2

.field static final f:I = 0x3

.field static final g:I = 0x9c40

.field static final h:I = 0x2710

.field static final i:I = 0x7d0


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 66
    return-void
.end method

.method public static a(Lcom/android/internal/telephony/cat/Duration;)I
    .locals 2
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    sget-object v0, Lcom/yulong/android/cp_utk/u;->ba:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const/16 v0, 0x3e8

    .line 68
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    mul-int/2addr v0, v1

    .line 70
    :cond_0
    return v0

    .line 58
    :pswitch_0
    const v0, 0xea60

    .line 59
    goto :goto_0

    .line 61
    :pswitch_1
    const/16 v0, 0x2710

    .line 62
    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
