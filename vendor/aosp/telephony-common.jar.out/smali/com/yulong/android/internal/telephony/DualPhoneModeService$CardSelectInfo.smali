.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
.super Ljava/lang/Object;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardSelectInfo"
.end annotation


# instance fields
.field public mCdmaRadio:Z

.field public mGsmRadio:Z

.field public mLeftSlotModemType:I

.field public mPreferredModemType:I

.field public mPreferredSlotId:I

.field public mRightSlotModemType:I

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 4648
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4649
    return-void
.end method

.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;IIII)V
    .locals 0
    .parameter
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"
    .parameter "iPreferredModemType"

    .prologue
    .line 4664
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4665
    iput p2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4666
    iput p3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4667
    iput p4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 4668
    iput p5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 4669
    return-void
.end method


# virtual methods
.method public copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V
    .locals 1
    .parameter "userselected"

    .prologue
    .line 4678
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4679
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4680
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 4681
    iget v0, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 4682
    return-void
.end method
