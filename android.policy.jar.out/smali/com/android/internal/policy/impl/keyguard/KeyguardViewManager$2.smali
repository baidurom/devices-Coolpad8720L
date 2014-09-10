.class final Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mOpacity:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 357
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x3

    :goto_1
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;->mOpacity:I

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, top:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$600()I

    move-result v1

    if-nez v1, :cond_1

    .line 363
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$700()I

    move-result v1

    neg-int v0, v1

    .line 365
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 360
    .end local v0           #top:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 379
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 371
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 375
    return-void
.end method
