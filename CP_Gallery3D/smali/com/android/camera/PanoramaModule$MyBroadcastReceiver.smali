.class Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1712
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1713
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1714
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1715
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 1716
    .local v2, isOn:I
    if-eqz v1, :cond_0

    .line 1717
    const-string v3, "status"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1720
    :cond_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 1722
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 1723
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1725
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1726
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1731
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #isOn:I
    :cond_1
    return-void
.end method
