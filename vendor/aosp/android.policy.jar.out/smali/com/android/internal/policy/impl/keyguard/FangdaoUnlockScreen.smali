.class public Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "FangdaoUnlockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field static final KEYBOARD_STATE_FULL:I = 0x0

.field static final KEYBOARD_STATE_LEFT:I = 0x1

.field static final KEYBOARD_STATE_RIGHT:I = 0x2

.field private static isShow:I

.field private static mPasswordStr:Ljava/lang/String;

.field private static wrongCount:I


# instance fields
.field private DBG:Z

.field SystemManager_mSystemInterface:Ljava/lang/Object;

.field private final TAG:Ljava/lang/String;

.field private againGuard:Ljava/lang/String;

.field private digit:I

.field protected mBackSpaceButton:Landroid/view/View;

.field private mCancelButtonf:Landroid/widget/TextView;

.field private mCancelButtonl:Landroid/widget/TextView;

.field private mCancelButtonr:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mCurHalfKeyboardState:I

.field mCurKeyboardState:I

.field private mEightf:Landroid/widget/TextView;

.field private mEightl:Landroid/widget/TextView;

.field private mEightr:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private mError:Landroid/widget/TextView;

.field private mFindPasswodText:Landroid/widget/TextView;

.field private mFivef:Landroid/widget/TextView;

.field private mFivel:Landroid/widget/TextView;

.field private mFiver:Landroid/widget/TextView;

.field private mFourf:Landroid/widget/TextView;

.field private mFourl:Landroid/widget/TextView;

.field private mFourr:Landroid/widget/TextView;

.field mFullScreen:Landroid/widget/LinearLayout;

.field mFullScreenBt:Landroid/view/View;

.field private mGetKeyboardState:Ljava/lang/String;

.field mHalfScreenBt:Landroid/view/View;

.field mLeftButton:Landroid/view/View;

.field mLeftScreen:Landroid/widget/LinearLayout;

.field private mNinef:Landroid/widget/TextView;

.field private mNinel:Landroid/widget/TextView;

.field private mNiner:Landroid/widget/TextView;

.field private mOkf:Landroid/widget/TextView;

.field private mOkl:Landroid/widget/TextView;

.field private mOkr:Landroid/widget/TextView;

.field mOnFinishInflateFinished:Z

.field private mOnef:Landroid/widget/TextView;

.field private mOnel:Landroid/widget/TextView;

.field private mOner:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field mPinDelete:Landroid/view/View;

.field mPreKeyboardState:I

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field mRightButton:Landroid/view/View;

.field mRightScreen:Landroid/widget/LinearLayout;

.field private mSaveCurKeyboardState:Ljava/lang/String;

.field private mSevenf:Landroid/widget/TextView;

.field private mSevenl:Landroid/widget/TextView;

.field private mSevenr:Landroid/widget/TextView;

.field private mSixf:Landroid/widget/TextView;

.field private mSixl:Landroid/widget/TextView;

.field private mSixr:Landroid/widget/TextView;

.field private mState:I

.field private mThreef:Landroid/widget/TextView;

.field private mThreel:Landroid/widget/TextView;

.field private mThreer:Landroid/widget/TextView;

.field private mTwof:Landroid/widget/TextView;

.field private mTwol:Landroid/widget/TextView;

.field private mTwor:Landroid/widget/TextView;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field public mWallpaperManager:Landroid/app/WallpaperManager;

.field private mZerof:Landroid/widget/TextView;

.field private mZerol:Landroid/widget/TextView;

.field private mZeror:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput v0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->wrongCount:I

    .line 68
    sput v0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->isShow:I

    .line 120
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPasswordStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v9, 0x102037a

    const v8, 0x1020379

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 62
    const-string v3, "fangdao"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->TAG:Ljava/lang/String;

    .line 63
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->DBG:Z

    .line 66
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 71
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 124
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->digit:I

    .line 125
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEnteredDigits:I

    .line 129
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    .line 130
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    .line 131
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    .line 137
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnFinishInflateFinished:Z

    .line 738
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurKeyboardState:I

    .line 739
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPreKeyboardState:I

    .line 740
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurHalfKeyboardState:I

    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    .line 149
    const-string v3, "GUARD"

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->againGuard:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900ec

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    const v3, 0x10203e2

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 163
    :try_start_0
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "...............................fangdao background is "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v4, 0x1080644

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->LC_FLAG_YL_FULLSCREEN()I

    move-result v2

    .line 166
    .local v2, mKeyguardFlag:I
    if-eqz v2, :cond_0

    .line 167
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->getStatusBarHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    :cond_0
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2           #mKeyguardFlag:I
    :goto_0
    const v3, 0x10203e6

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    .line 185
    const v3, 0x10203e8

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    .line 187
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPasswordStr:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPasswordStr:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPasswordStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 190
    :cond_1
    const v3, 0x10203ea

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    .line 191
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    const v3, 0x10203e9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 193
    const v3, 0x10203ee

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    .line 194
    const v3, 0x10203f1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    .line 195
    const v3, 0x10203f3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    .line 199
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 200
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020382

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZerof:Landroid/widget/TextView;

    .line 201
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnef:Landroid/widget/TextView;

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwof:Landroid/widget/TextView;

    .line 203
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreef:Landroid/widget/TextView;

    .line 204
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourf:Landroid/widget/TextView;

    .line 205
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFivef:Landroid/widget/TextView;

    .line 206
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixf:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenf:Landroid/widget/TextView;

    .line 208
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020380

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightf:Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020381

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNinef:Landroid/widget/TextView;

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x10203ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCancelButtonf:Landroid/widget/TextView;

    .line 211
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    const v4, 0x10203f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOkf:Landroid/widget/TextView;

    .line 212
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZerof:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnef:Landroid/widget/TextView;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwof:Landroid/widget/TextView;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreef:Landroid/widget/TextView;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourf:Landroid/widget/TextView;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFivef:Landroid/widget/TextView;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixf:Landroid/widget/TextView;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenf:Landroid/widget/TextView;

    const-string v4, "7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightf:Landroid/widget/TextView;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNinef:Landroid/widget/TextView;

    const-string v4, "9"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZerof:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnef:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwof:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreef:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourf:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFivef:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixf:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenf:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightf:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$9;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$9;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNinef:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$10;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$10;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCancelButtonf:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$11;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$11;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOkf:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$12;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$12;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 351
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020382

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZerol:Landroid/widget/TextView;

    .line 352
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnel:Landroid/widget/TextView;

    .line 353
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwol:Landroid/widget/TextView;

    .line 354
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreel:Landroid/widget/TextView;

    .line 355
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourl:Landroid/widget/TextView;

    .line 356
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFivel:Landroid/widget/TextView;

    .line 357
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixl:Landroid/widget/TextView;

    .line 358
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenl:Landroid/widget/TextView;

    .line 359
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020380

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightl:Landroid/widget/TextView;

    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020381

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNinel:Landroid/widget/TextView;

    .line 361
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x10203ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCancelButtonl:Landroid/widget/TextView;

    .line 362
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    const v4, 0x10203f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOkl:Landroid/widget/TextView;

    .line 363
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZerol:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnel:Landroid/widget/TextView;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwol:Landroid/widget/TextView;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreel:Landroid/widget/TextView;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourl:Landroid/widget/TextView;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFivel:Landroid/widget/TextView;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixl:Landroid/widget/TextView;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenl:Landroid/widget/TextView;

    const-string v4, "7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightl:Landroid/widget/TextView;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNinel:Landroid/widget/TextView;

    const-string v4, "9"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZerol:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$13;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$13;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnel:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$14;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$14;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwol:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$15;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$15;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreel:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$16;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$16;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourl:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$17;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$17;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFivel:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$18;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$18;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixl:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$19;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$19;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenl:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$20;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$20;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightl:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$21;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$21;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNinel:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$22;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$22;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCancelButtonl:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$23;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$23;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOkl:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$24;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$24;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 502
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020382

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZeror:Landroid/widget/TextView;

    .line 503
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOner:Landroid/widget/TextView;

    .line 504
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwor:Landroid/widget/TextView;

    .line 505
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreer:Landroid/widget/TextView;

    .line 506
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourr:Landroid/widget/TextView;

    .line 507
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFiver:Landroid/widget/TextView;

    .line 508
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixr:Landroid/widget/TextView;

    .line 509
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x102037f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenr:Landroid/widget/TextView;

    .line 510
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020380

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightr:Landroid/widget/TextView;

    .line 511
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x1020381

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNiner:Landroid/widget/TextView;

    .line 512
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x10203ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCancelButtonr:Landroid/widget/TextView;

    .line 513
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    const v4, 0x10203f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOkr:Landroid/widget/TextView;

    .line 514
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZeror:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOner:Landroid/widget/TextView;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwor:Landroid/widget/TextView;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreer:Landroid/widget/TextView;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourr:Landroid/widget/TextView;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFiver:Landroid/widget/TextView;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixr:Landroid/widget/TextView;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenr:Landroid/widget/TextView;

    const-string v4, "7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightr:Landroid/widget/TextView;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNiner:Landroid/widget/TextView;

    const-string v4, "9"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mZeror:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$25;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$25;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOner:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$26;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$26;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mTwor:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$27;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$27;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mThreer:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$28;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$28;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFourr:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$29;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$29;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFiver:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$30;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$30;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSixr:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$31;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$31;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSevenr:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$32;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$32;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mEightr:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$33;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$33;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mNiner:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$34;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$34;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCancelButtonr:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$35;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$35;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOkr:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$36;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$36;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$37;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$37;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 666
    const-string v3, "FETCH_PASSWD"

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, fetchHadMethod:Ljava/lang/String;
    const-string v3, "FangdaoUnlockScreen"

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

    .line 668
    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 669
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 687
    .end local v1           #fetchHadMethod:Ljava/lang/String;
    :cond_6
    :goto_1
    const v3, 0x10203ec

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreenBt:Landroid/view/View;

    .line 688
    const v3, 0x10203ed

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mHalfScreenBt:Landroid/view/View;

    .line 689
    const v3, 0x10202d1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPinDelete:Landroid/view/View;

    .line 690
    const v3, 0x10203ee

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    .line 691
    const v3, 0x10203f1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    .line 692
    const v3, 0x10203f3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    .line 693
    const v3, 0x10203f4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightButton:Landroid/view/View;

    .line 694
    const v3, 0x10203f2

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftButton:Landroid/view/View;

    .line 695
    const-string v3, "persist.sys.keyboard.setting"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mGetKeyboardState:Ljava/lang/String;

    .line 696
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mGetKeyboardState:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mState:I

    .line 697
    const-string v3, "fangdao"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "....................onFinishInflate.mState ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mState:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->setKeyboardState(I)V

    .line 699
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreenBt:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$39;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$39;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mHalfScreenBt:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$40;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$40;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightButton:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$41;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$41;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftButton:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$42;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$42;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnFinishInflateFinished:Z

    .line 723
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "fangdao background is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fetchHadMethod:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 673
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFindPasswodText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$38;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen$38;-><init>(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->digit:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->digit:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-object p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPasswordStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$284(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPasswordStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPasswordStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->asyncCheckPassword()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 904
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_2

    .line 905
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "........................fangdao mKeyguardMediator != null 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const-wide/16 v4, 0x7530

    invoke-interface {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 910
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, password:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, correctPassword:Ljava/lang/String;
    const-string v3, "fangdao"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "correctPassword is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 915
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->showFangdao(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->isShow:I

    .line 916
    const-string v3, "FangdaoUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShow= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->isShow:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sget v3, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->isShow:I

    if-nez v3, :cond_3

    .line 918
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "showFangdao(password) == 0 is done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 920
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isFangdaoPattern:Z

    .line 921
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 922
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->refreshStatusBarLocked()V

    .line 925
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.resetDefaultWidgets"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "resetDefaultWidget"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 927
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 928
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "....................................................is Unlock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 908
    .end local v0           #correctPassword:Ljava/lang/String;
    .end local v2           #password:Ljava/lang/String;
    :cond_2
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "........................fangdao mKeyguardMediator == null 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 930
    .restart local v0       #correctPassword:Ljava/lang/String;
    .restart local v2       #password:Ljava/lang/String;
    :cond_3
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "showFangdao(password) != 0 is done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->showInfoError()V

    goto :goto_1
.end method

.method private getPassword()Ljava/lang/String;
    .locals 5

    .prologue
    .line 882
    const-string v1, ""

    .line 883
    .local v1, password:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 889
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->GlobalKeys_SYS_SERVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    .line 891
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->SystemManager_mSystemInterface:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemManager_getSecurityManagerPassword(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 898
    :goto_0
    return-object v1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "fangdao"

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
    .locals 6
    .parameter "isShow"

    .prologue
    .line 947
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->SystemInterfaceFactory_getSysteminterface()Ljava/lang/Object;

    move-result-object v2

    .line 948
    .local v2, systemInterface:Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/YLClassProxy;->ISystemInterface_validateKeyguardSecurityPass(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 949
    .local v1, showType:I
    const-string v3, "FangdaoUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fangdao showType=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    .end local v1           #showType:I
    .end local v2           #systemInterface:Ljava/lang/Object;
    :goto_0
    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FangdaoUnlockScreen"

    const-string v4, "Fangdao showFangdao() is exception.............."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showInfoError()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 938
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10405d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, hint:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->isShow:I

    rsub-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 783
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 787
    return-void
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 859
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 874
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 789
    const/4 v1, -0x1

    .line 790
    .local v1, statuBarHeight:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 791
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x105000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 793
    const-string v2, "fangdao"

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

    .line 794
    return v1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 844
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 849
    sget v0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->isShow:I

    if-eqz v0, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->showInfoError()V

    .line 854
    :goto_0
    return-void

    .line 852
    :cond_0
    const-string v0, "FangdaoUnlockScreen"

    const-string v1, "onResume() isShow ==0 is done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mOnFinishInflateFinished:Z

    if-nez v0, :cond_0

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->setKeyboardSetButton()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 958
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 959
    if-eqz p1, :cond_0

    .line 960
    const-string v0, "FangdaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_0
    return-void

    .line 962
    :cond_0
    const-string v0, "FangdaoUnlockScreen"

    const-string v1, "onWindowFocusChanged hasWindowFocus is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setKeyboardSetButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreenBt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mHalfScreenBt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurKeyboardState:I

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mHalfScreenBt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreenBt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setKeyboardState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 742
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurKeyboardState:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurKeyboardState:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mPreKeyboardState:I

    .line 746
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurKeyboardState:I

    .line 747
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurKeyboardState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSaveCurKeyboardState:Ljava/lang/String;

    .line 748
    const-string v0, "fangdao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".......................mSaveCurKeyboardState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSaveCurKeyboardState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v0, "persist.sys.keyboard.setting"

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mSaveCurKeyboardState:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 753
    packed-switch p1, :pswitch_data_0

    .line 766
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->setKeyboardSetButton()V

    goto :goto_0

    .line 755
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mFullScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 758
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mLeftScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurHalfKeyboardState:I

    goto :goto_1

    .line 762
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mRightScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mCurHalfKeyboardState:I

    goto :goto_1

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 0
    .parameter "viewMediatorCallback"

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FangdaoUnlockScreen;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 1024
    return-void
.end method
