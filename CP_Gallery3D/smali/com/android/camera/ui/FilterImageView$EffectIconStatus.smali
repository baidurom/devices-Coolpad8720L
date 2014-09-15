.class final enum Lcom/android/camera/ui/FilterImageView$EffectIconStatus;
.super Ljava/lang/Enum;
.source "FilterImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilterImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EffectIconStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/FilterImageView$EffectIconStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

.field public static final enum Status_Hightlight:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

.field public static final enum Status_Normal:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    const-string v1, "Status_Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;->Status_Normal:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    new-instance v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    const-string v1, "Status_Hightlight"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;->Status_Hightlight:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    sget-object v1, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;->Status_Normal:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;->Status_Hightlight:Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;->$VALUES:[Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/FilterImageView$EffectIconStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const-class v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/FilterImageView$EffectIconStatus;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ui/FilterImageView$EffectIconStatus;->$VALUES:[Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/FilterImageView$EffectIconStatus;

    return-object v0
.end method
