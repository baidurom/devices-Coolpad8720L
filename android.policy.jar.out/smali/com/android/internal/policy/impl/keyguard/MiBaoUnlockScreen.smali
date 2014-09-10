.class public Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "MiBaoUnlockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static mError:Landroid/widget/TextView;

.field private static mPassword:Landroid/widget/TextView;

.field private static wrongCount:I


# instance fields
.field private DBG:Z

.field SystemManager_mSystemInterface:Ljava/lang/Object;

.field private final TAG:Ljava/lang/String;

.field private againGuard:Ljava/lang/String;

.field private digit:I

.field protected mBackSpaceButton:Landroid/view/View;

.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEight:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private mFindPasswodText:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mNine:Landroid/widget/TextView;

.field private mOk:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field private mZero:Landroid/widget/TextView;

.field private noteLaterToInput:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->wrongCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 76
    const-string v3, "mibao"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->TAG:Ljava/lang/String;

    .line 78
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->DBG:Z

    .line 82
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 86
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 105
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->digit:I

    .line 106
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mEnteredDigits:I

    .line 107
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    .line 117
    const-string v3, "GUARD"

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900ed

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    const v3, 0x10203f5

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 123
    const-string v3, "MiBaoUnlockScreen"

    const-string v4, " it is doing mibao layout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "...............................fangdao background is "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1080644

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->LC_FLAG_YL_FULLSCREEN()I

    move-result v2

    .line 143
    .local v2, mKeyguardFlag:I
    if-eqz v2, :cond_0

    .line 144
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->getStatusBarHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    :cond_0
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v2           #mKeyguardFlag:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x10405d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->noteLaterToInput:Ljava/lang/String;

    .line 171
    const v3, 0x10203e6

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    .line 172
    const v3, 0x10203e8

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    .line 173
    const v3, 0x10203ea

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    .line 174
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    const v3, 0x10203e9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 176
    const v3, 0x1020382

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mZero:Landroid/widget/TextView;

    .line 177
    const v3, 0x1020379

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mOne:Landroid/widget/TextView;

    .line 178
    const v3, 0x102037a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    .line 179
    const v3, 0x102037b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mThree:Landroid/widget/TextView;

    .line 180
    const v3, 0x102037c

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFour:Landroid/widget/TextView;

    .line 181
    const v3, 0x102037d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFive:Landroid/widget/TextView;

    .line 182
    const v3, 0x102037e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mSix:Landroid/widget/TextView;

    .line 183
    const v3, 0x102037f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    .line 184
    const v3, 0x1020380

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mEight:Landroid/widget/TextView;

    .line 185
    const v3, 0x1020381

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mNine:Landroid/widget/TextView;

    .line 186
    const v3, 0x10203ef

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 187
    const v3, 0x10203f0

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mOk:Landroid/widget/TextView;

    .line 188
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mZero:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mOne:Landroid/widget/TextView;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mThree:Landroid/widget/TextView;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFour:Landroid/widget/TextView;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFive:Landroid/widget/TextView;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mSix:Landroid/widget/TextView;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    const-string v4, "7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mEight:Landroid/widget/TextView;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mNine:Landroid/widget/TextView;

    const-string v4, "9"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 199
    const-string v3, "FETCH_PASSWD"

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, fetchHadMethod:Ljava/lang/String;
    const-string v3, "mibao"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".............................fetchHadMethod="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .end local v1           #fetchHadMethod:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mZero:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mOne:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mTwo:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mThree:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFour:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFive:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mSix:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mSeven:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$9;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$9;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mEight:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$10;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$10;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mNine:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$11;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$11;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$12;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$12;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$13;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$13;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mOk:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$14;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$14;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MiBaoUnlockScreen"

    const-string v4, "MiBao background is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fetchHadMethod:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFlags(I)V

    .line 206
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->digit:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->digit:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->asyncCheckPassword()V

    return-void
.end method

.method static synthetic access$400()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->wrongCount:I

    return p0
.end method

.method private asyncCheckPassword()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x7530

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 525
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v6, :cond_2

    .line 526
    const-string v6, "FangdaoUnlockScreen"

    const-string v7, "........................fangdao mKeyguardMediator != null 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v6, v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 531
    :goto_0
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, password:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, correctPassword:Ljava/lang/String;
    const-string v6, "mibao"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "correctPassword is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 536
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->showFangdao(Ljava/lang/String;)I

    move-result v3

    .line 537
    .local v3, isShow:I
    const-string v6, "MiBaoUnlockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isShow= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-nez v3, :cond_3

    .line 539
    const-string v6, "MiBaoUnlockScreen"

    const-string v7, "showFangdao(password) == 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 541
    sput-boolean v9, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isRebootPassPattern:Z

    .line 542
    invoke-virtual {p0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v6, :cond_0

    .line 544
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->refreshStatusBarLocked()V

    .line 546
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "yulong.intent.action.resetDefaultWidgets"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "resetDefaultWidget"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 548
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 549
    const-string v6, "FangdaoUnlockScreen"

    const-string v7, "....................................................is Unlock"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isShow:I
    :cond_1
    :goto_1
    return-void

    .line 529
    .end local v0           #correctPassword:Ljava/lang/String;
    .end local v5           #password:Ljava/lang/String;
    :cond_2
    const-string v6, "FangdaoUnlockScreen"

    const-string v7, "........................fangdao mKeyguardMediator == null 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 552
    .restart local v0       #correctPassword:Ljava/lang/String;
    .restart local v3       #isShow:I
    .restart local v5       #password:Ljava/lang/String;
    :cond_3
    const-string v6, "MiBaoUnlockScreen"

    const-string v7, "showFangdao(password) != 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->wrongCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->wrongCount:I

    .line 554
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 556
    sget v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->wrongCount:I

    rsub-int/lit8 v4, v6, 0x3

    .line 557
    .local v4, leftChance:I
    if-lez v4, :cond_4

    .line 558
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    const v7, 0x10405d2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, hint:Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 560
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 563
    .end local v1           #hint:Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 564
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->noteLaterToInput:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$15;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$15;-><init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V

    invoke-virtual {v6, v7, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private getPassword()Ljava/lang/String;
    .locals 5

    .prologue
    .line 503
    const-string v1, ""

    .line 504
    .local v1, password:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 510
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 512
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemManager_getSecurityManagerPassword(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 519
    :goto_0
    return-object v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "mibao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in onCreate, getSysteminterface error,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showFangdao(Ljava/lang/String;)I
    .locals 5
    .parameter "isShow"

    .prologue
    .line 594
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemInterfaceFactory_getSysteminterface()Ljava/lang/Object;

    move-result-object v2

    .line 595
    .local v2, systemInterface:Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->ISystemInterface_validateKeyguardSecurityPass(Ljava/lang/Object;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 600
    .end local v2           #systemInterface:Ljava/lang/Object;
    :goto_0
    return v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MiBaoUnlockScreen"

    const-string v4, "MiBao showFangdao() is exception.............."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 409
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 413
    return-void
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 427
    const/4 v1, -0x1

    .line 428
    .local v1, statuBarHeight:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 429
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x105000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 431
    const-string v2, "mibao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".......................................statuBarHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 438
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 458
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 425
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 607
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 608
    if-eqz p1, :cond_0

    .line 609
    const-string v0, "MiBaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-void

    .line 613
    :cond_0
    const-string v0, "MiBaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 0
    .parameter "viewMediatorCallback"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 674
    return-void
.end method

.method public showWrongInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    sget v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->wrongCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 587
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 588
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->noteLaterToInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_0
    return-void
.end method
