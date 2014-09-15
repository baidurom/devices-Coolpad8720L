.class public Lcom/android/camera/YLParametersHelper;
.super Ljava/lang/Object;
.source "YLParametersHelper.java"


# static fields
.field private static final MARVELL_SHARPNESS:[I

.field public static inLongShotMode:Z


# instance fields
.field private final MARVELL_CONTRAST:[I

.field private final MARVELL_ISO:[Ljava/lang/String;

.field private final MARVELL_SATURATION:[I

.field private MTK_CONTRAST:[Ljava/lang/String;

.field private MTK_CONTRAST_KEY:Ljava/lang/String;

.field private MTK_ISO:[Ljava/lang/String;

.field private MTK_ISO_KEY:Ljava/lang/String;

.field private MTK_SATURATION:[Ljava/lang/String;

.field private MTK_SATURATION_KEY:Ljava/lang/String;

.field private final MTK_SHARPNESS:[I

.field NvParameters:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final Nv_CONTRAST:[Ljava/lang/String;

.field private final Nv_ISO:[Ljava/lang/String;

.field private final Nv_SATURATION:[Ljava/lang/String;

.field private final Nv_SHARPNESS:[Ljava/lang/String;

.field private final QC8x25_CONTRAST:[I

.field private final QC8x25_ISO:[Ljava/lang/String;

.field private final QC8x25_SATURATION:[I

.field private final QC8x25_SHARPNESS:[I

.field private final QC8x26_CONTRAST:[I

.field private final QC8x26_ISO:[Ljava/lang/String;

.field private final QC8x26_SATURATION:[I

.field private final QC8x26_SHARPNESS:[I

.field QCCamera:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field YLIsSupportHDR:Ljava/lang/reflect/Method;

.field YLsetContrast:Ljava/lang/reflect/Method;

.field YLsetIso:Ljava/lang/reflect/Method;

.field YLsetSaturation:Ljava/lang/reflect/Method;

.field YLsetSharpness:Ljava/lang/reflect/Method;

.field getNSLBurstCount:Ljava/lang/reflect/Method;

.field getNSLNumBuffers:Ljava/lang/reflect/Method;

.field inContinuousShotMode:Ljava/lang/reflect/Method;

.field setBurstCount:Ljava/lang/reflect/Method;

.field setFlipStill:Ljava/lang/reflect/Method;

.field setLongShot:Ljava/lang/reflect/Method;

.field setNSLBurstCount:Ljava/lang/reflect/Method;

.field setNSLNumBuffers:Ljava/lang/reflect/Method;

.field setNSLSkipCount:Ljava/lang/reflect/Method;

.field setNVShotMode:Ljava/lang/reflect/Method;

.field setPreviewFpsRange:Ljava/lang/reflect/Method;

.field setQCShotMode:Ljava/lang/reflect/Method;

.field setSkipCount:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/YLParametersHelper;->inLongShotMode:Z

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/YLParametersHelper;->MARVELL_SHARPNESS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    .line 15
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QCCamera:Ljava/lang/Class;

    .line 16
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setLongShot:Ljava/lang/reflect/Method;

    .line 19
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount:Ljava/lang/reflect/Method;

    .line 20
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->getNSLBurstCount:Ljava/lang/reflect/Method;

    .line 21
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setBurstCount:Ljava/lang/reflect/Method;

    .line 22
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLSkipCount:Ljava/lang/reflect/Method;

    .line 23
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setSkipCount:Ljava/lang/reflect/Method;

    .line 24
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLNumBuffers:Ljava/lang/reflect/Method;

    .line 25
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->YLIsSupportHDR:Ljava/lang/reflect/Method;

    .line 26
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->inContinuousShotMode:Ljava/lang/reflect/Method;

    .line 27
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNVShotMode:Ljava/lang/reflect/Method;

    .line 29
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setQCShotMode:Ljava/lang/reflect/Method;

    .line 30
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setFlipStill:Ljava/lang/reflect/Method;

    .line 31
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->YLsetIso:Ljava/lang/reflect/Method;

    .line 32
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->YLsetSaturation:Ljava/lang/reflect/Method;

    .line 33
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->YLsetContrast:Ljava/lang/reflect/Method;

    .line 34
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers:Ljava/lang/reflect/Method;

    .line 35
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->setPreviewFpsRange:Ljava/lang/reflect/Method;

    .line 36
    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->YLsetSharpness:Ljava/lang/reflect/Method;

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "100"

    aput-object v1, v0, v5

    const-string v1, "200"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "400"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->Nv_ISO:[Ljava/lang/String;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "ISO100"

    aput-object v1, v0, v5

    const-string v1, "ISO200"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "ISO400"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x25_ISO:[Ljava/lang/String;

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "ISO100"

    aput-object v1, v0, v5

    const-string v1, "ISO200"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "ISO400"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x26_ISO:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "100"

    aput-object v1, v0, v5

    const-string v1, "200"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "400"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MARVELL_ISO:[Ljava/lang/String;

    .line 54
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "lowest"

    aput-object v1, v0, v4

    const-string v1, "low"

    aput-object v1, v0, v5

    const-string v1, "normal"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "high"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "highest"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->Nv_CONTRAST:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x25_CONTRAST:[I

    .line 56
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x26_CONTRAST:[I

    .line 57
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MARVELL_CONTRAST:[I

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "-100"

    aput-object v1, v0, v4

    const-string v1, "-50"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "100"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->Nv_SATURATION:[Ljava/lang/String;

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x25_SATURATION:[I

    .line 62
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x26_SATURATION:[I

    .line 63
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MARVELL_SATURATION:[I

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "-100"

    aput-object v1, v0, v4

    const-string v1, "-50"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "100"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->Nv_SHARPNESS:[Ljava/lang/String;

    .line 68
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x25_SHARPNESS:[I

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->QC8x26_SHARPNESS:[I

    .line 71
    new-array v0, v3, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_SHARPNESS:[I

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "middle"

    aput-object v1, v0, v5

    const-string v1, "high"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_SATURATION:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "100"

    aput-object v1, v0, v5

    const-string v1, "200"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "400"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "800"

    aput-object v2, v0, v1

    const-string v1, "1600"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_ISO:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "middle"

    aput-object v1, v0, v5

    const-string v1, "high"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_CONTRAST:[Ljava/lang/String;

    .line 80
    const-string v0, "iso-speed"

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_ISO_KEY:Ljava/lang/String;

    .line 81
    const-string v0, "contrast"

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_CONTRAST_KEY:Ljava/lang/String;

    .line 82
    const-string v0, "saturation"

    iput-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_SATURATION_KEY:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/YLParametersHelper;->initialize()V

    .line 87
    return-void

    .line 55
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 68
    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_7
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_8
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method YLsetContrast(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .parameter "pa"
    .parameter "nvalue"

    .prologue
    .line 274
    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-lt p2, v0, :cond_2

    .line 275
    :cond_0
    const-string v0, "YLParametersHelper"

    const-string v1, "YLLOG:invalid parameter for YLsetContrast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 279
    const-string v0, "nv-contrast"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->Nv_CONTRAST:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_3
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 281
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QC8x25_CONTRAST:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 282
    :cond_4
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 284
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 286
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 287
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_CONTRAST_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->MTK_CONTRAST:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_5
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 289
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QC8x26_CONTRAST:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 290
    :cond_6
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 291
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->MARVELL_CONTRAST:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method YLsetIso(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .parameter "pa"
    .parameter "nvalue"

    .prologue
    .line 221
    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-le p2, v0, :cond_2

    .line 222
    :cond_0
    const-string v0, "YLParametersHelper"

    const-string v1, "YLLOG:invalid parameter for YLsetIso"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 226
    const-string v0, "nv-picture-iso"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->Nv_ISO:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_3
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 228
    const-string v0, "iso"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QC8x25_ISO:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_4
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 231
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 233
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 234
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_ISO_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->MTK_ISO:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_5
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 236
    const-string v0, "iso"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QC8x26_ISO:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_6
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 238
    const-string v0, "iso-mode"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->MARVELL_ISO:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method YLsetSaturation(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .parameter "pa"
    .parameter "nvalue"

    .prologue
    .line 248
    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-lt p2, v0, :cond_2

    .line 249
    :cond_0
    const-string v0, "YLParametersHelper"

    const-string v1, "YLLOG:invalid parameter for YLsetSaturation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 253
    const-string v0, "nv-saturation"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->Nv_SATURATION:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_3
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 255
    const-string v0, "saturation"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QC8x25_SATURATION:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 256
    :cond_4
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 258
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 260
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 261
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->MTK_SATURATION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->MTK_SATURATION:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_5
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 263
    const-string v0, "saturation"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QC8x26_SATURATION:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    :cond_6
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 265
    const-string v0, "saturation"

    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->MARVELL_SATURATION:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method getNSLBurstCount(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .parameter "pa"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->getNSLBurstCount:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->getNSLBurstCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .parameter "pa"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method inContinuousShotMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "pa"

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->inContinuousShotMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->inContinuousShotMode:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    sget v1, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 183
    sget-boolean v0, Lcom/android/camera/YLParametersHelper;->inLongShotMode:Z

    goto :goto_0
.end method

.method initialize()V
    .locals 6

    .prologue
    .line 90
    const-string v1, "com.nvidia.NvCamera$NvParameters"

    invoke-static {v1}, Lcom/android/gallery3d/common/ApiHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    .line 91
    const-string v1, "android.hardware.Camera"

    invoke-static {v1}, Lcom/android/gallery3d/common/ApiHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->QCCamera:Ljava/lang/Class;

    .line 92
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "setNSLBurstCount"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount:Ljava/lang/reflect/Method;

    .line 95
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "getNSLBurstCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->getNSLBurstCount:Ljava/lang/reflect/Method;

    .line 96
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "setBurstCount"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setBurstCount:Ljava/lang/reflect/Method;

    .line 97
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "setNSLSkipCount"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setNSLSkipCount:Ljava/lang/reflect/Method;

    .line 98
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "setSkipCount"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setSkipCount:Ljava/lang/reflect/Method;

    .line 99
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "setNSLNumBuffers"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setNSLNumBuffers:Ljava/lang/reflect/Method;

    .line 100
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "YLIsSupportHDR"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->YLIsSupportHDR:Ljava/lang/reflect/Method;

    .line 101
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "inContinuousShotMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->inContinuousShotMode:Ljava/lang/reflect/Method;

    .line 102
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "setNVShotMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setNVShotMode:Ljava/lang/reflect/Method;

    .line 103
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "setFlipStill"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setFlipStill:Ljava/lang/reflect/Method;

    .line 104
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "YLsetIso"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->YLsetIso:Ljava/lang/reflect/Method;

    .line 105
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "YLsetSaturation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->YLsetSaturation:Ljava/lang/reflect/Method;

    .line 106
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "YLsetContrast"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->YLsetContrast:Ljava/lang/reflect/Method;

    .line 107
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "getNSLNumBuffers"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->getNSLNumBuffers:Ljava/lang/reflect/Method;

    .line 108
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->NvParameters:Ljava/lang/Class;

    const-string v2, "YLsetSharpness"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->YLsetSharpness:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QCCamera:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/YLParametersHelper;->QCCamera:Ljava/lang/Class;

    const-string v2, "setLongshot"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setLongShot:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/YLParametersHelper;->setLongShot:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 110
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method setBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 4
    .parameter "pa"
    .parameter "count"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setBurstCount:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setBurstCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    return-void
.end method

.method setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 4
    .parameter "pa"
    .parameter "count"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLBurstCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    return-void
.end method

.method setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V
    .locals 4
    .parameter "pa"
    .parameter "count"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLNumBuffers:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLNumBuffers:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    return-void
.end method

.method setNSLSkipCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 4
    .parameter "pa"
    .parameter "count"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLSkipCount:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setNSLSkipCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    return-void
.end method

.method setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Landroid/hardware/Camera;Z)Z
    .locals 6
    .parameter "pa"
    .parameter "mode"
    .parameter "mCamera"
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/android/camera/YLParametersHelper;->setNVShotMode:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 192
    sget v2, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/camera/YLParametersHelper;->setNVShotMode:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {v2, p1, v3}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    sget v2, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 197
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/camera/YLParametersHelper;->setLongShot:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 199
    sput-boolean p4, Lcom/android/camera/YLParametersHelper;->inLongShotMode:Z

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/YLParametersHelper;->setLongShot:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, p3, v3}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    sget-boolean v1, Lcom/android/camera/YLParametersHelper;->inLongShotMode:Z

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    sput-boolean v1, Lcom/android/camera/YLParametersHelper;->inLongShotMode:Z

    goto :goto_1
.end method

.method setSkipCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 4
    .parameter "pa"
    .parameter "count"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setSkipCount:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/YLParametersHelper;->setSkipCount:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-void
.end method
