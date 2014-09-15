.class public Lcom/android/camera/ui/MyPreferenceButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "MyPreferenceButton.java"

# interfaces
.implements Lcom/android/camera/ListPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;,
        Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;
    }
.end annotation


# instance fields
.field private FlASH_DRAWABLE_ID:[I

.field private isEnabled:Z

.field private mBtnListener:Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;

.field private mClickInterval:J

.field private mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;

.field private mPreClickTime:J

.field mPref:Lcom/android/camera/IconListPreference;

.field private mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private myIntroductionListener:Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-wide v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreClickTime:J

    .line 28
    iput-wide v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mClickInterval:J

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->isEnabled:Z

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->FlASH_DRAWABLE_ID:[I

    .line 59
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/android/camera/ui/MyPreferenceButton;->init()V

    .line 61
    return-void

    .line 118
    :array_0
    .array-data 0x4
        0x6ft 0x2t 0x2t 0x7ft
        0x71t 0x2t 0x2t 0x7ft
        0x74t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/ui/CameraLeftBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/MyPreferenceButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/ui/MyPreferenceButton;->checkClickInterval()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/MyPreferenceButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIcon(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    return-object v0
.end method

.method private checkClickInterval()Z
    .locals 6

    .prologue
    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 244
    .local v0, curr:J
    const-string v2, "MyPreferenceButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreClickTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-wide v2, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/camera/ui/MyPreferenceButton;->mClickInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 246
    const/4 v2, 0x0

    .line 249
    :goto_0
    return v2

    .line 248
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreClickTime:J

    .line 249
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private enableBtn(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 256
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 257
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 264
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 261
    .local v0, IndicatorColor:I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 262
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreClickTime:J

    .line 68
    new-instance v0, Lcom/android/camera/ui/MyPreferenceButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/MyPreferenceButton$1;-><init>(Lcom/android/camera/ui/MyPreferenceButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method private setClickInterval(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 240
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mClickInterval:J

    .line 241
    return-void
.end method

.method private updateButtonIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 194
    if-gez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v0

    .line 199
    .local v0, iconIds:[I
    if-nez v0, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v0

    .line 202
    :cond_2
    if-nez v0, :cond_3

    .line 203
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 205
    :cond_3
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 206
    aget v1, v0, p1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateButtonIconByResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 191
    return-void
.end method


# virtual methods
.method public onOverrided(Ljava/lang/String;Z)V
    .locals 3
    .parameter "overrideValue"
    .parameter "bEnable"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, index:I
    if-eqz p1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 276
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIcon(I)V

    .line 279
    .end local v0           #index:I
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/MyPreferenceButton;->enableBtn(Z)V

    .line 280
    return-void

    .line 274
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

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
    .line 297
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, index:I
    if-eqz p1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 301
    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIcon(I)V

    .line 304
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->myIntroductionListener:Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->myIntroductionListener:Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;

    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;->sayBtnIntroduction(Landroid/view/View;Lcom/android/camera/IconListPreference;)V

    .line 312
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onValueChange(Ljava/lang/String;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, index:I
    if-eqz p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 289
    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIcon(I)V

    .line 293
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public setBtnClickListener(Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;

    .line 238
    return-void
.end method

.method public setBufferOwner(Lcom/android/camera/ui/CameraLeftBar;)V
    .locals 0
    .parameter "ower"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;

    .line 41
    return-void
.end method

.method public setDefaultIcon(Lcom/android/camera/ComboPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "pref"
    .parameter "key"

    .prologue
    const v4, 0x7f020274

    const v3, 0x7f02026f

    const v2, 0x7f020271

    .line 121
    if-nez p1, :cond_1

    .line 122
    invoke-direct {p0, v2}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    const-string v1, "off"

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, value:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    invoke-direct {p0, v3}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 130
    :cond_2
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    invoke-direct {p0, v2}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 133
    :cond_3
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0, v4}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    goto :goto_0

    .line 136
    .end local v0           #value:Ljava/lang/String;
    :cond_4
    const-string v1, "pref_camera_video_flashmode_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 137
    const-string v1, "off"

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0       #value:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    invoke-direct {p0, v3}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 141
    :cond_5
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    invoke-direct {p0, v2}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 144
    :cond_6
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, v4}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    goto :goto_0

    .line 148
    .end local v0           #value:Ljava/lang/String;
    :cond_7
    const-string v1, "pref_camera_capturemode_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "none"

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .restart local v0       #value:Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 151
    const v1, 0x7f020083

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 153
    :cond_8
    const-string v1, "beautyshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    const v1, 0x7f020041

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 156
    :cond_9
    const-string v1, "bestpick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 157
    const v1, 0x7f02003a

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 159
    :cond_a
    const-string v1, "self_capture_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 160
    const v1, 0x7f02008b

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 162
    :cond_b
    const-string v1, "self_capture_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 163
    const v1, 0x7f02008c

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 165
    :cond_c
    const-string v1, "nightshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 166
    const v1, 0x7f020082

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 168
    :cond_d
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 169
    const v1, 0x7f020050

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 171
    :cond_e
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 172
    const v1, 0x7f020085

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 174
    :cond_f
    const-string v1, "tracksolid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 175
    const v1, 0x7f0200a6

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 177
    :cond_10
    const-string v1, "smartselect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 178
    const v1, 0x7f020096

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    .line 180
    :cond_11
    const-string v1, "gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const v1, 0x7f02004f

    invoke-direct {p0, v1}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIconByResource(I)V

    goto/16 :goto_0
.end method

.method public setIntroductionListener(Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/MyPreferenceButton;->myIntroductionListener:Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;

    .line 49
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 65
    return-void
.end method

.method public setPreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 3
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 210
    iput-object p1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 211
    if-eqz p1, :cond_1

    .line 212
    if-eqz p2, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p0}, Lcom/android/camera/ListPreference;->setOverrideListener(Lcom/android/camera/ListPreference$Listener;)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyPreferenceButton;->setClickInterval(I)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIcon(I)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyPreferenceButton;->enableBtn(Z)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/ui/MyPreferenceButton;->enableBtn(Z)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/camera/PreferenceGroup;->getInvisibleCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 226
    invoke-direct {p0, v2}, Lcom/android/camera/ui/MyPreferenceButton;->enableBtn(Z)V

    goto :goto_0

    .line 228
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/MyPreferenceButton;->enableBtn(Z)V

    goto :goto_0
.end method

.method public setPreferenceListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/camera/ui/MyPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 235
    return-void
.end method
