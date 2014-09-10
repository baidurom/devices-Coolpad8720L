.class public Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;
.super Ljava/lang/Object;
.source "TouchProtectScreen.java"


# static fields
.field private static final CANCEL_TOUCH_PROTECT_SCREEN_ACTION:Ljava/lang/String; = "yulong.intent.action.cancel_touchProtectScreen"

.field private static final INIT:I = 0x4

.field private static final SET_VIEW:I = 0x5

.field private static mKeyguardFlag:I


# instance fields
.field private mBitmapPath:Ljava/lang/String;

.field private mCancleProtectScreentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field mHasInit:Z

.field mHasShow:Z

.field mHideByUser:Z

.field mKeyguardShowing:Z

.field mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

.field mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMySensorEventListener:Landroid/hardware/SensorEventListener;

.field mProximitySensor:Landroid/hardware/Sensor;

.field mRegisterSensorListener:Z

.field mScreenOn:Z

.field mSensorBeCovered:Z

.field mSensorManager:Landroid/hardware/SensorManager;

.field mSmallKeyguardModeEnable:Z

.field private mView:Landroid/widget/FrameLayout;

.field mViewShow:Z

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardFlag:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V
    .locals 2
    .parameter "keyguardViewMediator"
    .parameter "keyguardViewManager"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mBitmapPath:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mViewShow:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardShowing:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mRegisterSensorListener:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mScreenOn:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasInit:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHideByUser:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasShow:Z

    .line 121
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHandler:Landroid/os/Handler;

    .line 257
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$2;-><init>(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mMySensorEventListener:Landroid/hardware/SensorEventListener;

    .line 277
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$3;-><init>(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mCancleProtectScreentReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .line 57
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 58
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->handleInit()V

    return-void
.end method

.method private handleInit()V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v8, 0x1

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mWindowManager:Landroid/view/WindowManager;

    .line 139
    const/16 v4, 0x8

    .line 140
    .local v4, flags:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->LC_FLAG_YL_FULLSCREEN()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardFlag:I

    .line 141
    const-string v0, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".....................................mKeyguardFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardFlag:I

    if-eqz v0, :cond_0

    .line 143
    sget v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardFlag:I

    or-int/2addr v4, v0

    .line 145
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 151
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mView:Landroid/widget/FrameLayout;

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mView:Landroid/widget/FrameLayout;

    const-string v1, "TouchProtectScreen"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mProximitySensor:Landroid/hardware/Sensor;

    .line 159
    const-string v0, "persist.sys.hallsensor.switch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, state:Ljava/lang/String;
    const-string v0, "TouchProtectScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..............................state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    .line 166
    :goto_0
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasInit:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 168
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "yulong.intent.action.cancel_touchProtectScreen"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mCancleProtectScreentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void

    .line 164
    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    goto :goto_0
.end method

.method private initBeforeShow()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setTouchProtectScreenBackground()V

    .line 244
    return-void
.end method

.method private setTouchProtectScreenBackground()V
    .locals 6

    .prologue
    const v5, 0x10807a7

    .line 246
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 247
    .local v1, typedValue:Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 248
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, curStr:Ljava/lang/String;
    const-string v2, "TouchProtectScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " curStr == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const-string v2, "TouchProtectScreen"

    const-string v3, " !curStr.equals(mBitmapPath)  is done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mBitmapPath:Ljava/lang/String;

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public handleSetView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    const-string v1, "TouchProtectScreen"

    const-string v2, "..............................handleSetView() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mistouch_prevention_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, open:I
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................open2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mSensorBeCovered2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mSmallKeyguardModeEnable2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mHideByUser2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHideByUser:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mHasShow2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mViewShow2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mViewShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-ne v0, v5, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHideByUser:Z

    if-nez v1, :cond_1

    .line 221
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mViewShow:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasShow:Z

    if-nez v1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->initBeforeShow()V

    .line 223
    const-string v1, "TouchProtectScreen"

    const-string v2, "..............................addView is done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mViewShow:Z

    .line 226
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasShow:Z

    .line 227
    const-string v1, "yulong.sys.homekey.disable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHideByUser:Z

    .line 239
    const-string v1, "TouchProtectScreen"

    const-string v2, "..............................handleSetView() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 231
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mViewShow:Z

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "TouchProtectScreen"

    const-string v2, "..............................removeView is done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 234
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mViewShow:Z

    .line 235
    const-string v1, "yulong.sys.homekey.disable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardShowing:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setSensorListener()V

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 86
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void
.end method

.method public screenOff()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasShow:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mScreenOn:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setSensorListener()V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 101
    return-void
.end method

.method public screenOn()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "TouchProtectScreen"

    const-string v1, ".............screenOn().........................."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mScreenOn:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setSensorListener()V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 93
    return-void
.end method

.method public setSensorListener()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 175
    const-string v1, "TouchProtectScreen"

    const-string v2, "..............................setSensorListener() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mistouch_prevention_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, open:I
    if-ne v0, v6, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mScreenOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    if-nez v1, :cond_2

    .line 179
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mRegisterSensorListener:Z

    if-nez v1, :cond_0

    .line 180
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mMySensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mMySensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 187
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mRegisterSensorListener:Z

    .line 188
    const-string v1, "TouchProtectScreen"

    const-string v2, "sensor enable "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    :goto_0
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................open1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mScreenOn1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mKeyguardShowing1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mSmallKeyguardModeEnable1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mSensorBeCovered1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, "TouchProtectScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..............................mRegisterSensorListener ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mRegisterSensorListener:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "TouchProtectScreen"

    const-string v2, "..............................setSensorListener() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_1
    return-void

    .line 184
    :cond_1
    const-string v1, "TouchProtectScreen"

    const-string v2, "mMySensorEventListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mRegisterSensorListener:Z

    if-eqz v1, :cond_0

    .line 192
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorBeCovered:Z

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mMySensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mMySensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 196
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mRegisterSensorListener:Z

    .line 197
    const-string v1, "TouchProtectScreen"

    const-string v2, "sensor disable "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setView()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHasInit:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mKeyguardShowing:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setSensorListener()V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 78
    return-void
.end method

.method public smallKeyguardModeDisable()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setSensorListener()V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 116
    return-void
.end method

.method public smallKeyguardModeEnable()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mSmallKeyguardModeEnable:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setSensorListener()V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 109
    return-void
.end method
