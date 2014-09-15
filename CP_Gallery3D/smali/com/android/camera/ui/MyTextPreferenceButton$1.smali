.class Lcom/android/camera/ui/MyTextPreferenceButton$1;
.super Ljava/lang/Object;
.source "MyTextPreferenceButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/MyTextPreferenceButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/MyTextPreferenceButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/MyTextPreferenceButton;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 87
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->isCanClickable:Z
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$000(Lcom/android/camera/ui/MyTextPreferenceButton;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$100(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mOwerLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$100(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/CameraLeftBar;->isOwnerEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 93
    const-string v3, "MyTextPreferenceButton"

    const-string v4, ">>>Skip the click respond in preference button"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #calls: Lcom/android/camera/ui/MyTextPreferenceButton;->checkClickInterval()Z
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$200(Lcom/android/camera/ui/MyTextPreferenceButton;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$300(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 104
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$300(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-interface {v3, p1, v4}, Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;->onClick(Landroid/view/View;Lcom/android/camera/IconListPreference;)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mBtnListener:Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$300(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-interface {v3, p1, v4}, Lcom/android/camera/ui/MyTextPreferenceButton$MyTextButtonListener;->onClick(Landroid/view/View;Lcom/android/camera/PreferenceGroup;)V

    goto :goto_0

    .line 109
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, index:I
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 112
    .local v2, values:[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 113
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v0}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #calls: Lcom/android/camera/ui/MyTextPreferenceButton;->updateButtonIcon(I)V
    invoke-static {v3, v0}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$400(Lcom/android/camera/ui/MyTextPreferenceButton;I)V

    .line 117
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$500(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v3, v3, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, newCameraId:I
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$500(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    goto/16 :goto_0

    .line 125
    .end local v1           #newCameraId:I
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    #getter for: Lcom/android/camera/ui/MyTextPreferenceButton;->mPreferListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    invoke-static {v3}, Lcom/android/camera/ui/MyTextPreferenceButton;->access$500(Lcom/android/camera/ui/MyTextPreferenceButton;)Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v4, v4, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/MyTextPreferenceButton$1;->this$0:Lcom/android/camera/ui/MyTextPreferenceButton;

    iget-object v5, v5, Lcom/android/camera/ui/MyTextPreferenceButton;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
