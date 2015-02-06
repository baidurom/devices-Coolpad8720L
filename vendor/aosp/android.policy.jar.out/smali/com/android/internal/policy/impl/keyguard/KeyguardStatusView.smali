.class public Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field public static final BATTERY_LOW_ICON:I = 0x0

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = true

.field public static final LOCK_ICON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"

.field private static isShowDate:Z

.field public static keyguardMessage:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

.field private static mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAppointCityDate:Ljava/lang/CharSequence;

.field private mAppointCityDateTv:Landroid/widget/TextView;

.field private mAppointCityName:Ljava/lang/String;

.field private mAppointCityNameTv:Landroid/widget/TextView;

.field private mAppointCityTime:Ljava/lang/CharSequence;

.field private mAppointCityTimeTv:Landroid/widget/TextView;

.field private mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

.field private mDateFormatString:Ljava/lang/CharSequence;

.field private mDateView:Landroid/widget/TextView;

.field private mDoubleClockView:Landroid/widget/FrameLayout;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsDualNetWork:Z

.field private mKeyguardStatusArea:Landroid/widget/LinearLayout;

.field private mLocalCityDate:Ljava/lang/CharSequence;

.field private mLocalCityDateTv:Landroid/widget/TextView;

.field private mLocalCityName:Ljava/lang/String;

.field private mLocalCityNameTv:Landroid/widget/TextView;

.field private mLocalCityTine:Ljava/lang/CharSequence;

.field private mLocalCityTineTv:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 140
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mIsDualNetWork:Z

    return p1
.end method

.method private maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v0, :cond_1

    .line 265
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_1
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public changeVisibilityView(Z)V
    .locals 3
    .parameter "isDualNetWork"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mKeyguardStatusArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDoubleClockView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mKeyguardStatusArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDoubleClockView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 306
    .local v0, scale:F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 248
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 254
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 255
    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    const v13, 0x10202e1

    const/4 v12, 0x0

    const/high16 v11, 0x4160

    const/4 v10, 0x1

    .line 144
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 146
    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x1040068

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormatString:Ljava/lang/CharSequence;

    .line 148
    const v7, 0x1020063

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    .line 149
    const v7, 0x10202e2

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 150
    const v7, 0x10202e5

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/ClockView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    .line 152
    invoke-virtual {p0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mKeyguardStatusArea:Landroid/widget/LinearLayout;

    .line 153
    const v7, 0x10203d8

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityNameTv:Landroid/widget/TextView;

    .line 154
    const v7, 0x10203dc

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityNameTv:Landroid/widget/TextView;

    .line 156
    const v7, 0x10203d9

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityTineTv:Landroid/widget/TextView;

    .line 157
    const v7, 0x10203dd

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityTimeTv:Landroid/widget/TextView;

    .line 159
    const v7, 0x10203da

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityDateTv:Landroid/widget/TextView;

    .line 160
    const v7, 0x10203de

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityDateTv:Landroid/widget/TextView;

    .line 163
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 166
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 168
    const v7, 0x10203d6

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDoubleClockView:Landroid/widget/FrameLayout;

    .line 171
    const/4 v7, 0x2

    new-array v4, v7, [Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    aput-object v7, v4, v12

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v7, v4, v10

    .line 172
    .local v4, marqueeViews:[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v4

    if-ge v1, v7, :cond_1

    .line 173
    aget-object v6, v4, v1

    .line 174
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 175
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find widget at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 177
    :cond_0
    invoke-virtual {v6, v10}, Landroid/view/View;->setSelected(Z)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v6           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 180
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mKeyguardStatusArea:Landroid/widget/LinearLayout;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const v7, 0x10203a3

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->keyguardMessage:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    .line 182
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->keyguardMessage:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    if-eqz v7, :cond_2

    .line 183
    const-string v7, "KeyguardStatusView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keyguardMessage != null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->keyguardMessage:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1
    invoke-virtual {p0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 190
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .local v0, clockViewLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    .local v2, keyguardStatusViewAreaLp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v7, "KeyguardStatusView"

    const-string v8, "ClockView.isShowSuperDateTime == false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/high16 v8, 0x4282

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 205
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/high16 v8, 0x4180

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 206
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 207
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getInstance()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->ShowDataTime()Z

    move-result v7

    sput-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->isShowDate:Z

    .line 212
    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->isShowDate:Z

    if-eqz v7, :cond_3

    .line 213
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const-string v7, "KeyguardStatusView"

    const-string v8, "DateView.ShowDataTime() == true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_2
    return-void

    .line 185
    .end local v0           #clockViewLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #keyguardStatusViewAreaLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #linearLayout:Landroid/widget/LinearLayout;
    :cond_2
    const-string v7, "KeyguardStatusView"

    const-string v8, "keyguardMessage = null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    .restart local v0       #clockViewLp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2       #keyguardStatusViewAreaLp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3       #linearLayout:Landroid/widget/LinearLayout;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const-string v7, "KeyguardStatusView"

    const-string v8, "DateView.ShowDataTime() == false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshDate()V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshAlarmStatus()V

    .line 227
    return-void
.end method

.method refreshAlarmStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const v2, 0x108002e

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormatString:Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 310
    sput-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 311
    return-void
.end method

.method public updateDoubleClockInfo(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "localCityName"
    .parameter "localCityTime"
    .parameter "localCityDate"
    .parameter "appointCityName"
    .parameter "appointCityTime"
    .parameter "appointCityDate"

    .prologue
    const/16 v7, 0xff

    const/high16 v6, 0x41f0

    const/high16 v5, 0x4170

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x3c

    .line 286
    .local v0, string1Lenth:I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v1, v2, 0x3c

    .line 287
    .local v1, string2Lenth:I
    const-string v2, "KeyguardStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------string1Lenth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "string2Lenth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v2, "KeyguardStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " localCityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "appointCityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-gt v0, v7, :cond_0

    if-le v1, v7, :cond_1

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 296
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityTineTv:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityDateTv:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityTimeTv:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityDateTv:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-void

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLocalCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAppointCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method
