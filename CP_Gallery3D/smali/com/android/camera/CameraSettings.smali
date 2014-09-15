.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field public static fristPictureSize:Ljava/lang/String;

.field public static mCameraId:I

.field public static mEnterOrientation:I

.field public static mPassOrientation:I

.field public static mRotateOrientation:I


# instance fields
.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;

.field values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/CameraSettings;->fristPictureSize:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 3
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "4208x3120"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "4208x2368"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3264x2448"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3264x1840"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "2048x1152"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1280x720"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "800x600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->values:[Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 132
    sput p3, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 133
    iput-object p4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 134
    return-void
.end method

.method private buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 5
    .parameter "group"
    .parameter "preference"

    .prologue
    .line 726
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v3

    .line 727
    .local v2, numOfCameras:I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 728
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 737
    :goto_0
    return-void

    .line 732
    :cond_0
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 733
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 11
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 695
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 696
    .local v4, max:I
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 697
    .local v6, min:I
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 698
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 722
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v8

    .line 704
    .local v8, step:F
    int-to-float v9, v4

    mul-float/2addr v9, v8

    invoke-static {v9}, Landroid/util/FloatMath;->floor(F)F

    move-result v9

    float-to-int v5, v9

    .line 705
    .local v5, maxValue:I
    int-to-float v9, v6

    mul-float/2addr v9, v8

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v7, v9

    .line 706
    .local v7, minValue:I
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 707
    .local v1, entries:[Ljava/lang/CharSequence;
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 711
    .local v2, entryValues:[Ljava/lang/CharSequence;
    move v3, v7

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_2

    .line 712
    sub-int v9, v5, v3

    int-to-float v10, v3

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    const/16 v9, 0x2b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    :cond_1
    sub-int v9, v5, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 711
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 718
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/android/camera/IconListPreference;->setUseSingleIcon(Z)V

    .line 719
    invoke-virtual {p2, v1}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 720
    invoke-virtual {p2, v2}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static enableListItems(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "group"
    .parameter "Key"
    .parameter "mode"
    .parameter "bEnabled"

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, overrideItem:I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/PreferenceGroup;->findIndexOfPreference(Ljava/lang/String;)I

    move-result v2

    .line 231
    if-ltz v2, :cond_0

    .line 232
    invoke-virtual {p0, v2}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ListPreference;

    .line 233
    .local v1, listPref:Lcom/android/camera/ListPreference;
    invoke-virtual {v1, p2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, index:I
    if-eqz v1, :cond_0

    const/4 v3, -0x1

    if-eq v3, v0, :cond_0

    .line 235
    invoke-virtual {v1, v0, p3}, Lcom/android/camera/ListPreference;->enableEntryItem(IZ)V

    goto :goto_0
.end method

.method private filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "group"
    .parameter "pref"

    .prologue
    const/4 v1, 0x1

    .line 782
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->filterDuplicated()V

    .line 783
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 784
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 793
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 761
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 762
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 778
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 768
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 769
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    goto :goto_0

    .line 773
    :cond_3
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static findVideoSize(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 358
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 359
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v5

    .line 360
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 361
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 363
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 364
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getFineResolutionQuality(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 1066
    sget v0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    :cond_0
    sget v0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_1
    sget v0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_2
    return-void
.end method

.method public static getFristPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 265
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---getFristPictureSize()--Begin--fristPictureSize ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraSettings;->fristPictureSize:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 267
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v5, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v2, 0x1

    .line 269
    .local v2, i:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 271
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 272
    add-int/lit8 v2, v2, 0x1

    .line 273
    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    .line 274
    sput-object v1, Lcom/android/camera/CameraSettings;->fristPictureSize:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "group"
    .parameter "preferences"
    .parameter "key"
    .parameter "defString"

    .prologue
    .line 169
    if-eqz p0, :cond_1

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 171
    .local v0, listPref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 179
    .end local v0           #listPref:Lcom/android/camera/ListPreference;
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 176
    .restart local p3
    :cond_1
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private getSupportedCaptureMode(Lcom/android/camera/ListPreference;)Ljava/util/ArrayList;
    .locals 9
    .parameter "captureMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ListPreference;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1024
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1025
    .local v6, values:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v4, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_8

    aget-object v5, v0, v1

    .line 1027
    .local v5, value:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, modeValue:Ljava/lang/String;
    const-string v7, "audio_image"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportAudioImage()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1026
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    const-string v7, "perfect365"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/camera/ProductConfig;->isSupportPerfect365(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1030
    :cond_2
    const-string v7, "self_capture"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1031
    const-string v7, "hdr"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportHDR()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1032
    :cond_3
    sget-boolean v7, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-nez v7, :cond_4

    const-string v7, "nightshot"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "bestpick"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "beautyshot"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "smileshutter"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "pickaction"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "pickclear"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1041
    :cond_4
    sget v7, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1042
    const-string v7, "8908"

    invoke-static {v7}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "beautyshot"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1046
    :cond_5
    invoke-static {}, Lcom/android/camera/ProductConfig;->getHardwarePlatformID()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_6

    .line 1047
    const-string v7, "pickclear"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "pickaction"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1053
    :cond_6
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1054
    const-string v7, "gifcapture"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1058
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1060
    .end local v3           #modeValue:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/CharSequence;
    :cond_8
    return-object v4
.end method

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1003
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v2, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v3, :cond_1

    .line 1006
    invoke-direct {p0, v2}, Lcom/android/camera/CameraSettings;->getFineResolutionQuality(Ljava/util/ArrayList;)V

    .line 1019
    :cond_0
    :goto_0
    return-object v2

    .line 1008
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    sget v3, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v3, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1011
    .local v0, high:Landroid/media/CamcorderProfile;
    sget v3, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v3, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1013
    .local v1, low:Landroid/media/CamcorderProfile;
    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v3, v4

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v5, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 1015
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initPreference(Lcom/android/camera/PreferenceGroup;)V
    .locals 37
    .parameter "group"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 395
    const-string v35, "pref_video_quality_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v31

    .line 396
    .local v31, videoQuality:Lcom/android/camera/ListPreference;
    const-string v35, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v27

    .line 397
    .local v27, timeLapseInterval:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_scene_detect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v22

    .line 398
    .local v22, scenedetect:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_picturesize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v18

    .line 399
    .local v18, pictureSize:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_whitebalance_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v34

    .line 400
    .local v34, whiteBalance:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_effect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 401
    .local v12, effect:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v21

    .line 402
    .local v21, sceneMode:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_capturemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 403
    .local v7, captureMode:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_selfCamera_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v24

    .line 404
    .local v24, selfCamera:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_trackSolid_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v28

    .line 405
    .local v28, trackSolid:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_facetracking_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 406
    .local v14, faceTrack:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_antishaking_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 407
    .local v4, antiShaking:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_delay_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 408
    .local v11, delayShutter:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_iso_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v17

    .line 409
    .local v17, iso:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_video_stabilization_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v33

    .line 410
    .local v33, videoStab:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_recordlocation_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v19

    .line 412
    .local v19, recordLocation:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_saturation_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    .line 413
    .local v20, saturation:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_contrast_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 414
    .local v10, contrast:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    .line 415
    .local v15, flashMode:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_focusmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 416
    .local v16, focusMode:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_exposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    check-cast v13, Lcom/android/camera/IconListPreference;

    .line 418
    .local v13, exposure:Lcom/android/camera/IconListPreference;
    const-string v35, "pref_camera_id_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    check-cast v6, Lcom/android/camera/IconListPreference;

    .line 420
    .local v6, cameraIdPref:Lcom/android/camera/IconListPreference;
    const-string v35, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v30

    .line 422
    .local v30, videoFlashMode:Lcom/android/camera/ListPreference;
    const-string v35, "pref_video_effect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v29

    .line 423
    .local v29, videoEffect:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_hdr_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 425
    .local v5, cameraHdr:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_videosize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v32

    .line 426
    .local v32, videoSize:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_capturemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 427
    .local v8, capturemode:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_continuemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 429
    .local v9, continuemode:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_secure_box_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v23

    .line 430
    .local v23, secure_box:Lcom/android/camera/ListPreference;
    const-string v35, "pref_camera_shutter_sound_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v25

    .line 432
    .local v25, shuttersound:Lcom/android/camera/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/camera/CameraActivity;

    invoke-virtual/range {v35 .. v35}, Lcom/android/camera/CameraActivity;->isSecureBoxAvailable()Z

    move-result v35

    if-nez v35, :cond_2

    if-eqz v23, :cond_2

    .line 436
    const-string v35, "CameraSettings"

    const-string v36, ">>>>>>remove secure box option from setting menu"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 441
    :cond_2
    if-eqz v31, :cond_3

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 445
    :cond_3
    if-eqz v8, :cond_4

    .line 446
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/CameraSettings;->getSupportedCaptureMode(Lcom/android/camera/ListPreference;)Ljava/util/ArrayList;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 449
    :cond_4
    if-eqz v32, :cond_5

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 453
    invoke-static {}, Lcom/android/camera/ProductConfig;->getOperationsName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "CMCC"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-static {}, Lcom/android/camera/ProductConfig;->isCurrentNetMode()Z

    move-result v35

    if-eqz v35, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lcom/android/camera/CameraSettings;->initialCameraVideoSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 460
    :cond_5
    sget v35, Lcom/android/camera/CameraSettings;->mCameraId:I

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 467
    if-eqz v21, :cond_6

    .line 468
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 469
    const/16 v21, 0x0

    .line 471
    :cond_6
    if-eqz v24, :cond_7

    .line 472
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 473
    const/16 v24, 0x0

    .line 475
    :cond_7
    if-eqz v28, :cond_8

    .line 476
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 477
    const/16 v28, 0x0

    .line 479
    :cond_8
    if-eqz v4, :cond_9

    .line 480
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 481
    const/4 v4, 0x0

    .line 483
    :cond_9
    if-eqz v17, :cond_a

    .line 484
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 485
    const/16 v17, 0x0

    .line 488
    :cond_a
    if-eqz v20, :cond_b

    .line 489
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 490
    const/16 v20, 0x0

    .line 493
    :cond_b
    if-eqz v10, :cond_c

    .line 494
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v10, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 495
    const/4 v10, 0x0

    .line 498
    :cond_c
    if-eqz v18, :cond_d

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSettings;->filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 502
    const/16 v18, 0x0

    .line 507
    :cond_d
    invoke-static {}, Lcom/android/camera/ProductConfig;->getOperationsName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "CMCC"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_e

    sget v35, Lcom/android/camera/ProductConfig;->mPlatformID:I

    if-eqz v35, :cond_e

    invoke-static {}, Lcom/android/camera/ProductConfig;->isCoolRom()Z

    move-result v35

    if-eqz v35, :cond_10

    .line 510
    :cond_e
    if-eqz v25, :cond_f

    .line 511
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 512
    :cond_f
    const/16 v25, 0x0

    .line 514
    :cond_10
    invoke-static {}, Lcom/android/camera/ProductConfig;->isCoolRom()Z

    move-result v35

    if-eqz v35, :cond_11

    .line 515
    if-eqz v19, :cond_11

    .line 516
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 517
    const/16 v19, 0x0

    .line 521
    :cond_11
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportFaceTrack()Z

    move-result v35

    if-nez v35, :cond_12

    .line 522
    if-eqz v14, :cond_12

    .line 523
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v14, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 525
    :cond_12
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportSelfCamera()Z

    move-result v35

    if-nez v35, :cond_13

    .line 526
    if-eqz v24, :cond_13

    .line 527
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 529
    :cond_13
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportSelfCamera()Z

    move-result v35

    if-nez v35, :cond_14

    .line 530
    if-eqz v24, :cond_14

    .line 531
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 533
    :cond_14
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportTrackSolid()Z

    move-result v35

    if-nez v35, :cond_15

    .line 534
    if-eqz v28, :cond_15

    .line 535
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 537
    :cond_15
    if-eqz v18, :cond_16

    .line 538
    const-string v35, "9970"

    invoke-static/range {v35 .. v35}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_28

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->values:[Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPictureSizeListFor9970Show([Ljava/lang/String;)Ljava/util/List;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 545
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSettings;->filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 547
    :cond_16
    if-eqz v34, :cond_17

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 551
    :cond_17
    if-eqz v21, :cond_18

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSettings;->filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 561
    :cond_18
    if-eqz v12, :cond_1a

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v26

    .line 564
    .local v26, supported1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v35, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-eqz v35, :cond_19

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportHDR()Z

    move-result v35

    if-eqz v35, :cond_19

    .line 565
    const-string v35, "hdr_art"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v12, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 569
    .end local v26           #supported1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v35

    if-nez v35, :cond_1b

    .line 570
    if-eqz v33, :cond_1b

    .line 571
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 572
    const/16 v33, 0x0

    .line 578
    :cond_1b
    if-eqz v15, :cond_1c

    .line 579
    invoke-static {}, Lcom/android/camera/ProductConfig;->getFlashModeSupported()Z

    move-result v35

    if-nez v35, :cond_1c

    .line 580
    const-string v35, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 584
    :cond_1c
    if-eqz v16, :cond_1d

    .line 586
    const-string v35, "CameraSettings"

    const-string v36, "focusMode 111"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 640
    :cond_1d
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportLongPressContinuousShot()Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 641
    if-eqz v9, :cond_1e

    .line 642
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v9, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 643
    const/4 v9, 0x0

    .line 648
    :cond_1e
    const-string v35, "8908"

    invoke-static/range {v35 .. v35}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_1f

    const-string v35, "8720L"

    invoke-static/range {v35 .. v35}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_1f

    .line 650
    if-eqz v9, :cond_1f

    .line 651
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v9, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 656
    :cond_1f
    if-eqz v22, :cond_21

    .line 657
    sget-boolean v35, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    if-eqz v35, :cond_20

    const-string v35, "8908"

    invoke-static/range {v35 .. v35}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_21

    .line 658
    :cond_20
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 665
    :cond_21
    if-eqz v30, :cond_22

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 669
    :cond_22
    if-eqz v13, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/camera/CameraSettings;->buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 670
    :cond_23
    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/camera/CameraSettings;->buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 672
    :cond_24
    if-eqz v27, :cond_25

    .line 673
    sget-boolean v35, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v35, :cond_29

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 679
    :cond_25
    :goto_2
    if-eqz v29, :cond_26

    .line 684
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 687
    :cond_26
    if-eqz v5, :cond_0

    sget-boolean v35, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_HDR:Z

    if-eqz v35, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/camera/Util;->isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 689
    :cond_27
    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 542
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    goto/16 :goto_1

    .line 676
    :cond_29
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 286
    .local v6, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v6, :cond_0

    .line 307
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e026d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, picturesize_default:Ljava/lang/String;
    invoke-static {v5, v6, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 291
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_camera_picturesize_key"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 296
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 298
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v6, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 299
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 301
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_camera_picturesize_key"

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 296
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    .end local v1           #candidate:Ljava/lang/String;
    :cond_3
    const-string v7, "CameraSettings"

    const-string v8, "No supported picture size found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initialCameraVideoSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v5

    .line 314
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v5, :cond_0

    .line 350
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/android/camera/ProductConfig;->getOperationsName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CMCC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/camera/ProductConfig;->isCurrentNetMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 320
    const-string v6, "720x480"

    .line 321
    .local v6, videosize_default:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/camera/CameraSettings;->findVideoSize(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 322
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 324
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_camera_videosize_key"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 330
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #videosize_default:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0291

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    .restart local v6       #videosize_default:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/camera/CameraSettings;->findVideoSize(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 334
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_camera_videosize_key"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 339
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09004c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 341
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->findVideoSize(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 342
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 344
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_camera_videosize_key"

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 339
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 349
    .end local v1           #candidate:Ljava/lang/String;
    :cond_4
    const-string v7, "CameraSettings"

    const-string v8, "No supported picture size found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "group"
    .parameter "Key"
    .parameter "value"
    .parameter "bEnabled"

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, overrideItem:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 206
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local p3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/PreferenceGroup;->findIndexOfPreference(Ljava/lang/String;)I

    move-result v1

    .line 201
    if-ltz v1, :cond_0

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 203
    .local v0, listPref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 204
    if-eqz p2, :cond_2

    .end local p3
    :goto_1
    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;Z)V

    goto :goto_0

    .restart local p3
    :cond_2
    const/4 p3, 0x1

    goto :goto_1
.end method

.method public static readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 936
    const-string v4, "pref_video_effect_key"

    const-string v5, "none"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, effectSelection:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 964
    :cond_0
    :goto_0
    return-object v0

    .line 940
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 941
    .local v2, separatorIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, effectParameter:Ljava/lang/String;
    const-string v4, "goofy_face"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 944
    const-string v4, "squeeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 945
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 946
    :cond_2
    const-string v4, "big_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 947
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 948
    :cond_3
    const-string v4, "big_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 949
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 950
    :cond_4
    const-string v4, "small_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 951
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 952
    :cond_5
    const-string v4, "big_nose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 953
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 954
    :cond_6
    const-string v4, "small_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 955
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 957
    :cond_7
    const-string v4, "backdropper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 963
    :cond_8
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid effect selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 964
    goto/16 :goto_0
.end method

.method public static readEffectType(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 923
    const-string v2, "pref_video_effect_key"

    const-string v3, "none"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, effectSelection:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    :goto_0
    return v1

    .line 926
    :cond_0
    const-string v2, "goofy_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 927
    const/4 v1, 0x1

    goto :goto_0

    .line 928
    :cond_1
    const-string v2, "backdropper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    const/4 v1, 0x2

    goto :goto_0

    .line 931
    :cond_2
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid effect selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/ComboPreferences;)I
    .locals 5
    .parameter "preferences"

    .prologue
    .line 911
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, exposure:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 919
    :goto_0
    return v2

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 900
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 740
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 741
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 742
    .local v0, child:Lcom/android/camera/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 743
    check-cast v3, Lcom/android/camera/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 753
    .end local v0           #child:Lcom/android/camera/CameraPreference;
    :goto_1
    return v3

    .line 747
    .restart local v0       #child:Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/ListPreference;

    .end local v0           #child:Lcom/android/camera/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 750
    goto :goto_1

    .line 740
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 354
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 355
    return-void
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 797
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 799
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 801
    :cond_0
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"

    .prologue
    const/4 v5, -0x1

    .line 969
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 972
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 973
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 974
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 975
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 976
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 977
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 979
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 980
    .local v3, frontCameraId:I
    if-eq v3, v5, :cond_1

    .line 981
    invoke-virtual {p1, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 982
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 983
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 984
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 989
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 991
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 992
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 997
    invoke-static {p0, p2}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 998
    invoke-static {p0, p2}, Lcom/android/camera/CameraSettings;->initialCameraVideoSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 999
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1000
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 371
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 372
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v5

    .line 373
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 374
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 375
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 376
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 377
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 378
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "group"
    .parameter "preferences"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 183
    if-eqz p0, :cond_1

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 185
    .local v1, listPref:Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1, p3}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    .end local v1           #listPref:Lcom/android/camera/ListPreference;
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_1

    .line 805
    const-string v3, "CameraSettings"

    const-string v4, "the input for sizeListToStringList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v1, 0x0

    .line 812
    :cond_0
    return-object v1

    .line 808
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 810
    .local v2, size:Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static upgradeCameraId(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 890
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 891
    .local v0, cameraId:I
    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 894
    .local v1, n:I
    if-ltz v0, :cond_2

    if-lt v0, v1, :cond_0

    .line 895
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 835
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeOldVersion(Landroid/content/SharedPreferences;)V

    .line 836
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeCameraId(Landroid/content/SharedPreferences;)V

    .line 837
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x2

    .line 818
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 822
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 832
    :goto_1
    return-void

    .line 819
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 820
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 824
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 825
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 828
    const-string v3, "pref_video_quality_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 830
    :cond_1
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 831
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeOldVersion(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 842
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 846
    .local v3, version:I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 883
    :goto_1
    return-void

    .line 843
    .end local v3           #version:I
    :catch_0
    move-exception v1

    .line 844
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 848
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 849
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 852
    const/4 v3, 0x1

    .line 854
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 856
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 858
    const-string v2, "normal"

    .line 864
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 865
    const/4 v3, 0x2

    .line 867
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 868
    const-string v5, "pref_camera_recordlocation_key"

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "on"

    :goto_3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 872
    const/4 v3, 0x3

    .line 874
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 877
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 878
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 881
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 859
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 860
    const-string v2, "fine"

    goto :goto_2

    .line 862
    :cond_6
    const-string v2, "superfine"

    goto :goto_2

    .line 868
    .end local v2           #quality:Ljava/lang/String;
    :cond_7
    const-string v4, "none"

    goto :goto_3
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 905
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 906
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 907
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 908
    return-void
.end method


# virtual methods
.method public varargs getPictureSizeListFor9970Show([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    .line 142
    aget-object v6, p1, v0

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 143
    .local v1, index:I
    aget-object v6, p1, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 144
    .local v3, pictureWidth:I
    aget-object v6, p1, v0

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, pictureHeight:I
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_1

    .line 146
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 147
    .local v4, size:Landroid/hardware/Camera$Size;
    if-eqz v4, :cond_0

    .line 148
    iput v3, v4, Landroid/hardware/Camera$Size;->width:I

    .line 149
    iput v2, v4, Landroid/hardware/Camera$Size;->height:I

    .line 150
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_1
    const-string v6, "CameraSettings"

    const-string v7, "----9970 pictureSize want to show, but mParameters = null, so return"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v5, 0x0

    .line 157
    .end local v1           #index:I
    .end local v2           #pictureHeight:I
    .end local v3           #pictureWidth:I
    .end local v5           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    return-object v5
.end method

.method public getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 162
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 163
    .local v1, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 165
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/PreferenceGroup;)V

    .line 166
    :cond_0
    return-object v0
.end method
