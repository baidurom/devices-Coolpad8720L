.class abstract Lcom/android/gallery3d/ui/UploadedTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/UploadedTexture$1;,
        Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;-><init>(Lcom/android/gallery3d/ui/UploadedTexture$1;)V

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 219
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .parameter "hasBorder"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 54
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setBorder(Z)V

    .line 74
    iput v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    .line 76
    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 149
    :goto_0
    return-object v2

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 144
    .local v1, w:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 145
    .local v0, h:I
    iget v2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 146
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 149
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "vertical"
    .parameter "config"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    .line 121
    sget-object v1, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    .line 122
    .local v1, key:Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;
    iput-boolean p0, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->vertical:Z

    .line 123
    iput-object p1, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 124
    iput p2, v1, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->length:I

    .line 125
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 126
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 127
    if-eqz p0, :cond_1

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/ui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    return-object v0

    .line 127
    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    .line 213
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 216
    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 223
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    .line 225
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 226
    .local v14, bitmap:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_5

    .line 228
    :try_start_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 229
    .local v23, bWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 230
    .local v22, bHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v26, v23, v2

    .line 231
    .local v26, width:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v25, v22, v2

    .line 232
    .local v25, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v5

    .line 233
    .local v5, texWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v6

    .line 235
    .local v6, texHeight:I
    move/from16 v0, v23

    if-gt v0, v5, :cond_1

    move/from16 v0, v22

    if-gt v0, v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 241
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    int-to-float v7, v7

    aput v7, v2, v3

    .line 242
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v7, v7, v22

    int-to-float v7, v7

    aput v7, v2, v3

    .line 243
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x2

    move/from16 v0, v23

    int-to-float v7, v0

    aput v7, v2, v3

    .line 244
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x3

    move/from16 v0, v22

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v2, v3

    .line 247
    const/4 v2, 0x1

    sget-object v3, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 248
    const/16 v2, 0xde1

    sget-object v3, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 249
    const/16 v2, 0xde1

    const v3, 0x8b9d

    sget-object v7, Lcom/android/gallery3d/ui/UploadedTexture;->sCropRect:[F

    const/4 v8, 0x0

    invoke-interface {v1, v2, v3, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 251
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 253
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 255
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 257
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 260
    move/from16 v0, v23

    if-ne v0, v5, :cond_2

    move/from16 v0, v22

    if-ne v0, v6, :cond_2

    .line 261
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v14, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 302
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 303
    sget-object v2, Lcom/android/gallery3d/ui/UploadedTexture;->sTextureId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 304
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 305
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 310
    return-void

    .line 235
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 263
    :cond_2
    :try_start_1
    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 264
    .local v4, format:I
    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v9

    .line 265
    .local v9, type:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    .line 267
    .local v24, config:Landroid/graphics/Bitmap$Config;
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v4

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 269
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    if-lez v2, :cond_3

    .line 274
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 275
    .local v19, line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 279
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 280
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 285
    .end local v19           #line:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v23

    if-ge v2, v5, :cond_4

    .line 286
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 287
    .restart local v19       #line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v17, v2, v23

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 292
    .end local v19           #line:Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v22

    if-ge v2, v6, :cond_0

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/android/gallery3d/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 294
    .restart local v19       #line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    add-int v18, v2, v22

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 299
    .end local v4           #format:I
    .end local v5           #texWidth:I
    .end local v6           #texHeight:I
    .end local v9           #type:I
    .end local v19           #line:Landroid/graphics/Bitmap;
    .end local v22           #bHeight:I
    .end local v23           #bWidth:I
    .end local v24           #config:Landroid/graphics/Bitmap$Config;
    .end local v25           #height:I
    .end local v26           #width:I
    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    throw v2

    .line 307
    :cond_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 308
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Texture load fail, no bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    .line 177
    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 178
    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 179
    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 336
    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0
    .parameter "uploading"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mIsUploading:Z

    .line 80
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .parameter "isOpaque"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mOpaque:Z

    .line 325
    return-void
.end method

.method public updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v0, 0xde1

    .line 193
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 200
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 201
    .local v5, format:I
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 202
    .local v6, type:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 203
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBorder:I

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->freeBitmap()V

    .line 207
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
