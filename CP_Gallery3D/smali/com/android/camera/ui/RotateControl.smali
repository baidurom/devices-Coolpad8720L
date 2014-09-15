.class public Lcom/android/camera/ui/RotateControl;
.super Ljava/lang/Object;
.source "RotateControl.java"


# static fields
.field private static instance:Lcom/android/camera/ui/RotateControl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/camera/ui/RotateControl;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private calculateFactor(II)I
    .locals 3
    .parameter "enterOrientation"
    .parameter "rotateOrientation"

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, enterFactor:I
    const/4 v1, 0x0

    .line 680
    .local v1, rotateFactor:I
    sparse-switch p1, :sswitch_data_0

    .line 694
    :goto_0
    sparse-switch p2, :sswitch_data_1

    .line 713
    :goto_1
    add-int v2, v0, v1

    return v2

    .line 682
    :sswitch_0
    const/4 v0, 0x1

    .line 683
    goto :goto_0

    .line 685
    :sswitch_1
    const/4 v0, 0x2

    .line 686
    goto :goto_0

    .line 688
    :sswitch_2
    const/4 v0, 0x3

    .line 689
    goto :goto_0

    .line 691
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 696
    :sswitch_4
    const/16 v1, 0xa

    .line 697
    goto :goto_1

    .line 699
    :sswitch_5
    const/16 v1, 0x14

    .line 700
    goto :goto_1

    .line 702
    :sswitch_6
    const/16 v1, 0x1e

    .line 703
    goto :goto_1

    .line 705
    :sswitch_7
    const/16 v1, 0x28

    goto :goto_1

    .line 680
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 694
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    sget-object v0, Lcom/android/camera/ui/RotateControl;->instance:Lcom/android/camera/ui/RotateControl;

    if-nez v0, :cond_0

    .line 75
    const-class v1, Lcom/android/camera/ui/RotateControl;

    monitor-enter v1

    .line 76
    :try_start_0
    new-instance v0, Lcom/android/camera/ui/RotateControl;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RotateControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/ui/RotateControl;->instance:Lcom/android/camera/ui/RotateControl;

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    sget-object v0, Lcom/android/camera/ui/RotateControl;->instance:Lcom/android/camera/ui/RotateControl;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public calculateScreenSize(I)[I
    .locals 7
    .parameter "dvOrientation"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 345
    iget-object v3, p0, Lcom/android/camera/ui/RotateControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/Util;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 346
    .local v1, size:[I
    const/4 v2, 0x0

    .local v2, width:I
    const/4 v0, 0x0

    .line 347
    .local v0, height:I
    if-eqz p1, :cond_0

    const/16 v3, 0xb4

    if-ne p1, v3, :cond_2

    .line 348
    :cond_0
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 349
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 354
    :cond_1
    :goto_0
    aput v2, v1, v5

    .line 355
    aput v0, v1, v6

    .line 356
    return-object v1

    .line 350
    :cond_2
    const/16 v3, 0x5a

    if-eq p1, v3, :cond_3

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_1

    .line 351
    :cond_3
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 352
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public calculateScreenSize(III)[I
    .locals 7
    .parameter "orientation"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 359
    const/4 v3, 0x2

    new-array v1, v3, [I

    aput p2, v1, v5

    aput p3, v1, v6

    .line 360
    .local v1, size:[I
    const/4 v2, 0x0

    .local v2, w:I
    const/4 v0, 0x0

    .line 361
    .local v0, h:I
    if-eqz p1, :cond_0

    const/16 v3, 0xb4

    if-ne p1, v3, :cond_2

    .line 362
    :cond_0
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 363
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 368
    :cond_1
    :goto_0
    aput v2, v1, v5

    .line 369
    aput v0, v1, v6

    .line 370
    return-object v1

    .line 364
    :cond_2
    const/16 v3, 0x5a

    if-eq p1, v3, :cond_3

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_1

    .line 365
    :cond_3
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 366
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getDestPosition(IIIIII)[I
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "enterOrientation"
    .parameter "rotateOrientation"

    .prologue
    .line 447
    const/4 v1, 0x0

    .local v1, px:I
    const/4 v2, 0x0

    .line 448
    .local v2, py:I
    invoke-direct {p0, p5, p6}, Lcom/android/camera/ui/RotateControl;->calculateFactor(II)I

    move-result v0

    .line 449
    .local v0, factor:I
    packed-switch v0, :pswitch_data_0

    .line 480
    :goto_0
    :pswitch_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3

    .line 454
    :pswitch_1
    move v1, p1

    .line 455
    move v2, p2

    .line 456
    goto :goto_0

    .line 461
    :pswitch_2
    sub-int v1, p3, p2

    .line 462
    move v2, p1

    .line 463
    goto :goto_0

    .line 468
    :pswitch_3
    sub-int v1, p3, p1

    .line 469
    sub-int v2, p4, p2

    .line 470
    goto :goto_0

    .line 475
    :pswitch_4
    move v1, p2

    .line 476
    sub-int v2, p4, p1

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getDestPosition(IILandroid/graphics/Rect;II)[I
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "dstRect"
    .parameter "enterOrientation"
    .parameter "rotateOrientation"

    .prologue
    .line 401
    const/4 v0, 0x0

    .local v0, dx:I
    const/4 v1, 0x0

    .line 402
    .local v1, dy:I
    invoke-direct {p0, p4, p5}, Lcom/android/camera/ui/RotateControl;->calculateFactor(II)I

    move-result v2

    .line 403
    .local v2, factor:I
    packed-switch v2, :pswitch_data_0

    .line 443
    :goto_0
    :pswitch_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    .line 406
    :pswitch_1
    move v0, p1

    .line 407
    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v3

    .line 408
    goto :goto_0

    .line 411
    :pswitch_2
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, p2

    .line 412
    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v3

    .line 413
    goto :goto_0

    .line 416
    :pswitch_3
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, p2

    .line 417
    move v1, p1

    .line 418
    goto :goto_0

    .line 423
    :pswitch_4
    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, p1

    .line 424
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, p2

    .line 425
    goto :goto_0

    .line 428
    :pswitch_5
    move v0, p2

    .line 429
    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, p1

    .line 430
    goto :goto_0

    .line 433
    :pswitch_6
    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v3

    .line 434
    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, p1

    .line 435
    goto :goto_0

    .line 438
    :pswitch_7
    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v3

    .line 439
    move v1, p2

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDestRegion([Landroid/graphics/Rect;IIII)[Landroid/graphics/Rect;
    .locals 17
    .parameter "srcRects"
    .parameter "enterOrientation"
    .parameter "rotateOrientation"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 101
    :cond_0
    const/4 v6, 0x0

    .line 173
    :cond_1
    :goto_0
    return-object v6

    .line 102
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v6, v0, [Landroid/graphics/Rect;

    .line 103
    .local v6, dstRects:[Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateControl;->getImageRotateAngle(II)I

    move-result v11

    .line 104
    .local v11, rotateAngle:I
    sget v5, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 110
    .local v5, cameraId:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateControl;->calculateScreenSize(III)[I

    move-result-object v13

    .line 112
    .local v13, size:[I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_4

    .line 113
    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 115
    :sswitch_0
    move-object/from16 v6, p1

    .line 116
    goto :goto_0

    .line 118
    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateControl;->getScreenOrientation(I)B

    move-result v12

    .line 119
    .local v12, scrOri:B
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v12, v0, :cond_3

    const/16 v16, 0x1

    aget v15, v13, v16

    .line 121
    .local v15, width:I
    :goto_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 122
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    .line 123
    .local v9, left:I
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 124
    .local v14, top:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v10, v9, v16

    .line 125
    .local v10, right:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v4, v14, v16

    .line 126
    .local v4, bottom:I
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v14, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v16, v6, v8

    .line 121
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 119
    .end local v4           #bottom:I
    .end local v8           #i:I
    .end local v9           #left:I
    .end local v10           #right:I
    .end local v14           #top:I
    .end local v15           #width:I
    :cond_3
    const/16 v16, 0x0

    aget v15, v13, v16

    goto :goto_1

    .line 130
    .end local v12           #scrOri:B
    :sswitch_2
    const/16 v16, 0x1

    aget v15, v13, v16

    .line 131
    .restart local v15       #width:I
    const/16 v16, 0x0

    aget v7, v13, v16

    .line 132
    .local v7, height:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 133
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    .line 134
    .restart local v9       #left:I
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v14, v7, v16

    .line 135
    .restart local v14       #top:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v10, v9, v16

    .line 136
    .restart local v10       #right:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v4, v14, v16

    .line 137
    .restart local v4       #bottom:I
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v14, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v16, v6, v8

    .line 132
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 141
    .end local v4           #bottom:I
    .end local v7           #height:I
    .end local v8           #i:I
    .end local v9           #left:I
    .end local v10           #right:I
    .end local v14           #top:I
    .end local v15           #width:I
    :sswitch_3
    const/16 v16, 0x1

    aget v15, v13, v16

    .line 142
    .restart local v15       #width:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 143
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 144
    .restart local v9       #left:I
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    .line 145
    .restart local v14       #top:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v10, v9, v16

    .line 146
    .restart local v10       #right:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v4, v14, v16

    .line 147
    .restart local v4       #bottom:I
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v14, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v16, v6, v8

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 152
    .end local v4           #bottom:I
    .end local v8           #i:I
    .end local v9           #left:I
    .end local v10           #right:I
    .end local v14           #top:I
    .end local v15           #width:I
    :cond_4
    if-nez v5, :cond_1

    .line 153
    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_0

    .line 155
    :sswitch_4
    move-object/from16 v6, p1

    .line 156
    goto/16 :goto_0

    .line 160
    :sswitch_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateControl;->getScreenOrientation(I)B

    move-result v12

    .line 161
    .restart local v12       #scrOri:B
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v12, v0, :cond_5

    const/16 v16, 0x1

    aget v15, v13, v16

    .line 163
    .restart local v15       #width:I
    :goto_5
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 164
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    .line 165
    .restart local v9       #left:I
    aget-object v16, p1, v8

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 166
    .restart local v14       #top:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v10, v9, v16

    .line 167
    .restart local v10       #right:I
    aget-object v16, p1, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v4, v14, v16

    .line 168
    .restart local v4       #bottom:I
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v14, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v16, v6, v8

    .line 163
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 161
    .end local v4           #bottom:I
    .end local v8           #i:I
    .end local v9           #left:I
    .end local v10           #right:I
    .end local v14           #top:I
    .end local v15           #width:I
    :cond_5
    const/16 v16, 0x0

    aget v15, v13, v16

    goto :goto_5

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 153
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public getImageRotateAngle(II)I
    .locals 6
    .parameter "enterOrientation"
    .parameter "rotateOrientation"

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0xb4

    const/16 v3, 0x5a

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, angle:I
    sget v1, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 185
    .local v1, cameraId:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 186
    sparse-switch p1, :sswitch_data_0

    .line 224
    const/4 v0, 0x0

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 188
    :sswitch_0
    if-eqz p2, :cond_1

    if-ne p2, v4, :cond_2

    .line 190
    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    .line 191
    :cond_2
    if-eq p2, v3, :cond_3

    if-ne p2, v5, :cond_0

    .line 193
    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 197
    :sswitch_1
    if-eqz p2, :cond_4

    if-ne p2, v4, :cond_5

    .line 199
    :cond_4
    const/16 v0, 0xb4

    goto :goto_0

    .line 200
    :cond_5
    if-eq p2, v3, :cond_6

    if-ne p2, v5, :cond_0

    .line 202
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :sswitch_2
    if-eqz p2, :cond_7

    if-ne p2, v4, :cond_8

    .line 208
    :cond_7
    const/16 v0, 0x10e

    goto :goto_0

    .line 209
    :cond_8
    if-eq p2, v3, :cond_9

    if-ne p2, v5, :cond_0

    .line 211
    :cond_9
    const/16 v0, 0x5a

    goto :goto_0

    .line 215
    :sswitch_3
    if-eqz p2, :cond_a

    if-ne p2, v4, :cond_b

    .line 217
    :cond_a
    const/16 v0, 0xb4

    goto :goto_0

    .line 218
    :cond_b
    if-eq p2, v3, :cond_c

    if-ne p2, v5, :cond_0

    .line 220
    :cond_c
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_d
    if-nez v1, :cond_0

    .line 228
    sparse-switch p1, :sswitch_data_1

    .line 242
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :sswitch_4
    const/16 v0, 0x5a

    .line 231
    goto :goto_0

    .line 233
    :sswitch_5
    const/4 v0, 0x0

    .line 234
    goto :goto_0

    .line 236
    :sswitch_6
    const/16 v0, 0x5a

    .line 237
    goto :goto_0

    .line 239
    :sswitch_7
    const/4 v0, 0x0

    .line 240
    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 228
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public getJpgAngle(II)I
    .locals 4
    .parameter "enterOrientation"
    .parameter "rotateOrientation"

    .prologue
    const/16 v3, 0x10e

    const/16 v2, 0xb4

    const/16 v1, 0x5a

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, angle:I
    sparse-switch p1, :sswitch_data_0

    .line 297
    const/4 v0, 0x0

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 253
    :sswitch_0
    if-nez p2, :cond_1

    .line 254
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_1
    if-ne p2, v1, :cond_2

    .line 256
    const/16 v0, 0x10e

    goto :goto_0

    .line 257
    :cond_2
    if-ne p2, v3, :cond_3

    .line 258
    const/16 v0, 0x5a

    goto :goto_0

    .line 259
    :cond_3
    if-ne p2, v2, :cond_0

    .line 260
    const/16 v0, 0xb4

    goto :goto_0

    .line 264
    :sswitch_1
    if-nez p2, :cond_4

    .line 265
    const/16 v0, 0x10e

    goto :goto_0

    .line 266
    :cond_4
    if-ne p2, v1, :cond_5

    .line 267
    const/16 v0, 0xb4

    goto :goto_0

    .line 268
    :cond_5
    if-ne p2, v2, :cond_6

    .line 269
    const/16 v0, 0x5a

    goto :goto_0

    .line 270
    :cond_6
    if-ne p2, v3, :cond_0

    .line 271
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :sswitch_2
    if-nez p2, :cond_7

    .line 276
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_7
    if-ne p2, v1, :cond_8

    .line 278
    const/16 v0, 0x10e

    goto :goto_0

    .line 279
    :cond_8
    if-ne p2, v2, :cond_9

    .line 280
    const/16 v0, 0xb4

    goto :goto_0

    .line 281
    :cond_9
    if-ne p2, v3, :cond_0

    .line 282
    const/16 v0, 0x5a

    goto :goto_0

    .line 286
    :sswitch_3
    if-nez p2, :cond_a

    .line 287
    const/16 v0, 0x10e

    goto :goto_0

    .line 288
    :cond_a
    if-ne p2, v1, :cond_b

    .line 289
    const/16 v0, 0xb4

    goto :goto_0

    .line 290
    :cond_b
    if-ne p2, v2, :cond_c

    .line 291
    const/16 v0, 0x5a

    goto :goto_0

    .line 292
    :cond_c
    if-ne p2, v3, :cond_0

    .line 293
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getMarvellImageAngle(II)I
    .locals 4
    .parameter "enterOrientation"
    .parameter "rotateOrientation"

    .prologue
    const/16 v3, 0xb4

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, angle:I
    sget v1, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 306
    .local v1, cameraId:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 307
    sparse-switch p1, :sswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 310
    :sswitch_0
    if-eqz p2, :cond_1

    if-ne p2, v3, :cond_2

    .line 312
    :cond_1
    const/16 v0, -0x5a

    goto :goto_0

    .line 313
    :cond_2
    const/16 v2, 0x10e

    if-eq p2, v2, :cond_3

    const/16 v2, 0x5a

    if-ne p2, v2, :cond_0

    .line 315
    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 320
    :sswitch_1
    if-eqz p2, :cond_4

    if-ne p2, v3, :cond_0

    .line 322
    :cond_4
    const/16 v0, 0xb4

    goto :goto_0

    .line 325
    :cond_5
    if-nez v1, :cond_0

    .line 326
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 333
    :sswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 329
    :sswitch_3
    const/4 v0, 0x0

    .line 330
    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 326
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getScreenOrientation(I)B
    .locals 1
    .parameter "orientation"

    .prologue
    .line 377
    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 378
    :cond_0
    const/16 v0, 0xa

    .line 379
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xb

    goto :goto_0
.end method
