.class public Lcom/android/camera/ui/BasicSettingGridView;
.super Lcom/android/camera/ui/RotateLayout;
.source "BasicSettingGridView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;,
        Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;,
        Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;,
        Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;,
        Lcom/android/camera/ui/BasicSettingGridView$Orientation;
    }
.end annotation


# instance fields
.field private cursorPosition:I

.field dialog:Lcom/android/camera/ui/RotateDialog;

.field private handler:Landroid/os/Handler;

.field i:I

.field isDisplayed:Z

.field private isEnabled:Z

.field isRotate:Z

.field private mActivity:Lcom/android/camera/CameraActivity;

.field mContext:Landroid/content/Context;

.field mCurOri:Lcom/android/camera/ui/BasicSettingGridView$Orientation;

.field mFaceEffectGridView:Landroid/widget/GridView;

.field protected mFadeIn:Landroid/view/animation/Animation;

.field protected mFadeOut:Landroid/view/animation/Animation;

.field mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

.field private mOrientation:I

.field private mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

.field private mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

.field private mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field private mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

.field private mbLandscape:Z

.field nSpace:I

.field nViewHeight:I

.field nViewWidth:I

.field private orientationComposation:I

.field private overridePosition:I

.field private sharedPrefChanger:Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/BasicSettingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    .line 70
    iput-boolean v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->isDisplayed:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->isRotate:Z

    .line 72
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/ui/BasicSettingGridView;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->nSpace:I

    .line 91
    sget-object v0, Lcom/android/camera/ui/BasicSettingGridView$Orientation;->port:Lcom/android/camera/ui/BasicSettingGridView$Orientation;

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mCurOri:Lcom/android/camera/ui/BasicSettingGridView$Orientation;

    .line 92
    iput v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->i:I

    .line 96
    iput v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->orientationComposation:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->handler:Landroid/os/Handler;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    new-instance v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;-><init>(Lcom/android/camera/ui/BasicSettingGridView;Z)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;-><init>(Lcom/android/camera/ui/BasicSettingGridView;Z)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    .line 186
    iput v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I

    .line 187
    iput v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->cursorPosition:I

    .line 978
    iput-boolean v3, p0, Lcom/android/camera/ui/BasicSettingGridView;->isEnabled:Z

    .line 133
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mContext:Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Lcom/android/camera/ui/BasicSettingGridView;->setScaleInOrOutAnimation()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/BasicSettingGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/BasicSettingGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/BasicSettingGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->orientationComposation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/BasicSettingGridView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/BasicSettingGridView;->createDialogMessageByIndex(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->sharedPrefChanger:Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/MyTextPreferenceButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/BasicSettingGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    return v0
.end method

.method private createDialogMessageByIndex(II)V
    .locals 4
    .parameter "index"
    .parameter "orientation"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/BasicSettingGridView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ui/BasicSettingGridView$2;-><init>(Lcom/android/camera/ui/BasicSettingGridView;II)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 840
    :cond_0
    return-void
.end method

.method private dp2px(I)I
    .locals 2
    .parameter "num"

    .prologue
    .line 153
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initRotateIntroductionView()V
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Lcom/android/camera/ui/RotateDialog;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0f003f

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/RotateDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    .line 819
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateDialog;->onCreate(Landroid/app/Activity;Lcom/android/camera/IconListPreference;)V

    .line 820
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 822
    :cond_0
    return-void
.end method

.method private setAttr(Landroid/app/Dialog;)V
    .locals 3
    .parameter "alertDialog"

    .prologue
    const/4 v2, 0x4

    .line 875
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 876
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 877
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 879
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 883
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 891
    return-void
.end method

.method private setScaleInOrOutAnimation()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mContext:Landroid/content/Context;

    const v1, 0x7f050016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFadeIn:Landroid/view/animation/Animation;

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mContext:Landroid/content/Context;

    const v1, 0x7f050017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFadeOut:Landroid/view/animation/Animation;

    .line 150
    return-void
.end method


# virtual methods
.method public getDisplayStatus()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->isDisplayed:Z

    return v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getPreference()Lcom/android/camera/IconListPreference;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->nViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->nViewWidth:I

    return v0
.end method

.method public hidePupupWindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 566
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 567
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;->onShow(Z)V

    .line 570
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 571
    const/4 v0, 0x1

    .line 575
    :cond_1
    return v0
.end method

.method public hidePupupWindow(Z)Z
    .locals 2
    .parameter "ispaused"

    .prologue
    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 580
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 581
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 582
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;->onShow(Z)V

    .line 585
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 586
    const/4 v0, 0x1

    .line 593
    :cond_1
    :goto_0
    return v0

    .line 588
    :cond_2
    if-eqz p1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected isInViewDisplayZone(Landroid/view/View;FF)Z
    .locals 9
    .parameter "v"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v5, 0x0

    .line 915
    float-to-int v3, p2

    .line 916
    .local v3, x:I
    float-to-int v4, p3

    .line 917
    .local v4, y:I
    if-ltz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v5

    .line 921
    :cond_1
    if-ltz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 930
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 932
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 934
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 936
    .local v2, pixel:I
    if-eqz v0, :cond_2

    .line 937
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 938
    const/4 v1, 0x0

    .line 939
    const/4 v0, 0x0

    .line 940
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 943
    :cond_2
    const/high16 v6, -0x100

    and-int/2addr v6, v2

    if-eqz v6, :cond_0

    .line 944
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public notifyPreferenceChanged()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 161
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 796
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 797
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    .line 801
    :goto_0
    const v0, 0x7f10002b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    .line 803
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 804
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 806
    return-void

    .line 800
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 184
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 897
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/camera/ui/BasicSettingGridView;->isInViewDisplayZone(Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    invoke-super {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 902
    :goto_0
    return v0

    .line 901
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow(Z)Z

    goto :goto_0
.end method

.method public removeAllCallBack()V
    .locals 6

    .prologue
    .line 980
    iget-object v5, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    if-eqz v5, :cond_0

    .line 981
    iget-object v5, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    invoke-virtual {v5}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->getAllChild()[Ljava/lang/Object;

    move-result-object v0

    .line 982
    .local v0, allChild:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 983
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v1, v2

    .line 984
    .local v3, items:Ljava/lang/Object;
    check-cast v3, Lcom/android/camera/ui/FaceEffectImageView;

    .end local v3           #items:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/android/camera/ui/FaceEffectImageView;->removeAllCallBack()V

    .line 983
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 988
    .end local v0           #allChild:[Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public saveModeEnable()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->isEnabled:Z

    .line 994
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mActivity:Lcom/android/camera/CameraActivity;

    .line 615
    return-void
.end method

.method public setDisplayOrientation(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "mbLandscape"

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    iget v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 743
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    if-eqz v0, :cond_1

    .line 744
    rsub-int p1, p1, 0x10e

    .line 746
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewWidth:I

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemPadding:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 751
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 752
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemVerticalSpace:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 753
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemHorizontalSpace:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 755
    iget-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    if-eqz v0, :cond_4

    .line 756
    invoke-virtual {p0, v6, v4}, Lcom/android/camera/ui/BasicSettingGridView;->setOrientation(IZ)V

    .line 757
    iput v6, p0, Lcom/android/camera/ui/BasicSettingGridView;->orientationComposation:I

    .line 789
    :cond_3
    :goto_0
    return-void

    .line 760
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/android/camera/ui/BasicSettingGridView;->setOrientation(IZ)V

    .line 761
    iput p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->orientationComposation:I

    goto :goto_0

    .line 765
    :cond_5
    if-eq p1, v6, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    .line 766
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 767
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewWidth:I

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemPadding:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 770
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 771
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemVerticalSpace:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 772
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOrientationArguments:[Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemHorizontalSpace:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 773
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 774
    iget-boolean v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z

    if-eqz v0, :cond_7

    .line 775
    rsub-int v0, p1, 0x168

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->orientationComposation:I

    .line 776
    rsub-int v0, p1, 0x168

    add-int/lit8 v0, v0, -0x5a

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/ui/BasicSettingGridView;->setOrientation(IZ)V

    goto :goto_0

    .line 779
    :cond_7
    iput p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->orientationComposation:I

    .line 782
    invoke-virtual {p0, p1, v4}, Lcom/android/camera/ui/BasicSettingGridView;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public setDisplayStatus(Z)V
    .locals 0
    .parameter "display"

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->isDisplayed:Z

    .line 514
    return-void
.end method

.method public setIsLandscape(Z)V
    .locals 0
    .parameter "isLandScape"

    .prologue
    .line 671
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 619
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 641
    return-void
.end method

.method public setOwnedBtn(Lcom/android/camera/ui/MyTextPreferenceButton;)V
    .locals 0
    .parameter "mFaceEffectBtn"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    .line 813
    return-void
.end method

.method public setPreferListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "preferListener"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 458
    return-void
.end method

.method public setPreference(Lcom/android/camera/IconListPreference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 475
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    .line 476
    const-string v0, "BasicSettingGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPref :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->sharedPrefChanger:Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;

    if-nez v0, :cond_4

    .line 479
    new-instance v0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;-><init>(Lcom/android/camera/ui/BasicSettingGridView;Lcom/android/camera/IconListPreference;)V

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->sharedPrefChanger:Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;

    .line 483
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_1

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    if-nez v0, :cond_2

    .line 488
    new-instance v0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;-><init>(Lcom/android/camera/ui/BasicSettingGridView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->refreshPreference(Lcom/android/camera/IconListPreference;)V

    .line 492
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/BasicSettingGridView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BasicSettingGridView$1;-><init>(Lcom/android/camera/ui/BasicSettingGridView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    invoke-direct {p0}, Lcom/android/camera/ui/BasicSettingGridView;->initRotateIntroductionView()V

    .line 501
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/BasicSettingGridView;->isEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;Z)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MyTextPreferenceButton;->setPreference(Lcom/android/camera/IconListPreference;)V

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->sharedPrefChanger:Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->setPref(Lcom/android/camera/IconListPreference;)V

    goto :goto_1
.end method

.method public setRotateDegree(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 522
    return-void
.end method

.method public setRotateStatus(Z)V
    .locals 0
    .parameter "rotate"

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->isRotate:Z

    .line 526
    return-void
.end method

.method public setSettingShowListener(Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    .line 166
    return-void
.end method

.method public showPopupWindow()V
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 545
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mGridViewAdapter:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 550
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView;->mFaceEffectGridView:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method
