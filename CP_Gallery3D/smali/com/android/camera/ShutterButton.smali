.class public Lcom/android/camera/ShutterButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ShutterButton$OnShutterButtonListener;,
        Lcom/android/camera/ShutterButton$ShutterMode;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z

.field private mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/android/camera/ShutterButton$ShutterMode;->PHOTO:Lcom/android/camera/ShutterButton$ShutterMode;

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    .line 84
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 85
    if-nez v0, :cond_1

    .line 107
    new-instance v1, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 116
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    .line 118
    :cond_0
    return-void

    .line 114
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public getShutterMode()Lcom/android/camera/ShutterButton$ShutterMode;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 129
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    .line 132
    :cond_0
    return v0
.end method

.method public pointerInViewArea(FF)Z
    .locals 2
    .parameter "localX"
    .parameter "localY"

    .prologue
    const/4 v1, 0x0

    .line 142
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 60
    return-void
.end method

.method public setShutterMode(Lcom/android/camera/ShutterButton$ShutterMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mShutterMode:Lcom/android/camera/ShutterButton$ShutterMode;

    .line 136
    return-void
.end method
