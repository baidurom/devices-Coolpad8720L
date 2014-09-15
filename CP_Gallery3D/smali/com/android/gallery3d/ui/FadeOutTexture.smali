.class public Lcom/android/gallery3d/ui/FadeOutTexture;
.super Lcom/android/gallery3d/ui/FadeTexture;
.source "FadeOutTexture.java"


# instance fields
.field private final mTexture:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FadeTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/FadeOutTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeOutTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 40
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 42
    :cond_0
    return-void
.end method
