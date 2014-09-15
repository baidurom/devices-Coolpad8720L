.class Lcom/android/camera/ui/MyPreferenceButton$1;
.super Ljava/lang/Object;
.source "MyPreferenceButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/MyPreferenceButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/MyPreferenceButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/MyPreferenceButton;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 74
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$000(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$000(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraLeftBar;->isOwnerEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const-string v3, "MyPreferenceButton"

    const-string v4, ">>>Skip the click respond in preference button"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #calls: Lcom/android/camera/ui/MyPreferenceButton;->checkClickInterval()Z
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$100(Lcom/android/camera/ui/MyPreferenceButton;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$200(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$200(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-interface {v3, p1, v4}, Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;->onClick(Landroid/view/View;Lcom/android/camera/IconListPreference;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$200(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-interface {v3, p1, v4}, Lcom/android/camera/ui/MyPreferenceButton$MyButtonListener;->onClick(Landroid/view/View;Lcom/android/camera/PreferenceGroup;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, index:I
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 94
    .local v2, values:[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 95
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v0}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 97
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #calls: Lcom/android/camera/ui/MyPreferenceButton;->updateButtonIcon(I)V
    invoke-static {v3, v0}, Lcom/android/camera/ui/MyPreferenceButton;->access$300(Lcom/android/camera/ui/MyPreferenceButton;I)V

    .line 99
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$400(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, newCameraId:I
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$400(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    goto/16 :goto_0

    .line 108
    .end local v1           #newCameraId:I
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyPreferenceButton;->access$400(Lcom/android/camera/ui/MyPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/MyPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyPreferenceButton;

    iget-object v5, v5, Lcom/android/camera/ui/MyPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
