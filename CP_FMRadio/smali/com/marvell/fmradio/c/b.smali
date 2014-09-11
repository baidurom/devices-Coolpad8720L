.class public Lcom/marvell/fmradio/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioUtils"

.field private static final bQ:Z = false

.field public static final bR:I = 0x3e8

.field public static final bS:I = 0x438

.field public static final bT:I = 0x36b

.field public static final bU:I = 0x1a7d4

.field public static final bV:I = 0x155cc

.field public static final bW:I = 0x1

.field public static final bX:I = 0xa

.field public static final bY:I = 0x3e8

.field public static final bZ:I = 0x6

.field public static final ca:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/marvell/fmradio/c/b;->i(I)F

    move-result v0

    sput v0, Lcom/marvell/fmradio/c/b;->ca:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .locals 1
    .parameter

    .prologue
    .line 144
    const/high16 v0, 0x4120

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static b(F)I
    .locals 1
    .parameter

    .prologue
    .line 184
    const/high16 v0, 0x447a

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static e(I)Z
    .locals 4
    .parameter

    .prologue
    .line 87
    .line 89
    const/16 v0, 0x36b

    if-lt p0, v0, :cond_0

    const/16 v0, 0x438

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    .line 94
    :goto_0
    const-string v1, "FMRadioUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidStation: station = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", valid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(I)Z
    .locals 4
    .parameter

    .prologue
    .line 100
    .line 101
    const v0, 0x155cc

    if-lt p0, v0, :cond_0

    const v0, 0x1a7d4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    const-string v1, "FMRadioUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSFreq: freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", valid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(I)I
    .locals 2
    .parameter

    .prologue
    .line 114
    add-int/lit8 v0, p0, 0x1

    .line 115
    const/16 v1, 0x438

    if-le v0, v1, :cond_0

    .line 116
    const/16 v0, 0x36b

    .line 118
    :cond_0
    return v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 188
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 193
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method public static h(I)I
    .locals 2
    .parameter

    .prologue
    .line 129
    add-int/lit8 v0, p0, -0x1

    .line 130
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 131
    const/16 v0, 0x438

    .line 133
    :cond_0
    return v0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    .line 199
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 204
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static i(I)F
    .locals 2
    .parameter

    .prologue
    .line 155
    int-to-float v0, p0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    return v0
.end method

.method public static j(I)I
    .locals 1
    .parameter

    .prologue
    .line 159
    div-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static k(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 170
    int-to-float v0, p0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    .line 171
    const-string v1, "FMRadioUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatStation;frequency:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method public static l(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 210
    int-to-float v0, p0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 211
    const-string v1, "FMRadioUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatStation;frequency:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method
