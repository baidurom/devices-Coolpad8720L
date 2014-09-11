.class abstract Lcom/yulong/android/cp_utk/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 40
    if-nez p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 49
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.yulong.android.cp_utk"

    const-string v4, "com.yulong.android.cp_utk.UtkLauncherActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz p1, :cond_2

    .line 57
    :goto_1
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v0, "UtkAppInstaller"

    const-string v1, "Could not change UTK app state"

    invoke-static {v0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/s;->a(Landroid/content/Context;Z)V

    .line 37
    return-void
.end method

.method static install(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/s;->a(Landroid/content/Context;Z)V

    .line 33
    return-void
.end method
