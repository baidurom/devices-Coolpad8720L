.class public Lcom/android/camera/ui/MyTextPreferenceButton;
.super Lcom/android/camera/ui/MyPreferenceButton;
.source "MyTextPreferenceButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;
    }
.end annotation


# instance fields
.field private baseBitmap:Landroid/graphics/Bitmap;

.field bgDrawable:Landroid/graphics/drawable/Drawable;

.field bm:Landroid/graphics/Bitmap;

.field private curText:Ljava/lang/String;

.field imageDrawable:Landroid/graphics/drawable/Drawable;

.field private isCanClickable:Z

.field private mBtnListener:Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;

.field private mClickInterval:J

.field private mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;

.field private mPreClickTime:J

.field mPref:Lcom/android/camera/IconListPreference;

.field private mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field p:Landroid/graphics/Paint;

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/MyPreferenceButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-wide v2, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreClickTime:J

    .line 41
    iput-wide v2, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mClickInterval:J

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->isCanClickable:Z

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->p:Landroid/graphics/Paint;

    .line 50
    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->bm:Landroid/graphics/Bitmap;

    .line 51
    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->curText:Ljava/lang/String;

    .line 52
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->textSize:F

    .line 70
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/android/camera/ui/MyTextPreferenceButton;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/MyTextPreferenceButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->isCanClickable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/ui/CameraLeftBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/MyTextPreferenceButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/ui/MyTextPreferenceButton;->checkClickInterval()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/MyTextPreferenceButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/ui/MyTextPreferenceButton;->updateButtonIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    return-object v0
.end method

.method private checkClickInterval()Z
    .locals 6

    .prologue
    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 292
    .local v0, curr:J
    const-string v2, "MyTextPreferenceButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreClickTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-wide v2, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mClickInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 294
    const/4 v2, 0x0

    .line 297
    :goto_0
    return v2

    .line 296
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreClickTime:J

    .line 297
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private enableBtn(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->isCanClickable:Z

    .line 303
    if-eqz p1, :cond_0

    .line 304
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 305
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 309
    .local v0, IndicatorColor:I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 310
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreClickTime:J

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->bgDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    new-instance v0, Lcom/android/camera/ui/MyTextPreferenceButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MyTextPreferenceButton$1;-><init>(Lcom/android/camera/ui/MyTextPreferenceButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private setClickInterval(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 287
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mClickInterval:J

    .line 288
    return-void
.end method

.method private updateButtonIcon(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/16 v2, 0x96

    .line 181
    if-gez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getMiniIconId()[I

    move-result-object v0

    .line 186
    .local v0, iconIds:[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->baseBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 193
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->baseBitmap:Landroid/graphics/Bitmap;

    .line 205
    :cond_2
    aget v1, v0, p1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->isCanClickable:Z

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 363
    return-void
.end method

.method public onOverrided(Ljava/lang/String;Z)V
    .locals 3
    .parameter "overrideValue"
    .parameter "bEnable"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, index:I
    if-eqz p1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 324
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->updateButtonIcon(I)V

    .line 327
    .end local v0           #index:I
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/MyTextPreferenceButton;->enableBtn(Z)V

    .line 328
    return-void

    .line 322
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onReloaded(Ljava/lang/String;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, index:I
    if-eqz p1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 350
    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->updateButtonIcon(I)V

    .line 353
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public onValueChange(Ljava/lang/String;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, index:I
    if-eqz p1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 337
    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->updateButtonIcon(I)V

    .line 341
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public setBtnClickListener(Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;

    .line 284
    return-void
.end method

.method public setBufferOwner(Lcom/android/camera/ui/CameraLeftBar;)V
    .locals 0
    .parameter "ower"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 59
    return-void
.end method

.method public setDefaultIcon(Lcom/android/camera/ComboPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 137
    const-string v1, "pref_camera_capturemode_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "none"

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, value:Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    return-void

    .line 142
    .restart local v0       #value:Ljava/lang/String;
    :cond_2
    const-string v1, "beautyshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 144
    :cond_3
    const-string v1, "smileshutter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 146
    :cond_4
    const-string v1, "bestpick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 148
    :cond_5
    const-string v1, "self_capture_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 150
    :cond_6
    const-string v1, "self_capture_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 152
    :cond_7
    const-string v1, "nightshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 154
    :cond_8
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 156
    :cond_9
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 158
    :cond_a
    const-string v1, "trajectory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 160
    :cond_b
    const-string v1, "removebackgroud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 162
    :cond_c
    const-string v1, "gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->imageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/MyPreferenceButton;->setOrientation(IZ)V

    .line 77
    return-void
.end method

.method public setPreference(Lcom/android/camera/IconListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->setClickInterval(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->updateButtonIcon(I)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->enableBtn(Z)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->enableBtn(Z)V

    goto :goto_0
.end method

.method public setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 3
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 239
    iput-object p1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 240
    if-eqz p1, :cond_1

    .line 241
    if-eqz p2, :cond_3

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->setClickInterval(I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->updateButtonIcon(I)V

    .line 249
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->enableBtn(Z)V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/ui/MyTextPreferenceButton;->enableBtn(Z)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/camera/PreferenceGroup;->getInvisibleCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 257
    invoke-direct {p0, v2}, Lcom/android/camera/ui/MyTextPreferenceButton;->enableBtn(Z)V

    goto :goto_0

    .line 259
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->enableBtn(Z)V

    goto :goto_0
.end method

.method public setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 280
    return-void
.end method
