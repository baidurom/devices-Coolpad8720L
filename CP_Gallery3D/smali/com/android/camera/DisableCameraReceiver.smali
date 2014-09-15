.class public Lcom/android/camera/DisableCameraReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisableCameraReceiver.java"


# static fields
.field private static final ACTIVITIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.camera.Camera"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.camera.CameraActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.camera.SecureCameraActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "klass"

    .prologue
    .line 92
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    .local v0, name:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 97
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 100
    return-void
.end method

.method private hasCameraByProperty()Z
    .locals 3

    .prologue
    .line 66
    const-string v1, "ro.yulong.camera.none"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, result:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    const-string v2, "DisableCameraReceiver"

    const-string v3, "<<<<<<<<<<<<<<Camera onReceive boot completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0}, Lcom/android/camera/DisableCameraReceiver;->hasCameraByProperty()Z

    move-result v1

    .line 48
    .local v1, needCameraActivity:Z
    if-nez v1, :cond_0

    .line 49
    const-string v2, "DisableCameraReceiver"

    const-string v3, "disable all camera activities"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 51
    sget-object v2, Lcom/android/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/camera/DisableCameraReceiver;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0           #i:I
    :cond_0
    const-string v2, "com.android.camera.DisableCameraReceiver"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/DisableCameraReceiver;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method
