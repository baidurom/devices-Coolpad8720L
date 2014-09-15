.class Lcom/android/gallery3d/app/GifView$SampleView;
.super Landroid/view/View;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static SCALE_RATE:F

.field private static SCALE_SIZE:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/high16 v0, 0x3fc0

    sput v0, Lcom/android/gallery3d/app/GifView$SampleView;->SCALE_SIZE:F

    .line 67
    const/high16 v0, 0x4080

    sput v0, Lcom/android/gallery3d/app/GifView$SampleView;->SCALE_RATE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    iput v7, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mDegree:I

    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mContext:Landroid/content/Context;

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, is:Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, file:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 81
    .end local v3           #file:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 85
    invoke-static {v4}, Lcom/android/gallery3d/app/GifView$SampleView;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 86
    .local v0, array:[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v8}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 93
    .end local v0           #array:[B
    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    if-nez v7, :cond_2

    .line 114
    :cond_1
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, e1:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2           #e1:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 95
    :cond_2
    const/4 v6, 0x0

    .line 96
    .local v6, rotate:Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 98
    .local v5, movie:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_2
    const-string v7, "rotate"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 99
    if-eqz v6, :cond_1

    .line 100
    iget-object v7, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/GifView$SampleView;->mDegree:I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 101
    :catch_1
    move-exception v7

    goto :goto_1

    .line 104
    :catch_2
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static streamToBytes(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "is"

    .prologue
    .line 117
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v3, 0x19000

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 118
    .local v2, os:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 121
    .local v0, buffer:[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-ltz v1, :cond_0

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1           #len:I
    :catch_0
    move-exception v3

    .line 126
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 132
    const v12, 0x1a1a1a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 135
    .local v2, now:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovieStart:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 136
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovieStart:J

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    if-eqz v12, :cond_9

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v12}, Landroid/graphics/Movie;->duration()I

    move-result v1

    .line 140
    .local v1, dur:I
    if-nez v1, :cond_1

    .line 141
    const/16 v1, 0x7d0

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovieStart:J

    sub-long v12, v2, v12

    int-to-long v14, v1

    rem-long/2addr v12, v14

    long-to-int v8, v12

    .line 144
    .local v8, relTime:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v12, v8}, Landroid/graphics/Movie;->setTime(I)Z

    .line 146
    const/4 v10, 0x0

    .local v10, sx:F
    const/4 v11, 0x0

    .local v11, sy:F
    const/4 v9, 0x0

    .line 147
    .local v9, scale:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v12}, Landroid/graphics/Movie;->width()I

    move-result v5

    .line 148
    .local v5, pic_width:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v12}, Landroid/graphics/Movie;->height()I

    move-result v4

    .line 149
    .local v4, pic_height:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x2

    int-to-float v6, v12

    .line 150
    .local v6, px:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v4

    div-int/lit8 v12, v12, 0x2

    int-to-float v7, v12

    .line 151
    .local v7, py:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mDegree:I

    int-to-float v12, v12

    div-int/lit8 v13, v5, 0x2

    int-to-float v13, v13

    add-float/2addr v13, v6

    div-int/lit8 v14, v4, 0x2

    int-to-float v14, v14

    add-float/2addr v14, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    if-gt v5, v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    if-le v4, v12, :cond_c

    .line 153
    :cond_2
    if-lez v5, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mDegree:I

    const/16 v13, 0x5a

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mDegree:I

    const/16 v13, 0x10e

    if-ne v12, v13, :cond_a

    .line 155
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    div-float v10, v12, v13

    .line 159
    :cond_4
    :goto_0
    if-lez v4, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mDegree:I

    const/16 v13, 0x5a

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mDegree:I

    const/16 v13, 0x10e

    if-ne v12, v13, :cond_b

    .line 161
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float v11, v12, v13

    .line 165
    :cond_6
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 166
    const/4 v12, 0x0

    cmpl-float v12, v9, v12

    if-lez v12, :cond_7

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    mul-float/2addr v13, v9

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    div-float v6, v12, v9

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    mul-float/2addr v13, v9

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    div-float v7, v12, v9

    .line 170
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 178
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/GifView$SampleView;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v6, v7}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 182
    .end local v1           #dur:I
    .end local v4           #pic_height:I
    .end local v5           #pic_width:I
    .end local v6           #px:F
    .end local v7           #py:F
    .end local v8           #relTime:I
    .end local v9           #scale:F
    .end local v10           #sx:F
    .end local v11           #sy:F
    :cond_9
    new-instance v12, Lcom/android/gallery3d/app/GifView$SampleView$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/gallery3d/app/GifView$SampleView$1;-><init>(Lcom/android/gallery3d/app/GifView$SampleView;)V

    const-wide/16 v13, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void

    .line 157
    .restart local v1       #dur:I
    .restart local v4       #pic_height:I
    .restart local v5       #pic_width:I
    .restart local v6       #px:F
    .restart local v7       #py:F
    .restart local v8       #relTime:I
    .restart local v9       #scale:F
    .restart local v10       #sx:F
    .restart local v11       #sy:F
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float v10, v12, v13

    goto :goto_0

    .line 163
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    div-float v11, v12, v13

    goto :goto_1

    .line 171
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    sget v13, Lcom/android/gallery3d/app/GifView$SampleView;->SCALE_RATE:F

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    div-float/2addr v12, v13

    sget v13, Lcom/android/gallery3d/app/GifView$SampleView;->SCALE_RATE:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8

    .line 173
    :cond_d
    sget v9, Lcom/android/gallery3d/app/GifView$SampleView;->SCALE_SIZE:F

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    mul-float/2addr v13, v9

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    div-float v6, v12, v9

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    mul-float/2addr v13, v9

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    div-float v7, v12, v9

    .line 176
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2
.end method
