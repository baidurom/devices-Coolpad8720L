.class public final enum Lcom/android/internal/telephony/SimRefreshResponse$Result;
.super Ljava/lang/Enum;
.source "SimRefreshResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimRefreshResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/SimRefreshResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/SimRefreshResponse$Result;

.field public static final enum SIM_FILE_UPDATE:Lcom/android/internal/telephony/SimRefreshResponse$Result;

.field public static final enum SIM_INIT:Lcom/android/internal/telephony/SimRefreshResponse$Result;

.field public static final enum SIM_RESET:Lcom/android/internal/telephony/SimRefreshResponse$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;

    const-string v1, "SIM_FILE_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimRefreshResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_FILE_UPDATE:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;

    const-string v1, "SIM_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SimRefreshResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_INIT:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;

    const-string v1, "SIM_RESET"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/SimRefreshResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_RESET:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/SimRefreshResponse$Result;

    sget-object v1, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_FILE_UPDATE:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_INIT:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_RESET:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->$VALUES:[Lcom/android/internal/telephony/SimRefreshResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SimRefreshResponse$Result;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/SimRefreshResponse$Result;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/internal/telephony/SimRefreshResponse$Result;->$VALUES:[Lcom/android/internal/telephony/SimRefreshResponse$Result;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SimRefreshResponse$Result;

    return-object v0
.end method
