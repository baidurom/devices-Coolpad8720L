.class public Lcom/android/camera/ui/AmbilightView;
.super Landroid/widget/FrameLayout;
.source "AmbilightView.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AmbilightView$AmbilightImage;,
        Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;
    }
.end annotation


# static fields
.field static mPreviewRect:Landroid/graphics/Rect;


# instance fields
.field mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

.field public mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

.field mCancelButton:Lcom/android/camera/ShutterButton;

.field mContentView:Landroid/widget/FrameLayout;

.field mContext:Landroid/content/Context;

.field mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

.field private mHandler:Landroid/os/Handler;

.field mMax:I

.field mSaveButton:Lcom/android/camera/ShutterButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/AmbilightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/camera/ui/AmbilightView;->mMax:I

    .line 150
    new-instance v0, Lcom/android/camera/ui/AmbilightView$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/AmbilightView$3;-><init>(Lcom/android/camera/ui/AmbilightView;)V

    iput-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mHandler:Landroid/os/Handler;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AmbilightView;->initView(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/AmbilightView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/ui/AmbilightView;->showAmbilightView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/AmbilightView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initAmbilightImage()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 109
    new-instance v1, Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    iget-object v2, p0, Lcom/android/camera/ui/AmbilightView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/AmbilightView$AmbilightImage;-><init>(Lcom/android/camera/ui/AmbilightView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    .line 110
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v0, fp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 116
    return-void
.end method

.method private initGuageView()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GuageIndicatorContainer;->setControlCallback(Lcom/android/camera/ui/GuageIndicatorContainer$IndicatorControlCallback;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    iget v1, p0, Lcom/android/camera/ui/AmbilightView;->mMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setMaxValue(I)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setGuageGravity(I)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GuageIndicatorContainer;->generateIndicator(I)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    sget v1, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    sget v2, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/GuageIndicatorContainer;->setOrientation(II)V

    .line 107
    return-void
.end method

.method private showAmbilightView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    return-void
.end method


# virtual methods
.method public cleanView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    invoke-virtual {v0}, Lcom/android/camera/ui/AmbilightView$AmbilightImage;->cleanView()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    iput-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mContentView:Landroid/widget/FrameLayout;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mSaveButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mSaveButton:Lcom/android/camera/ShutterButton;

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mCancelButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mCancelButton:Lcom/android/camera/ShutterButton;

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    .line 236
    :cond_5
    return-void
.end method

.method initView(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/AmbilightView;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 91
    const v0, 0x7f100005

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mContentView:Landroid/widget/FrameLayout;

    .line 92
    const v0, 0x7f100008

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mSaveButton:Lcom/android/camera/ShutterButton;

    .line 93
    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mCancelButton:Lcom/android/camera/ShutterButton;

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 96
    const v0, 0x7f100006

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GuageIndicatorContainer;

    iput-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    .line 97
    invoke-direct {p0}, Lcom/android/camera/ui/AmbilightView;->initGuageView()V

    .line 98
    invoke-direct {p0}, Lcom/android/camera/ui/AmbilightView;->initAmbilightImage()V

    .line 99
    return-void
.end method

.method public onGuageValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;->onValueChanged(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public onIdle(Z)V
    .locals 0
    .parameter "idle"

    .prologue
    .line 149
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100008

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    invoke-interface {v0}, Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;->onSaveClick()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100009

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    invoke-interface {v0}, Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;->onCancelClick()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 129
    return-void
.end method

.method public postAmbilightImage([III)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightImage:Lcom/android/camera/ui/AmbilightView$AmbilightImage;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/AmbilightView$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ui/AmbilightView$2;-><init>(Lcom/android/camera/ui/AmbilightView;[III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setGuageValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView;->mGuageIndicator:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GuageIndicatorContainer;->setValue(I)V

    .line 119
    return-void
.end method

.method public setOnAmbilightListener(Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/AmbilightView;->mAmbilightListener:Lcom/android/camera/ui/AmbilightView$OnAmbilightListener;

    .line 50
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 86
    sput-object p1, Lcom/android/camera/ui/AmbilightView;->mPreviewRect:Landroid/graphics/Rect;

    .line 87
    return-void
.end method
