.class Lcom/android/camera/ui/CameraLeftBar$1;
.super Ljava/lang/Object;
.source "CameraLeftBar.java"

# interfaces
.implements Lcom/android/camera/ui/MyPreferenceButton$IntroductionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraLeftBar;->setBtnPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraLeftBar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraLeftBar;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sayBtnIntroduction(Landroid/view/View;Lcom/android/camera/IconListPreference;)V
    .locals 9
    .parameter "v"
    .parameter "mPref"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, sceneMode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 219
    .local v0, autoSwitcher:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$000(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/PreferenceGroup;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$000(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/PreferenceGroup;

    move-result-object v4

    const-string v5, "pref_camera_scenemode_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 221
    .local v3, sceneModePref:Lcom/android/camera/IconListPreference;
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$000(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/PreferenceGroup;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "pref_camera_scene_detect_key"

    iget-object v7, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v7}, Lcom/android/camera/ui/CameraLeftBar;->access$100(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f0e02af

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 228
    .end local v3           #sceneModePref:Lcom/android/camera/IconListPreference;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$100(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 229
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$100(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v4

    instance-of v4, v4, Lcom/android/camera/PhotoModule;

    if-eqz v4, :cond_3

    const-string v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$100(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCurrentModule()Lcom/android/camera/CameraModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PhotoModule;

    .line 232
    .local v1, mModule:Lcom/android/camera/PhotoModule;
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mCameraId:I
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$200(Lcom/android/camera/ui/CameraLeftBar;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$100(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/CameraLeftBar$1;->this$0:Lcom/android/camera/ui/CameraLeftBar;

    #getter for: Lcom/android/camera/ui/CameraLeftBar;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/ui/CameraLeftBar;->access$100(Lcom/android/camera/ui/CameraLeftBar;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v5, "nightshot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    :cond_2
    const-string v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->isNightShotSelected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 243
    .end local v0           #autoSwitcher:Ljava/lang/String;
    .end local v1           #mModule:Lcom/android/camera/PhotoModule;
    .end local v2           #sceneMode:Ljava/lang/String;
    :cond_3
    return-void
.end method
