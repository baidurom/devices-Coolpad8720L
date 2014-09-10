.class public Lcom/android/internal/telephony/SimRefreshResponse;
.super Ljava/lang/Object;
.source "SimRefreshResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimRefreshResponse$Result;
    }
.end annotation


# instance fields
.field public aidPtr:Ljava/lang/String;

.field public efId:I

.field public refreshResult:Lcom/android/internal/telephony/SimRefreshResponse$Result;

.field public slot:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static refreshResultFromRIL(I)Lcom/android/internal/telephony/SimRefreshResponse$Result;
    .locals 3
    .parameter "refreshResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 62
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim Refresh response is Unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_FILE_UPDATE:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    .line 60
    :goto_0
    return-object v0

    .line 59
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_INIT:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    goto :goto_0

    .line 60
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_RESET:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
