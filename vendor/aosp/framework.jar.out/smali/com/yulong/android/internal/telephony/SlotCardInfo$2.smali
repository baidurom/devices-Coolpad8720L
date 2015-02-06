.class final Lcom/yulong/android/internal/telephony/SlotCardInfo$2;
.super Ljava/lang/Object;
.source "SlotCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SlotCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yulong/android/internal/telephony/SlotCardInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 65
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {p1}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->createFromParcelForFwkCheckCard(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->createFromParcelForSerivceCheckCard(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 72
    new-array v0, p1, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/SlotCardInfo$2;->newArray(I)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    return-object v0
.end method
