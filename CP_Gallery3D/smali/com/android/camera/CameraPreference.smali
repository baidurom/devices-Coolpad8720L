.class public abstract Lcom/android/camera/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    }
.end annotation


# instance fields
.field bVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v3, p0, Lcom/android/camera/CameraPreference;->bVisible:Z

    .line 45
    iput-object p1, p0, Lcom/android/camera/CameraPreference;->mContext:Landroid/content/Context;

    .line 46
    sget-object v1, Lcom/android/gallery3d/R$styleable;->CameraPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraPreference;->mTitle:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/CameraPreference;->bVisible:Z

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/CameraPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract reloadValue()V
.end method
