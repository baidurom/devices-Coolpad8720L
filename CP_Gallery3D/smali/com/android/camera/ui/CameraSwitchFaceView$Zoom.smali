.class final enum Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;
.super Ljava/lang/Enum;
.source "CameraSwitchFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraSwitchFaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Zoom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

.field public static final enum DEFAULT:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

.field public static final enum IN:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

.field public static final enum OUT:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    const-string v1, "IN"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->IN:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    new-instance v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->OUT:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    new-instance v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->DEFAULT:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    sget-object v1, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->IN:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->OUT:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->DEFAULT:Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->$VALUES:[Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    const-class v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;->$VALUES:[Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ui/CameraSwitchFaceView$Zoom;

    return-object v0
.end method
