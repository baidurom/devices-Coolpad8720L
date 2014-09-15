.class public Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;
.super Ljava/lang/Object;
.source "BasicSettingGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BasicSettingGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharedPreferenceChanger"
.end annotation


# instance fields
.field private mPreference:Lcom/android/camera/IconListPreference;

.field final synthetic this$0:Lcom/android/camera/ui/BasicSettingGridView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/BasicSettingGridView;Lcom/android/camera/IconListPreference;)V
    .locals 4
    .parameter
    .parameter "mPreference"

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput-object p2, p0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->mPreference:Lcom/android/camera/IconListPreference;

    .line 956
    const-string v0, "BasicSettingGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>Changer create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v0}, Lcom/android/camera/ui/BasicSettingGridView;->access$1000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v0}, Lcom/android/camera/ui/BasicSettingGridView;->access$1000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_0
    return-void
.end method

.method public setPref(Lcom/android/camera/IconListPreference;)V
    .locals 4
    .parameter "mPref"

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;->mPreference:Lcom/android/camera/IconListPreference;

    .line 964
    const-string v0, "BasicSettingGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>setChanger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void
.end method
