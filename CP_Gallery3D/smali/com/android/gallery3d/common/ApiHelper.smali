.class public Lcom/android/gallery3d/common/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field public static final CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

.field public static final ENABLE_PHOTO_EDITOR:Z

.field public static final HAS_ACTION_BAR:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_CAMERA_FOCUS_AREA:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_METERING_AREA:Z

.field public static final HAS_CRYPTO:Z

.field public static final HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

.field public static final HAS_FACE_DETECTION:Z

.field public static final HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

.field public static final HAS_GET_CAMERA_DISABLED:Z

.field public static final HAS_GET_SUPPORTED_VIDEO_SIZE:Z

.field public static final HAS_INTENT_EXTRA_LOCAL_ONLY:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_MEDIA_PROVIDER_FILES_TABLE:Z

.field public static final HAS_MOTION_EVENT_TRANSFORM:Z

.field public static final HAS_MTP:Z

.field public static final HAS_OLD_PANORAMA:Z

.field public static final HAS_OPTIONS_IN_MUTABLE:Z

.field public static final HAS_POST_ON_ANIMATION:Z

.field public static final HAS_RELEASE_SURFACE_TEXTURE:Z

.field public static final HAS_REMOTE_VIEWS_SERVICE:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SET_DEFALT_BUFFER_SIZE:Z

.field public static final HAS_SET_ICON_ATTRIBUTE:Z

.field public static final HAS_SET_SYSTEM_UI_VISIBILITY:Z

.field public static final HAS_SURFACE_TEXTURE:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final HAS_TIME_LAPSE_RECORDING:Z

.field public static final HAS_VIEW_PROPERTY_ANIMATOR:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

.field public static final HAS_VIEW_TRANSFORM_PROPERTIES:Z

.field public static final HAS_ZOOM_WHEN_RECORDING:Z

.field public static final IS_COOLMINI_ROOM:Z

.field public static final IS_MOBILE_MODEL:Z

.field public static final USE_888_PIXEL_FORMAT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0xe

    const/16 v11, 0x10

    const/16 v10, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 46
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_1

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    .line 49
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_2

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->ENABLE_PHOTO_EDITOR:Z

    .line 52
    const-class v4, Landroid/view/View;

    const-string v7, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    invoke-static {v4, v7}, Lcom/android/gallery3d/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    .line 55
    const-class v4, Landroid/view/View;

    const-string v7, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    invoke-static {v4, v7}, Lcom/android/gallery3d/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    .line 58
    const-class v4, Landroid/provider/MediaStore$MediaColumns;

    const-string v7, "WIDTH"

    invoke-static {v4, v7}, Lcom/android/gallery3d/common/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    .line 61
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_3

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    .line 64
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_4

    move v4, v5

    :goto_3
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    .line 67
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_5

    move v4, v5

    :goto_4
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    .line 70
    const-string v4, "android.graphics.SurfaceTexture"

    const-string v7, "setDefaultBufferSize"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    .line 74
    const-string v4, "android.graphics.SurfaceTexture"

    const-string v7, "release"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    .line 84
    sput-boolean v6, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    .line 87
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xc

    if-lt v4, v7, :cond_6

    move v4, v5

    :goto_5
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_MTP:Z

    .line 90
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_7

    move v4, v5

    :goto_6
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_8

    move v4, v5

    :goto_7
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    .line 96
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_9

    move v4, v5

    :goto_8
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    .line 99
    const-class v4, Landroid/view/View;

    const-string v7, "setSystemUiVisibility"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, hasFaceDetection:Z
    :try_start_0
    const-string v4, "android.hardware.Camera$FaceDetectionListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 108
    .local v3, listenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v4, Landroid/hardware/Camera;

    const-string v7, "setFaceDetectionListener"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-class v4, Landroid/hardware/Camera;

    const-string v7, "startFaceDetection"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-class v4, Landroid/hardware/Camera;

    const-string v7, "stopFaceDetection"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-class v4, Landroid/hardware/Camera$Parameters;

    const-string v7, "getMaxNumDetectedFaces"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_a

    move v0, v5

    .line 115
    .end local v3           #listenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_9
    sput-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    .line 118
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    const-string v7, "getCameraDisabled"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/content/ComponentName;

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    .line 121
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_b

    move v4, v5

    :goto_a
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    .line 124
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_c

    move v4, v5

    :goto_b
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_OLD_PANORAMA:Z

    .line 127
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_d

    move v4, v5

    :goto_c
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    .line 130
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_e

    move v4, v5

    :goto_d
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    .line 133
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_f

    move v4, v5

    :goto_e
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    .line 136
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_10

    move v4, v5

    :goto_f
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    .line 139
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_11

    move v4, v5

    :goto_10
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    .line 142
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_12

    move v4, v5

    :goto_11
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    .line 148
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v4, v7, :cond_13

    move v4, v5

    :goto_12
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    .line 151
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_14

    move v4, v5

    :goto_13
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    .line 154
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_15

    move v4, v5

    :goto_14
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    .line 157
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_16

    move v4, v5

    :goto_15
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    .line 160
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_17

    move v4, v5

    :goto_16
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    .line 163
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_18

    move v4, v5

    :goto_17
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_ACTION_BAR:Z

    .line 167
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_19

    move v4, v5

    :goto_18
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    .line 170
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v4, v7, :cond_1a

    move v4, v5

    :goto_19
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_HDR:Z

    .line 173
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_1b

    move v4, v5

    :goto_1a
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    .line 176
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_1c

    move v4, v5

    :goto_1b
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    .line 179
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xc

    if-lt v4, v7, :cond_1d

    move v4, v5

    :goto_1c
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    .line 182
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_1e

    move v4, v5

    :goto_1d
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    .line 310
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    const-string v7, "getCameraDisabled"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/content/ComponentName;

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "com.yulong.android.crypto.PrivateFile"

    const-string v7, "setPrivateFile"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v5

    :goto_1e
    sput-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_CRYPTO:Z

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, isCoolmini:Z
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Coolmini"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 321
    sput-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->IS_COOLMINI_ROOM:Z

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, isMobilModel:Z
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Coolpad 8730L"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Coolpad 8971"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Coolpad 8705"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_0
    move v2, v5

    .line 331
    :goto_1f
    sput-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->IS_MOBILE_MODEL:Z

    .line 332
    return-void

    .end local v0           #hasFaceDetection:Z
    .end local v1           #isCoolmini:Z
    .end local v2           #isMobilModel:Z
    :cond_1
    move v4, v6

    .line 46
    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 49
    goto/16 :goto_1

    :cond_3
    move v4, v6

    .line 61
    goto/16 :goto_2

    :cond_4
    move v4, v6

    .line 64
    goto/16 :goto_3

    :cond_5
    move v4, v6

    .line 67
    goto/16 :goto_4

    :cond_6
    move v4, v6

    .line 87
    goto/16 :goto_5

    :cond_7
    move v4, v6

    .line 90
    goto/16 :goto_6

    :cond_8
    move v4, v6

    .line 93
    goto/16 :goto_7

    :cond_9
    move v4, v6

    .line 96
    goto/16 :goto_8

    .restart local v0       #hasFaceDetection:Z
    .restart local v3       #listenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    move v0, v6

    .line 108
    goto/16 :goto_9

    .end local v3           #listenerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b
    move v4, v6

    .line 121
    goto/16 :goto_a

    :cond_c
    move v4, v6

    .line 124
    goto/16 :goto_b

    :cond_d
    move v4, v6

    .line 127
    goto/16 :goto_c

    :cond_e
    move v4, v6

    .line 130
    goto/16 :goto_d

    :cond_f
    move v4, v6

    .line 133
    goto/16 :goto_e

    :cond_10
    move v4, v6

    .line 136
    goto/16 :goto_f

    :cond_11
    move v4, v6

    .line 139
    goto/16 :goto_10

    :cond_12
    move v4, v6

    .line 142
    goto/16 :goto_11

    :cond_13
    move v4, v6

    .line 148
    goto/16 :goto_12

    :cond_14
    move v4, v6

    .line 151
    goto/16 :goto_13

    :cond_15
    move v4, v6

    .line 154
    goto/16 :goto_14

    :cond_16
    move v4, v6

    .line 157
    goto/16 :goto_15

    :cond_17
    move v4, v6

    .line 160
    goto/16 :goto_16

    :cond_18
    move v4, v6

    .line 163
    goto/16 :goto_17

    :cond_19
    move v4, v6

    .line 167
    goto/16 :goto_18

    :cond_1a
    move v4, v6

    .line 170
    goto/16 :goto_19

    :cond_1b
    move v4, v6

    .line 173
    goto/16 :goto_1a

    :cond_1c
    move v4, v6

    .line 176
    goto/16 :goto_1b

    :cond_1d
    move v4, v6

    .line 179
    goto/16 :goto_1c

    :cond_1e
    move v4, v6

    .line 182
    goto/16 :goto_1d

    :cond_1f
    move v4, v6

    .line 310
    goto/16 :goto_1e

    .restart local v1       #isCoolmini:Z
    .restart local v2       #isMobilModel:Z
    :cond_20
    move v2, v6

    .line 328
    goto :goto_1f

    .line 113
    .end local v1           #isCoolmini:Z
    .end local v2           #isMobilModel:Z
    :catch_0
    move-exception v4

    goto/16 :goto_9
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 357
    :catch_0
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "ApiHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----ClassNotFoundException---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .parameter "className"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 386
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 388
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 401
    :goto_0
    return-object v1

    .line 390
    :catch_0
    move-exception v2

    .line 392
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 393
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 395
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 398
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "className"
    .parameter "fieldName"

    .prologue
    .line 467
    invoke-static {p0}, Lcom/android/gallery3d/common/ApiHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 468
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 470
    .local v3, result:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 471
    const/4 v2, 0x0

    .line 473
    .local v2, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 478
    :goto_0
    if-eqz v2, :cond_0

    .line 480
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 488
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #result:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v3

    .line 475
    .restart local v2       #field:Ljava/lang/reflect/Field;
    .restart local v3       #result:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 476
    .local v1, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 481
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 482
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 483
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 484
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static varargs getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-nez p0, :cond_1

    .line 408
    const/4 v1, 0x0

    .line 445
    :cond_0
    :goto_0
    return-object v1

    .line 410
    :cond_1
    const/4 v1, 0x0

    .line 412
    .local v1, instance:Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 413
    if-eqz p1, :cond_2

    .line 415
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 422
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v1

    goto :goto_0

    .line 429
    :catch_3
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 432
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v0

    .line 434
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 2
    .parameter
    .parameter "fieldName"
    .parameter
    .parameter "defaultVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, obj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 284
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 286
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local p3
    :goto_0
    return p3

    .line 285
    .restart local p3
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static varargs getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "className"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 451
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 453
    .local v2, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 454
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 463
    :goto_0
    return-object v2

    .line 455
    :catch_0
    move-exception v1

    .line 457
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 460
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    const/4 v1, 0x1

    .line 295
    :goto_0
    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 2
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    const/4 v1, 0x1

    .line 349
    :goto_0
    return v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .parameter "className"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 303
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const/4 v2, 0x1

    .line 306
    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, th:Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "method"
    .parameter "obj"
    .parameter "parameters"

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, retObj:Ljava/lang/Object;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 496
    :cond_0
    const/4 v1, 0x0

    .line 514
    .end local v1           #retObj:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 499
    .restart local v1       #retObj:Ljava/lang/Object;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 503
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 506
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "className"
    .parameter "methodName"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    .line 519
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 520
    .local v5, ownerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v7, p2

    new-array v0, v7, [Ljava/lang/Class;

    .line 522
    .local v0, argsClass:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, p2

    .local v3, j:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 523
    aget-object v7, p2, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v0, v2

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {v5, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 528
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    .line 548
    .end local v0           #argsClass:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #ownerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-object v6

    .line 529
    :catch_0
    move-exception v1

    .line 531
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 533
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 535
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 537
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 539
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 541
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 543
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 545
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 547
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static isCMCC()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 336
    const-string v2, "com.yulong.android.feature.FeatureString"

    const-string v4, "NET_CARRIER"

    invoke-static {v2, v4}, Lcom/android/gallery3d/common/ApiHelper;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    .local v0, netCarrier:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 340
    :goto_0
    return v3

    .line 338
    :cond_0
    const-string v2, "com.yulong.android.feature.FeatureConfig"

    const-string v4, "getIntValue"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v2, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 339
    .local v1, result:Z
    :goto_1
    const-string v2, "ApiHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCMCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 340
    goto :goto_0

    .end local v1           #result:Z
    :cond_1
    move v1, v3

    .line 338
    goto :goto_1
.end method
