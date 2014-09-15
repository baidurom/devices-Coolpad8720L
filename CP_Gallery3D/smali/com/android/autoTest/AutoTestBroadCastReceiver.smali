.class public Lcom/android/autoTest/AutoTestBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoTestBroadCastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;
    }
.end annotation


# static fields
.field public static delayTimeValue:I

.field public static isRecording:Z

.field public static mAutoTestFlag:Z

.field public static mCaptureResult:Z

.field private static mCurrentMode:I

.field public static mOpenAlbumResult:Z

.field private static mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private static mPreferences:Lcom/android/camera/ComboPreferences;

.field public static mPreviewResult:Z

.field public static mSettingResult:Z

.field public static mSwitchIdResult:Z

.field public static mSwitchModeResult:Z


# instance fields
.field mActivity:Lcom/android/camera/CameraActivity;

.field mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreviewResult:Z

    .line 49
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCaptureResult:Z

    .line 50
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchModeResult:Z

    .line 51
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchIdResult:Z

    .line 52
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mOpenAlbumResult:Z

    .line 53
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSettingResult:Z

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    .line 57
    sput v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->delayTimeValue:I

    .line 58
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->isRecording:Z

    .line 70
    sput v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCurrentMode:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;)V
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    .line 77
    iput-object p2, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    .line 78
    iput-object p1, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->delayTimeValue:I

    .line 80
    return-void
.end method

.method public static setAutoTestResult(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 330
    sget-boolean v0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 332
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreviewResult:Z

    goto :goto_0

    .line 337
    :pswitch_1
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCaptureResult:Z

    goto :goto_0

    .line 340
    :pswitch_2
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchModeResult:Z

    goto :goto_0

    .line 343
    :pswitch_3
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchIdResult:Z

    goto :goto_0

    .line 346
    :pswitch_4
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSettingResult:Z

    goto :goto_0

    .line 349
    :pswitch_5
    sput-boolean v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mOpenAlbumResult:Z

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setComboPreferences(Lcom/android/camera/ComboPreferences;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 87
    sput-object p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 88
    return-void
.end method

.method public static setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 83
    sput-object p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 84
    return-void
.end method

.method private setting(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x5

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 209
    .local v3, settingBundle:Landroid/os/Bundle;
    const-string v6, "key"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, settingKey:Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, settingValue:Ljava/lang/String;
    const/4 v0, 0x0

    .line 213
    .local v0, cameraSettingKey:Ljava/lang/String;
    const-string v6, "scenemode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    const-string v0, "pref_camera_scenemode_key"

    .line 263
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 264
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v8, v6}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->broadCastSendStatus(IZ)V

    .line 280
    :goto_1
    return-void

    .line 215
    :cond_2
    const-string v6, "effect"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 216
    const-string v0, "pref_camera_effect_key"

    goto :goto_0

    .line 217
    :cond_3
    const-string v6, "picturesize"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    const-string v0, "pref_camera_picturesize_key"

    goto :goto_0

    .line 219
    :cond_4
    const-string v6, "whitebalance"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 220
    const-string v0, "pref_camera_whitebalance_key"

    goto :goto_0

    .line 221
    :cond_5
    const-string v6, "videosize"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 222
    const-string v0, "pref_camera_videosize_key"

    goto :goto_0

    .line 223
    :cond_6
    const-string v6, "duration"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 224
    const-string v0, "pref_camera_video_duration_key"

    goto :goto_0

    .line 225
    :cond_7
    const-string v6, "outputformat"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 226
    const-string v0, "pref_camera_outputformat_key"

    goto :goto_0

    .line 227
    :cond_8
    const-string v6, "jpegquality"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 228
    const-string v0, "pref_camera_jpegquality_key"

    goto :goto_0

    .line 229
    :cond_9
    const-string v6, "delay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 230
    const-string v0, "pref_camera_delay_key"

    .line 232
    if-eqz v5, :cond_a

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 233
    :cond_a
    const-string v5, "0"

    .line 234
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->delayTimeValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v6

    goto :goto_0

    .line 238
    :cond_c
    const-string v6, "facetracking"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 239
    const-string v0, "pref_camera_facetracking_key"

    goto/16 :goto_0

    .line 240
    :cond_d
    const-string v6, "iso"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 241
    const-string v0, "pref_camera_iso_key"

    goto/16 :goto_0

    .line 242
    :cond_e
    const-string v6, "continuemode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 243
    const-string v0, "pref_camera_continuemode_key"

    goto/16 :goto_0

    .line 244
    :cond_f
    const-string v6, "sharpeness"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 245
    const-string v0, "pref_camera_sharpeness_key"

    goto/16 :goto_0

    .line 246
    :cond_10
    const-string v6, "saturation"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 247
    const-string v0, "pref_camera_saturation_key"

    goto/16 :goto_0

    .line 248
    :cond_11
    const-string v6, "exposure"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 249
    const-string v0, "pref_camera_exposure_key"

    goto/16 :goto_0

    .line 250
    :cond_12
    const-string v6, "contrast"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 251
    const-string v0, "pref_camera_contrast_key"

    goto/16 :goto_0

    .line 252
    :cond_13
    const-string v6, "flashMode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 253
    sget v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCurrentMode:I

    if-nez v6, :cond_14

    .line 254
    const-string v0, "pref_camera_flashmode_key"

    goto/16 :goto_0

    .line 255
    :cond_14
    sget v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCurrentMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 256
    const-string v0, "pref_camera_video_flashmode_key"

    goto/16 :goto_0

    .line 258
    :cond_15
    const-string v6, "gps"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    const-string v0, "pref_camera_recordlocation_key"

    goto/16 :goto_0

    .line 267
    :cond_16
    sget-object v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v6, v0}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 268
    .local v1, listPref:Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_17

    .line 270
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    :cond_17
    :goto_2
    iget-object v6, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v6, v0, v5}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, v0, v5}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->getSettingResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 279
    .local v2, result:Z
    invoke-virtual {p0, v8, v2}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->broadCastSendStatus(IZ)V

    goto/16 :goto_1

    .line 271
    .end local v2           #result:Z
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private testCapture(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    const-string v4, "AutoTestBroadCastReceiver"

    const-string v5, ">>>>>>>>..test capture"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 120
    .local v1, captureBundle:Landroid/os/Bundle;
    const-string v4, "CaptureType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 121
    .local v2, captureType:I
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f100030

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    .line 122
    .local v0, b:Lcom/android/camera/ShutterButton;
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f100037

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ShutterButton;

    .line 123
    .local v3, stopRecord:Lcom/android/camera/ShutterButton;
    if-ne v7, v2, :cond_1

    .line 124
    sput-boolean v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCaptureResult:Z

    .line 125
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v4, v7}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onShutterButtonFocus(Z)V

    .line 126
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v4, v6}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onShutterButtonFocus(Z)V

    .line 128
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v4, v0}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->getCaptureResult()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v4, 0x2

    if-ne v4, v2, :cond_3

    .line 131
    sget-boolean v4, Lcom/android/autoTest/AutoTestBroadCastReceiver;->isRecording:Z

    if-eqz v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v4, v3}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    .line 133
    sput-boolean v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->isRecording:Z

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->getCaptureResult()V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v4, v0}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    .line 136
    sput-boolean v7, Lcom/android/autoTest/AutoTestBroadCastReceiver;->isRecording:Z

    goto :goto_1

    .line 140
    :cond_3
    const/4 v4, 0x3

    if-ne v4, v2, :cond_0

    .line 141
    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v4, v0}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onShutterButtonClick(Lcom/android/camera/ShutterButton;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->getCaptureResult()V

    goto :goto_0
.end method

.method private testOpenAlbum()V
    .locals 6

    .prologue
    .line 198
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mOpenAlbumResult:Z

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->onThumbnailClicked(Landroid/view/View;)V

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "openAlbum"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v5, Lcom/android/autoTest/AutoTestServer;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 206
    return-void
.end method

.method private testSwitchCameraId(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 185
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchIdResult:Z

    .line 186
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 187
    .local v2, cameraIdBundle:Landroid/os/Bundle;
    const-string v3, "CameraID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, CameraID:I
    iget-object v3, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v3, v0}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onCameraPickerClicked(I)V

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v1, args:Landroid/os/Bundle;
    const-string v3, "type"

    const-string v4, "switchcameraId"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v6, Lcom/android/autoTest/AutoTestServer;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    return-void
.end method

.method private testSwitchMode(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    .line 148
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mSwitchModeResult:Z

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 151
    .local v1, cameraModeBundle:Landroid/os/Bundle;
    const-string v6, "ModeType"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 152
    .local v5, switchToMode:I
    const-string v6, "AutoTestBroadCastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>>>>>>>>>>>switch mode switchToMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  mCurrentMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCurrentMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCurrentMode:I

    if-eqz v6, :cond_0

    sget v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCurrentMode:I

    if-ne v6, v9, :cond_6

    .line 154
    :cond_0
    const-string v2, "pref_camera_capturemode_key"

    .line 155
    .local v2, cameraSettingKey:Ljava/lang/String;
    sget-object v6, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v6, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 156
    .local v4, listPref:Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_1

    if-ne v5, v9, :cond_5

    .line 157
    :cond_1
    const-string v3, "normal"

    .line 159
    .local v3, captureMode:Ljava/lang/String;
    if-nez v5, :cond_4

    .line 160
    const-string v3, "normal"

    .line 165
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {v4, v3}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 169
    :cond_3
    iget-object v6, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mListener:Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;

    invoke-interface {v6, v2, v3}, Lcom/android/autoTest/AutoTestBroadCastReceiver$Listener;->onSharedPreferenceChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v2           #cameraSettingKey:Ljava/lang/String;
    .end local v3           #captureMode:Ljava/lang/String;
    .end local v4           #listPref:Lcom/android/camera/ListPreference;
    :goto_1
    sput v5, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mCurrentMode:I

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, args:Landroid/os/Bundle;
    const-string v6, "type"

    const-string v7, "switchmode"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v6, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v9, Lcom/android/autoTest/AutoTestServer;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 161
    .end local v0           #args:Landroid/os/Bundle;
    .restart local v2       #cameraSettingKey:Ljava/lang/String;
    .restart local v3       #captureMode:Ljava/lang/String;
    .restart local v4       #listPref:Lcom/android/camera/ListPreference;
    :cond_4
    if-ne v5, v9, :cond_2

    .line 162
    const-string v3, "panorama"

    goto :goto_0

    .line 171
    .end local v3           #captureMode:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6, v5}, Lcom/android/camera/CameraActivity;->onCameraSelected(I)Z

    goto :goto_1

    .line 181
    .end local v1           #cameraModeBundle:Landroid/os/Bundle;
    .end local v2           #cameraSettingKey:Ljava/lang/String;
    .end local v4           #listPref:Lcom/android/camera/ListPreference;
    .end local v5           #switchToMode:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 174
    .restart local v1       #cameraModeBundle:Landroid/os/Bundle;
    .restart local v5       #switchToMode:I
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6, v5}, Lcom/android/camera/CameraActivity;->onCameraSelected(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public broadCastSendStatus(IZ)V
    .locals 2
    .parameter "type"
    .parameter "success"

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.camera.action.ygtptest_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method public getCaptureResult()V
    .locals 5

    .prologue
    .line 316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "type"

    const-string v2, "capture"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v4, Lcom/android/autoTest/AutoTestServer;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 320
    return-void
.end method

.method public getSettingResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 289
    sget-object v1, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    sget-object v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mPreferences:Lcom/android/camera/ComboPreferences;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, settingResult:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const/4 v1, 0x1

    .line 295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v1, "AutoTestBroadCastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "com.yulong.camera.action.ygtptest_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0, p2}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->testCapture(Landroid/content/Intent;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v1, "com.yulong.camera.action.ygtptest_switchMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-direct {p0, p2}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->testSwitchMode(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "com.yulong.camera.action.ygtptest_switchCameraId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    invoke-direct {p0, p2}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->testSwitchCameraId(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_3
    const-string v1, "com.yulong.camera.action.ygtptest_openalbum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->testOpenAlbum()V

    goto :goto_0

    .line 107
    :cond_4
    const-string v1, "com.yulong.camera.action.ygtptest_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0, p2}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setting(Landroid/content/Intent;)V

    goto :goto_0
.end method
