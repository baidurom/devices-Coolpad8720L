.class public Lcom/android/camera/EffectSmileShot$YLFace;
.super Ljava/lang/Object;
.source "EffectSmileShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectSmileShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YLFace"
.end annotation


# instance fields
.field private mBlinkDetected:I

.field private mGazeAngle:I

.field private mLeftEye:Landroid/graphics/Point;

.field private mLeftRightGaze:I

.field private mLeftrightDir:I

.field private mLeyeBlink:I

.field private mMouth:Landroid/graphics/Point;

.field private mRect:Landroid/graphics/Rect;

.field private mReyeBlink:I

.field private mRightEye:Landroid/graphics/Point;

.field private mRollDir:I

.field private mSmileDegree:I

.field private mTopbottomGaze:I

.field private mUpdownDir:I

.field final synthetic this$0:Lcom/android/camera/EffectSmileShot;


# direct methods
.method public constructor <init>(Lcom/android/camera/EffectSmileShot;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->this$0:Lcom/android/camera/EffectSmileShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRect:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeftEye:Landroid/graphics/Point;

    .line 197
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRightEye:Landroid/graphics/Point;

    .line 198
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mMouth:Landroid/graphics/Point;

    .line 200
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mSmileDegree:I

    .line 202
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mGazeAngle:I

    .line 203
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeftRightGaze:I

    .line 207
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mTopbottomGaze:I

    .line 212
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mBlinkDetected:I

    .line 213
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeyeBlink:I

    .line 214
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mReyeBlink:I

    .line 216
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mUpdownDir:I

    .line 217
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeftrightDir:I

    .line 218
    iput v1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRollDir:I

    .line 192
    return-void
.end method


# virtual methods
.method public getMouth()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSmileDegree()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mSmileDegree:I

    return v0
.end method

.method public setBlinkDetected(I)V
    .locals 0
    .parameter "blinkDetected"

    .prologue
    .line 307
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mBlinkDetected:I

    .line 308
    return-void
.end method

.method public setGazeAngle(I)V
    .locals 0
    .parameter "gazeAngle"

    .prologue
    .line 283
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mGazeAngle:I

    .line 284
    return-void
.end method

.method public setLeftEye(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeftEye:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 237
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeftEye:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 238
    return-void
.end method

.method public setLeftEyeBlinkDegree(I)V
    .locals 0
    .parameter "leyeBlink"

    .prologue
    .line 315
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeyeBlink:I

    .line 316
    return-void
.end method

.method public setLeftRightDirection(I)V
    .locals 0
    .parameter "leftrightDir"

    .prologue
    .line 331
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeftrightDir:I

    .line 332
    return-void
.end method

.method public setLeftRightGazeDegree(I)V
    .locals 0
    .parameter "leftrightGaze"

    .prologue
    .line 291
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mLeftRightGaze:I

    .line 292
    return-void
.end method

.method public setMouth(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mMouth:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 263
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mMouth:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 264
    return-void
.end method

.method public setRect(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 222
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 223
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 224
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 225
    return-void
.end method

.method public setRightEye(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRightEye:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 250
    iget-object v0, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRightEye:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 251
    return-void
.end method

.method public setRightEyeBlinkDegree(I)V
    .locals 0
    .parameter "reyeBlink"

    .prologue
    .line 323
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mReyeBlink:I

    .line 324
    return-void
.end method

.method public setRollDirection(I)V
    .locals 0
    .parameter "rollDir"

    .prologue
    .line 347
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mRollDir:I

    .line 348
    return-void
.end method

.method public setSmileDegree(I)V
    .locals 0
    .parameter "smileDegree"

    .prologue
    .line 275
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mSmileDegree:I

    .line 276
    return-void
.end method

.method public setTopBottomGazeDegree(I)V
    .locals 0
    .parameter "topbottomGaze"

    .prologue
    .line 299
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mTopbottomGaze:I

    .line 300
    return-void
.end method

.method public setUpDownDirection(I)V
    .locals 0
    .parameter "updownDir"

    .prologue
    .line 339
    iput p1, p0, Lcom/android/camera/EffectSmileShot$YLFace;->mUpdownDir:I

    .line 340
    return-void
.end method
