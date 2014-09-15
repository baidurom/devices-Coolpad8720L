.class public Lcom/morpho/core/FaceSolid;
.super Ljava/lang/Object;
.source "FaceSolid.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nativeObject:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    const-string v1, "morpho_facesolid"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    const-string v1, "MorphoFaceSolid"

    const-string v2, "successfully loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 98
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MorphoFaceSolid"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v1, "MorphoFaceSolid"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    return-void
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method private final native detect(I[I)I
.end method

.method private final native detectBlink(I[B[I)I
.end method

.method private final native detectEnd(I)I
.end method

.method private final native detectSmile(I[B[I)I
.end method

.method private final native detectStart(I[B)I
.end method

.method private final native finish(I)I
.end method

.method private final native getFaces(I[I[I)I
.end method

.method private final native initialize(III)I
.end method

.method private final native setLightTrackNum(II)I
.end method

.method private final native setMaxTrackNum(II)I
.end method

.method private final native start(I)I
.end method


# virtual methods
.method public detect([I)I
    .locals 2
    .parameter "progress"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 183
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/FaceSolid;->detect(I[I)I

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public detectBlink([B[I)I
    .locals 2
    .parameter "image"
    .parameter "morpho_FaceRect"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 533
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/FaceSolid;->detectBlink(I[B[I)I

    move-result v0

    .line 537
    :goto_0
    return v0

    .line 535
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public detectEnd()I
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 198
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1}, Lcom/morpho/core/FaceSolid;->detectEnd(I)I

    move-result v0

    .line 202
    :goto_0
    return v0

    .line 200
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public detectSmile([B[I)I
    .locals 2
    .parameter "image"
    .parameter "morpho_FaceRect"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 517
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/FaceSolid;->detectSmile(I[B[I)I

    move-result v0

    .line 521
    :goto_0
    return v0

    .line 519
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public detectStart([B)I
    .locals 2
    .parameter "image_data"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 166
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/FaceSolid;->detectStart(I[B)I

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 129
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1}, Lcom/morpho/core/FaceSolid;->finish(I)I

    move-result v0

    .line 130
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1}, Lcom/morpho/core/FaceSolid;->deleteNativeObject(I)V

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getFaces([I[I)I
    .locals 2
    .parameter "face_num"
    .parameter "morpho_faceRects"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 231
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/FaceSolid;->getFaces(I[I[I)I

    move-result v0

    .line 235
    :goto_0
    return v0

    .line 233
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(II)I
    .locals 2
    .parameter "input_width"
    .parameter "input_height"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, ret:I
    invoke-direct {p0}, Lcom/morpho/core/FaceSolid;->createNativeObject()I

    move-result v0

    .line 109
    if-lez v0, :cond_0

    .line 111
    iput v0, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    .line 112
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/FaceSolid;->initialize(III)I

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    .line 117
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method public setLightTrackNum(I)I
    .locals 2
    .parameter "light_track_num"

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 474
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 475
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/FaceSolid;->setLightTrackNum(II)I

    move-result v0

    .line 479
    :goto_0
    return v0

    .line 477
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMaxTrackNum(I)I
    .locals 2
    .parameter "max_face_num"

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 398
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/FaceSolid;->setMaxTrackNum(II)I

    move-result v0

    .line 402
    :goto_0
    return v0

    .line 400
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start()I
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    if-lez v1, :cond_0

    .line 148
    iget v1, p0, Lcom/morpho/core/FaceSolid;->nativeObject:I

    invoke-direct {p0, v1}, Lcom/morpho/core/FaceSolid;->start(I)I

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
