.class public Lcom/android/gallery3d/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method public static extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 16
    .parameter "details"
    .parameter "filePath"

    .prologue
    .line 128
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 129
    .local v5, exif:Landroid/media/ExifInterface;
    const-string v11, "Flash"

    const/16 v12, 0x66

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 131
    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 132
    .local v10, mWidth:I
    const/4 v11, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 134
    .local v9, mHeight:I
    if-lez v10, :cond_0

    if-gtz v9, :cond_1

    .line 135
    :cond_0
    const-string v11, "ImageWidth"

    invoke-virtual {v5, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 136
    const-string v11, "ImageWidth"

    invoke-virtual {v5, v11}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 137
    if-lez v10, :cond_4

    if-lez v9, :cond_4

    .line 138
    const-string v11, "ImageWidth"

    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 140
    const-string v11, "ImageLength"

    const/4 v12, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 168
    :cond_1
    :goto_0
    const-string v11, "Make"

    const/16 v12, 0x64

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 169
    const-string v11, "Model"

    const/16 v12, 0x65

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 170
    const-string v11, "FNumber"

    const/16 v12, 0x69

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 171
    const-string v11, "ISOSpeedRatings"

    const/16 v12, 0x6c

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 172
    const-string v11, "WhiteBalance"

    const/16 v12, 0x68

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 174
    const-string v11, "ExposureTime"

    const/16 v12, 0x6b

    move-object/from16 v0, p0

    invoke-static {v0, v5, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 177
    const-string v11, "FocalLength"

    const-wide/16 v12, 0x0

    invoke-virtual {v5, v11, v12, v13}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 178
    .local v2, data:D
    const-wide/16 v11, 0x0

    cmpl-double v11, v2, v11

    if-eqz v11, :cond_2

    .line 179
    const/16 v11, 0x67

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 180
    const/16 v11, 0x67

    const v12, 0x7f0e00d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->setUnit(II)V

    .line 183
    :cond_2
    const/4 v11, 0x2

    new-array v8, v11, [F

    .line 184
    .local v8, location:[F
    invoke-virtual {v5, v8}, Landroid/media/ExifInterface;->getLatLong([F)Z

    .line 185
    const/4 v11, 0x0

    aget v11, v8, v11

    float-to-double v11, v11

    const/4 v13, 0x1

    aget v13, v8, v13

    float-to-double v13, v13

    invoke-static {v11, v12, v13, v14}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 186
    const/4 v11, 0x4

    const/4 v12, 0x2

    new-array v12, v12, [D

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v8, v14

    float-to-double v14, v14

    aput-wide v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget v14, v8, v14

    float-to-double v14, v14

    aput-wide v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 193
    .end local v2           #data:D
    .end local v5           #exif:Landroid/media/ExifInterface;
    .end local v8           #location:[F
    .end local v9           #mHeight:I
    .end local v10           #mWidth:I
    :cond_3
    :goto_1
    return-void

    .line 144
    .restart local v5       #exif:Landroid/media/ExifInterface;
    .restart local v9       #mHeight:I
    .restart local v10       #mWidth:I
    :cond_4
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v6, file:Ljava/io/File;
    const/16 v11, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 146
    const/16 v11, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 147
    .local v7, fileSize:I
    if-gtz v7, :cond_5

    .line 148
    const/16 v11, 0xa

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 153
    .end local v7           #fileSize:I
    :cond_5
    :goto_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 154
    .local v1, Options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 157
    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 158
    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :goto_3
    const/4 v11, 0x6

    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 163
    const/4 v11, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 189
    .end local v1           #Options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #exif:Landroid/media/ExifInterface;
    .end local v6           #file:Ljava/io/File;
    .end local v9           #mHeight:I
    .end local v10           #mWidth:I
    :catch_0
    move-exception v4

    .line 191
    .local v4, ex:Ljava/io/IOException;
    const-string v11, "MediaDetails"

    const-string v12, ""

    invoke-static {v11, v12, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 151
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v5       #exif:Landroid/media/ExifInterface;
    .restart local v6       #file:Ljava/io/File;
    .restart local v9       #mHeight:I
    .restart local v10       #mWidth:I
    :cond_6
    const/16 v11, 0xa

    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 159
    .restart local v1       #Options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v11

    goto :goto_3
.end method

.method private static setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .locals 3
    .parameter "details"
    .parameter "exif"
    .parameter "tag"
    .parameter "key"

    .prologue
    .line 113
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 115
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/16 v2, 0x66

    if-ne p3, v2, :cond_2

    .line 117
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    .line 119
    .local v0, state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {p0, p3, v0}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0

    .line 121
    .end local v0           #state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    :cond_2
    invoke-virtual {p0, p3, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 3
    .parameter "index"
    .parameter "unit"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
