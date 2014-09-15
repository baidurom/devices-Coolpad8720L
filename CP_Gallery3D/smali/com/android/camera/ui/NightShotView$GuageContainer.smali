.class Lcom/android/camera/ui/NightShotView$GuageContainer;
.super Landroid/widget/FrameLayout;
.source "NightShotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/NightShotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuageContainer"
.end annotation


# instance fields
.field mGuageView:Lcom/android/camera/ui/NightShotView$GuageView;


# virtual methods
.method public setMaxValue(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView$GuageContainer;->mGuageView:Lcom/android/camera/ui/NightShotView$GuageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/NightShotView$GuageView;->setMaxValue(I)V

    .line 222
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/NightShotView$GuageContainer;->mGuageView:Lcom/android/camera/ui/NightShotView$GuageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/NightShotView$GuageView;->setValue(I)V

    .line 225
    return-void
.end method
