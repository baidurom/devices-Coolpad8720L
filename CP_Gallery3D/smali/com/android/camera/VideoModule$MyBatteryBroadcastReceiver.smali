.class Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;)V

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

    .line 671
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3200(Lcom/android/camera/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 675
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 676
    .local v2, isOn:I
    if-eqz v1, :cond_0

    .line 677
    const-string v3, "status"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 680
    :cond_0
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v4, :cond_2

    .line 681
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 684
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 685
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 712
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #isOn:I
    :cond_1
    :goto_0
    return-void

    .line 687
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #isOn:I
    :cond_2
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_4

    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v5, :cond_4

    .line 689
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 690
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3300(Lcom/android/camera/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #setter for: Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3, v6}, Lcom/android/camera/VideoModule;->access$3302(Lcom/android/camera/VideoModule;Z)Z

    .line 692
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->setCameraParameters()V
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3400(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 695
    :cond_3
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3300(Lcom/android/camera/VideoModule;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 696
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 699
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3, v4}, Lcom/android/camera/VideoModule;->access$3302(Lcom/android/camera/VideoModule;Z)Z

    .line 700
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->setCameraParameters()V
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3400(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 703
    :cond_4
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v5, :cond_1

    .line 704
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3300(Lcom/android/camera/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #setter for: Lcom/android/camera/VideoModule;->lowBatteryForFlashLight:Z
    invoke-static {v3, v6}, Lcom/android/camera/VideoModule;->access$3302(Lcom/android/camera/VideoModule;Z)Z

    .line 706
    iget-object v3, p0, Lcom/android/camera/VideoModule$MyBatteryBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->setCameraParameters()V
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$3400(Lcom/android/camera/VideoModule;)V

    goto :goto_0
.end method
