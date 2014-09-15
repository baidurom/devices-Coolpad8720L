.class public Lcom/android/camera/ui/CameraSwitchFaceContainer;
.super Landroid/widget/FrameLayout;
.source "CameraSwitchFaceContainer.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;
.implements Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraSwitchFaceContainer$1;,
        Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;,
        Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;
    }
.end annotation


# instance fields
.field private iPassOrientation:I

.field private mBestPickHandler:Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;

.field private mCancelButton:Lcom/android/camera/ShutterButton;

.field private mContext:Landroid/content/Context;

.field private mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

.field mFaceCount:I

.field mFaceIndex:I

.field mFaceSwitchAction:B

.field private mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressContainer:Landroid/widget/FrameLayout;

.field mProgressLayout:Landroid/widget/LinearLayout;

.field private mProgressText:Landroid/widget/TextView;

.field private mSaveButton:Lcom/android/camera/ShutterButton;

.field private mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

.field mSwapIndex:I

.field private mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->iPassOrientation:I

    .line 87
    const/16 v0, 0x1f

    iput-byte v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchAction:B

    .line 88
    iput v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    .line 89
    iput v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapIndex:I

    .line 90
    iput v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceCount:I

    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->init()V

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CameraSwitchFaceContainer;)Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    return-object v0
.end method

.method private createProgressBar()V
    .locals 13

    .prologue
    .line 177
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    const/16 v11, 0x23

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v7

    .line 178
    .local v7, textWidth:I
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    const/16 v11, 0x23

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v6

    .line 179
    .local v6, textHeight:I
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    .line 180
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    new-instance v4, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v4, minTv:Landroid/widget/TextView;
    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 184
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const-string v10, ""

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/high16 v10, 0x4170

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    const v11, 0x7f04005c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 192
    .local v8, view:Landroid/view/View;
    const v10, 0x7f10011a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 193
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 194
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 195
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    const/16 v11, 0x118

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 196
    .local v1, barWidth:I
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 197
    .local v0, barHeight:I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .restart local v5       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 199
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressText:Landroid/widget/TextView;

    .line 203
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressText:Landroid/widget/TextView;

    const/high16 v11, 0x4170

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressText:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    .restart local v5       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    const/16 v11, 0x15e

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v9

    .line 210
    .local v9, width:I
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    const/16 v11, 0x28

    invoke-static {v10, v11}, Lcom/android/camera/Util;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 211
    .local v3, height:I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v2, fp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressContainer:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    iget-object v10, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->rotateProgressBar()V

    .line 222
    return-void
.end method

.method private detectValidArea(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 469
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 470
    .local v0, area:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 471
    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 472
    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 473
    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 474
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 475
    .local v1, isValid:Z
    return v1
.end method

.method private getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 430
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 431
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 432
    return-object v0
.end method

.method private getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 437
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 438
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;-><init>(Lcom/android/camera/ui/CameraSwitchFaceContainer;Lcom/android/camera/ui/CameraSwitchFaceContainer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mBestPickHandler:Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;

    .line 146
    invoke-static {}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->getInstance()Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->clear()V

    .line 148
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSwitchFaceView;->enableTouchEvent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    iget v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    iget v3, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->setSelectedIndex(II)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, replaceInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;->swapSwitchFaceView(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->hideFaceSwitchImageView()V

    .line 487
    .end local v0           #replaceInfo:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setFaceSwitchImageParameter()V
    .locals 6

    .prologue
    .line 279
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/Util;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v2

    .line 280
    .local v2, size:[I
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 281
    .local v3, width:I
    div-int/lit8 v4, v3, 0x6

    mul-int/lit8 v1, v4, 0x5

    .line 282
    .local v1, circleWidth:I
    move v0, v1

    .line 283
    .local v0, circleHeight:I
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v4, v1, v0}, Lcom/android/camera/ui/FaceSwitchImageContainer;->setSwitchParams(II)V

    .line 284
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    sget v5, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/FaceSwitchImageContainer;->loadCircleBitmap(I)V

    .line 285
    return-void
.end method

.method private showSwitchButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitchFaceView;->clearSwitchFaceData()V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceSwitchImageContainer;->clear()V

    .line 564
    :cond_1
    return-void
.end method

.method public displayFaceInfo()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-virtual {v1}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->getFaceRects()[Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceView;->displayFaceRect([Landroid/graphics/Rect;)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->showSwitchButton()V

    .line 266
    :cond_0
    return-void
.end method

.method public displaySwitchFaceBitmap([III)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/CameraSwitchFaceView;->displayFaceBitmap([III)V

    .line 250
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    :cond_0
    return-void
.end method

.method public bridge synthetic getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->getHandler()Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mBestPickHandler:Lcom/android/camera/ui/CameraSwitchFaceContainer$BestPickHandler;

    return-object v0
.end method

.method public hideFaceSwitchImageView()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceView;->setTouchMode(B)V

    .line 299
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public onCancelButtonClick()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitchFaceView;->enableTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->refresh()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;->cancel()V

    .line 383
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 123
    const v0, 0x7f10013d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSwitchFaceView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSwitchFaceView;->setSwitchFaceClickListener(Lcom/android/camera/ui/CameraSwitchFaceView$OnSwitchFaceClickListener;)V

    .line 125
    const v0, 0x7f10013e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceSwitchImageContainer;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/FaceSwitchImageContainer;->setSwapImageListener(Lcom/android/camera/ui/FaceSwitchImageContainer$SwapImageListener;)V

    .line 127
    const v0, 0x7f100140

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    .line 128
    const v0, 0x7f100141

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 132
    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressContainer:Landroid/widget/FrameLayout;

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->rotateSwitchButton()V

    .line 135
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->createProgressBar()V

    .line 136
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->setFaceSwitchImageParameter()V

    .line 137
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 346
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;->cancel()V

    .line 349
    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveButtonClick()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceView;->setClearMode(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitchFaceView;->enableTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->refresh()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;->complete()V

    .line 373
    :cond_1
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 519
    :goto_0
    return-void

    .line 513
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->onSaveButtonClick()V

    goto :goto_0

    .line 516
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->onCancelButtonClick()V

    goto :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch 0x7f100140
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 507
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 445
    .local v0, ex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 446
    .local v1, ey:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 466
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 453
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->detectValidArea(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceSwitchImageContainer;->getSwapIndex()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapIndex:I

    .line 459
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->refresh()V

    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rotateProgressBar()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 240
    sget v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 241
    .local v0, passOrientation:I
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 243
    .end local v0           #passOrientation:I
    :cond_0
    return-void
.end method

.method public rotateSwitchButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    sget v0, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 173
    .local v0, rotateOrientation:I
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 175
    return-void
.end method

.method public setActivity(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "CameraSwitchFaceContainer"

    const-string v1, "set activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSwitchFaceView;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setFaceImageData([III)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    iget v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->addDataHolder(I[III)V

    .line 523
    return-void
.end method

.method public setFaceInfo(Ljava/lang/String;)V
    .locals 16
    .parameter "faceInfo"

    .prologue
    .line 525
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v1, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 527
    .local v9, info:[Ljava/lang/String;
    array-length v1, v9

    new-array v7, v1, [I

    .line 528
    .local v7, data:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v1, v9

    if-ge v8, v1, :cond_2

    .line 529
    aget-object v1, v9, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v7, v8

    .line 528
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 531
    :cond_2
    const/4 v1, 0x0

    aget v2, v7, v1

    .line 532
    .local v2, faceIndex:I
    const/4 v1, 0x1

    aget v3, v7, v1

    .line 533
    .local v3, orientation:I
    const/4 v1, 0x2

    aget v4, v7, v1

    .line 534
    .local v4, selected:I
    const/4 v1, 0x3

    aget v5, v7, v1

    .line 536
    .local v5, numRect:I
    new-array v6, v5, [Landroid/graphics/Rect;

    .line 537
    .local v6, swapRects:[Landroid/graphics/Rect;
    const/4 v1, 0x4

    new-array v10, v1, [I

    .line 538
    .local v10, rectData:[I
    const/4 v11, 0x4

    .line 539
    .local v11, step:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    .line 540
    const/4 v1, 0x0

    const/4 v12, 0x4

    invoke-static {v7, v11, v10, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    new-instance v1, Landroid/graphics/Rect;

    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v10, v13

    const/4 v14, 0x2

    aget v14, v10, v14

    const/4 v15, 0x3

    aget v15, v10, v15

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v6, v8

    .line 543
    add-int/lit8 v11, v11, 0x4

    .line 539
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 545
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    if-eqz v1, :cond_0

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mDataHolder:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->addFaceInfo(IIII[Landroid/graphics/Rect;)V

    .line 548
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    goto :goto_0
.end method

.method public setOnSwapDataListener(Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;)V
    .locals 0
    .parameter "swapDataListener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapDataListener:Lcom/android/camera/ui/CameraSwitchFaceContainer$OnSwapDataListener;

    .line 109
    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 302
    if-eqz p1, :cond_0

    const/16 v0, 0x25

    :goto_0
    iput-byte v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchAction:B

    .line 303
    return-void

    .line 302
    :cond_0
    const/16 v0, 0x29

    goto :goto_0
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSwitchFaceView;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 271
    :cond_0
    return-void
.end method

.method public showFaceSwitchImageView(I)V
    .locals 2
    .parameter "faceIndex"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceView;->setTouchMode(B)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceSwitchImageContainer:Lcom/android/camera/ui/FaceSwitchImageContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceSwitchImageContainer;->swapFace(I)V

    .line 292
    :cond_0
    return-void
.end method

.method public showProgressDialog(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 227
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public swapImage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 501
    iput p1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwapIndex:I

    .line 502
    return-void
.end method

.method public switchFaceClick(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 358
    iput p1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    .line 359
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mSwitchFaceView:Lcom/android/camera/ui/CameraSwitchFaceView;

    iget v1, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitchFaceView;->setFocusFaceRegion(I)V

    .line 360
    iget v0, p0, Lcom/android/camera/ui/CameraSwitchFaceContainer;->mFaceIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSwitchFaceContainer;->showFaceSwitchImageView(I)V

    .line 362
    return-void
.end method
