.class Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;
.super Ljava/lang/Object;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerStateInfo"
.end annotation


# instance fields
.field public mCurPowerState:I

.field public mLowBatterClosedNet:Z

.field private mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field public mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5357
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5358
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 5359
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 5360
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;IIII)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 5361
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;IIII)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 5362
    return-void
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5341
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    return-object v0
.end method
