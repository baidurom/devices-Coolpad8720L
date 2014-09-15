.class Lcom/android/camera/PhotoModule$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3874
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3874
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x5

    const/4 v6, 0x0

    .line 3877
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3878
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3879
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3880
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 3881
    .local v2, isOn:I
    if-eqz v1, :cond_0

    .line 3882
    const-string v3, "status"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3885
    :cond_0
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v4, :cond_2

    .line 3886
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3889
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3890
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 3927
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #isOn:I
    :cond_1
    :goto_0
    return-void

    .line 3892
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #isOn:I
    :cond_2
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_5

    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v5, :cond_5

    .line 3894
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_4

    .line 3896
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3897
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3, v6}, Lcom/android/camera/PhotoModule;->access$10702(Lcom/android/camera/PhotoModule;Z)Z

    .line 3898
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3899
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)V

    .line 3900
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateFlashModeByCaptureMode()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10900(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 3904
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3905
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3908
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$10702(Lcom/android/camera/PhotoModule;Z)Z

    .line 3909
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3910
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)V

    .line 3911
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateFlashModeByCaptureMode()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10900(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 3915
    :cond_5
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v5, :cond_1

    .line 3916
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10700(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3917
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3, v6}, Lcom/android/camera/PhotoModule;->access$10702(Lcom/android/camera/PhotoModule;Z)Z

    .line 3918
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3919
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10800(Lcom/android/camera/PhotoModule;)V

    .line 3920
    iget-object v3, p0, Lcom/android/camera/PhotoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateFlashModeByCaptureMode()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$10900(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0
.end method
