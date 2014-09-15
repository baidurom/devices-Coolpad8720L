.class public Lcom/android/camera/ui/RotateListLayout;
.super Landroid/view/ViewGroup;
.source "RotateListLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected LayoutType:I

.field private mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

.field protected mArrowInScreenOffsetX:I

.field protected mArrowInScreenOffsetY:I

.field private mListArea:Landroid/widget/LinearLayout;

.field private mMatrix:Landroid/graphics/Matrix;

.field protected mOrientation:I

.field protected mbLandscape:Z

.field protected rotateType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mMatrix:Landroid/graphics/Matrix;

    .line 44
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    .line 47
    iput v1, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetX:I

    .line 48
    iput v1, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetY:I

    .line 58
    iput v1, p0, Lcom/android/camera/ui/RotateListLayout;->LayoutType:I

    .line 59
    iput v1, p0, Lcom/android/camera/ui/RotateListLayout;->rotateType:I

    .line 67
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 70
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    goto :goto_0
.end method


# virtual methods
.method public TranslationByLayoutBottom(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 291
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 292
    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 294
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 298
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 302
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 306
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    sub-int v1, p2, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 292
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public TranslationByLayoutLeft(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 225
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 228
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 232
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 236
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 240
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public TranslationByLayoutRight(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 247
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 248
    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 250
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 254
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    sub-int v1, p1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 258
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 262
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public TranslationByLayoutTop(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 269
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 272
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 276
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 280
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 284
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 270
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public TranslationByLayoutType(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 201
    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->LayoutType:I

    .line 202
    .local v0, TranslationType:I
    iget v1, p0, Lcom/android/camera/ui/RotateListLayout;->LayoutType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/ui/RotateListLayout;->LayoutType:I

    if-nez v1, :cond_1

    .line 203
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v1, :cond_2

    .line 204
    const/4 v0, 0x5

    .line 208
    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_1
    :pswitch_0
    return-void

    .line 206
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateListLayout;->TranslationByLayoutLeft(II)V

    goto :goto_1

    .line 213
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateListLayout;->TranslationByLayoutRight(II)V

    goto :goto_1

    .line 216
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateListLayout;->TranslationByLayoutTop(II)V

    goto :goto_1

    .line 219
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateListLayout;->TranslationByLayoutBottom(II)V

    goto :goto_1

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 483
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v2, :cond_0

    .line 484
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 507
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 488
    .local v1, w:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 489
    .local v0, h:I
    iget v2, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 503
    :goto_1
    iget v2, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 504
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 491
    :sswitch_0
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 494
    :sswitch_1
    int-to-float v2, v0

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 497
    :sswitch_2
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 500
    :sswitch_3
    int-to-float v2, v1

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 458
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v2, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 460
    .local v1, w:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 461
    .local v0, h:I
    iget v2, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 475
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/RotateListLayout;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 476
    iget-object v2, p0, Lcom/android/camera/ui/RotateListLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v2}, Lcom/android/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 478
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 463
    .restart local v0       #h:I
    .restart local v1       #w:I
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/RotateListLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 466
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/RotateListLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 469
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/RotateListLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 472
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/RotateListLayout;->mMatrix:Landroid/graphics/Matrix;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 461
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .parameter "location"
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 532
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 539
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    .line 159
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v0, :cond_0

    .line 320
    iget v6, p0, Lcom/android/camera/ui/RotateListLayout;->LayoutType:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/RotateListLayout;->setLayoutTypeOnLandscape(ZIIIII)V

    .line 342
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v6, p0, Lcom/android/camera/ui/RotateListLayout;->LayoutType:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/RotateListLayout;->setLayoutTypeOnPortrait(ZIIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 168
    .local v5, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 170
    .local v1, height:I
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0, v6, p1, p1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 175
    iget-boolean v6, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v6, :cond_0

    .line 176
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v5, v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 178
    .local v3, listWidthSpec:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 179
    .local v2, listHeightSpec:I
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v3, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 188
    :goto_0
    const/4 v4, 0x0

    .local v4, w:I
    const/4 v0, 0x0

    .line 190
    .local v0, h:I
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 191
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 193
    invoke-virtual {p0, v5, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 195
    invoke-virtual {p0, v4, v0}, Lcom/android/camera/ui/RotateListLayout;->TranslationByLayoutType(II)V

    .line 196
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    .line 197
    return-void

    .line 181
    .end local v0           #h:I
    .end local v2           #listHeightSpec:I
    .end local v3           #listWidthSpec:I
    .end local v4           #w:I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 182
    .restart local v3       #listWidthSpec:I
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v1, v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 184
    .restart local v2       #listHeightSpec:I
    iget-object v6, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v3, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public setLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/camera/ui/RotateListLayout;->LayoutType:I

    .line 79
    return-void
.end method

.method public setLayoutTypeOnLandscape(ZIIIII)V
    .locals 12
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "layoutType"

    .prologue
    .line 402
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 403
    .local v3, Indecatorwidth:I
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 404
    .local v2, Indecatorheight:I
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 405
    .local v7, Listwidth:I
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 407
    .local v6, Listheight:I
    sub-int v4, p5, p3

    .line 409
    .local v4, Layoutheight:I
    iget v8, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetY:I

    sub-int v0, v8, p3

    .line 410
    .local v0, ArrowOffsetY:I
    const/4 v5, 0x0

    .line 412
    .local v5, ListYOffset:I
    if-nez p6, :cond_0

    .line 413
    iget-boolean v8, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v8, :cond_1

    .line 414
    const/16 p6, 0x5

    .line 419
    :cond_0
    :goto_0
    packed-switch p6, :pswitch_data_0

    .line 452
    :goto_1
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    const/4 v9, 0x0

    div-int/lit8 v10, v2, 0x2

    sub-int v10, v0, v10

    div-int/lit8 v11, v2, 0x2

    add-int/2addr v11, v0

    invoke-virtual {v8, v9, v10, v3, v11}, Landroid/view/View;->layout(IIII)V

    .line 453
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    add-int v9, v7, v3

    add-int v10, v6, v5

    invoke-virtual {v8, v3, v5, v9, v10}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 454
    return-void

    .line 416
    :cond_1
    const/16 p6, 0x1

    goto :goto_0

    .line 421
    :pswitch_0
    const/4 v5, 0x0

    .line 422
    goto :goto_1

    .line 426
    :pswitch_1
    if-lt v6, v4, :cond_2

    .line 427
    const/4 v5, 0x0

    goto :goto_1

    .line 429
    :cond_2
    sub-int v5, v4, v6

    .line 430
    goto :goto_1

    .line 441
    :pswitch_2
    div-int/lit8 v1, v6, 0x2

    .line 442
    .local v1, HalfListHeight:I
    if-gt v0, v1, :cond_3

    .line 443
    const/4 v5, 0x0

    goto :goto_1

    .line 445
    :cond_3
    sub-int v8, v4, v0

    if-ge v1, v8, :cond_4

    .line 446
    sub-int v5, v0, v1

    goto :goto_1

    .line 448
    :cond_4
    sub-int v5, v4, v6

    goto :goto_1

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutTypeOnPortrait(ZIIIII)V
    .locals 12
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "layoutType"

    .prologue
    .line 345
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 346
    .local v3, Indecatorwidth:I
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 347
    .local v2, Indecatorheight:I
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 348
    .local v7, Listwidth:I
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 349
    .local v6, Listheight:I
    sub-int v4, p4, p2

    .line 351
    .local v4, Layoutwidth:I
    iget v8, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetX:I

    sub-int v0, v8, p2

    .line 353
    .local v0, ArrowOffsetX:I
    const/4 v5, 0x0

    .line 355
    .local v5, ListXOffset:I
    if-nez p6, :cond_0

    .line 356
    iget-boolean v8, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v8, :cond_1

    .line 357
    const/16 p6, 0x5

    .line 362
    :cond_0
    :goto_0
    packed-switch p6, :pswitch_data_0

    .line 397
    :goto_1
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mAllowIndecator:Lcom/android/camera/ui/RotateImageView;

    div-int/lit8 v9, v3, 0x2

    sub-int v9, v0, v9

    const/4 v10, 0x0

    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v0

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/view/View;->layout(IIII)V

    .line 398
    iget-object v8, p0, Lcom/android/camera/ui/RotateListLayout;->mListArea:Landroid/widget/LinearLayout;

    add-int v9, v7, v5

    add-int v10, v6, v2

    invoke-virtual {v8, v5, v2, v9, v10}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 399
    return-void

    .line 359
    :cond_1
    const/16 p6, 0x1

    goto :goto_0

    .line 364
    :pswitch_0
    const/4 v5, 0x0

    .line 365
    goto :goto_1

    .line 368
    :pswitch_1
    if-lt v4, v7, :cond_2

    .line 369
    sub-int v5, v4, v7

    goto :goto_1

    .line 371
    :cond_2
    const/4 v5, 0x0

    .line 372
    goto :goto_1

    .line 383
    :pswitch_2
    if-lt v4, v7, :cond_5

    .line 384
    div-int/lit8 v1, v7, 0x2

    .line 385
    .local v1, HalfListWidth:I
    if-ge v0, v1, :cond_3

    .line 386
    const/4 v5, 0x0

    goto :goto_1

    .line 388
    :cond_3
    sub-int v8, v4, v0

    if-ge v1, v8, :cond_4

    .line 389
    sub-int v5, v0, v1

    goto :goto_1

    .line 391
    :cond_4
    sub-int v5, v4, v7

    goto :goto_1

    .line 394
    .end local v1           #HalfListWidth:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 520
    rem-int/lit16 p1, p1, 0x168

    .line 521
    iget v0, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/RotateListLayout;->mOrientation:I

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method
