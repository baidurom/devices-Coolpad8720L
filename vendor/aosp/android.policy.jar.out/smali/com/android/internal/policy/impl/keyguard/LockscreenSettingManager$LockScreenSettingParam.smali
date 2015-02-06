.class Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
.super Ljava/lang/Object;
.source "LockscreenSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LockScreenSettingParam"
.end annotation


# instance fields
.field private colorInDB:I

.field private followSysBrightNess:Z

.field private showCarrier:Z

.field private showDataTime:Z

.field private showOwnerInfo:Z

.field private showRandomUnlock:Z

.field private textInDB:Ljava/lang/String;

.field private typeFaceInDB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z

    .line 291
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z

    .line 292
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z

    .line 293
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I

    .line 296
    const-string v0, "system/fonts/default-lockscreeninfo.ttf"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "showText"

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;

    .line 301
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z

    return p1
.end method
