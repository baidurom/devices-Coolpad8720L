.class final enum Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

.field public static final enum b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

.field private static final synthetic c:[Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    const-string v1, "yes"

    invoke-direct {v0, v1, v2}, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->a:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    .line 96
    new-instance v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    sget-object v1, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->a:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->c:[Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;
    .locals 1
    .parameter

    .prologue
    .line 94
    const-class v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    return-object v0
.end method

.method public static values()[Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->c:[Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    return-object v0
.end method
