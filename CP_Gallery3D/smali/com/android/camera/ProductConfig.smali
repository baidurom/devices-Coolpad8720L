.class public Lcom/android/camera/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# static fields
.field public static isSupportImageEffect:Z

.field public static ishasImageNumber:Z

.field public static mPlatformID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ProductConfig;->ishasImageNumber:Z

    .line 42
    invoke-static {}, Lcom/android/camera/ProductConfig;->getHardwarePlatformID()I

    move-result v0

    sput v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    .line 43
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportImageEffect()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ProductConfig;->isSupportImageEffect:Z

    return-void
.end method

.method public static getFlashModeSupported()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 266
    const/4 v0, 0x1

    .line 268
    .local v0, bResult:Z
    const-string v5, "com.yulong.android.feature.FeatureConfig"

    new-array v6, v9, [Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 270
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 271
    .local v3, instance:Ljava/lang/Object;
    const-string v5, "com.yulong.android.feature.FeatureConfig"

    const-string v6, "getBooleanValue"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 273
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 274
    const-string v5, "com.yulong.android.feature.FeatureString"

    const-string v6, "CAMERA_FLASHLIGHT_SUPPORTED"

    invoke-static {v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, flashlight:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 276
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v3, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 281
    .end local v2           #flashlight:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 278
    .restart local v2       #flashlight:Ljava/lang/String;
    :cond_1
    const-string v5, "ProductConfig"

    const-string v6, "----getFlashModeSupported()--flashlight = null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getHardwarePlatformID()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 49
    const-string v5, "com.yulong.android.feature.FeatureConfig"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 51
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, instance:Ljava/lang/Object;
    const-string v5, "com.yulong.android.feature.FeatureConfig"

    const-string v6, "getIntValue"

    new-array v7, v9, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 54
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 55
    const-string v5, "com.yulong.android.feature.FeatureString"

    const-string v6, "PLATFORM"

    invoke-static {v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, platfromID:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 57
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v2, v1, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 62
    .end local v3           #platfromID:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 59
    .restart local v3       #platfromID:Ljava/lang/String;
    :cond_1
    const-string v5, "ProductConfig"

    const-string v6, "----getHardwarePlatformID()--platfromID = null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOperationsName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string v1, "com.yulong.android.feature.YulongFeature"

    const-string v2, "FEATURE_CARRIER"

    invoke-static {v1, v2}, Lcom/android/gallery3d/common/ApiHelper;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, operationsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    const-string v1, "ProductConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----getOperationsName---operationsName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0           #operationsName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 115
    .restart local v0       #operationsName:Ljava/lang/String;
    :cond_0
    const-string v1, "ProductConfig"

    const-string v2, "-----getOperationsName---operationsName = UNKNOW"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "UNKNOW"

    goto :goto_0
.end method

.method public static isChinaMobileCarrier()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, bResult:I
    const-string v5, "com.yulong.android.feature.FeatureConfig"

    new-array v8, v7, [Ljava/lang/Class;

    invoke-static {v5, v8}, Lcom/android/gallery3d/common/ApiHelper;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 77
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, instance:Ljava/lang/Object;
    const-string v5, "com.yulong.android.feature.FeatureConfig"

    const-string v8, "getIntValue"

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v5, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 80
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 81
    const-string v5, "com.yulong.android.feature.FeatureString"

    const-string v8, "NET_CARRIER"

    invoke-static {v5, v8}, Lcom/android/gallery3d/common/ApiHelper;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v4, netCarrier:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 83
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-static {v3, v2, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .end local v4           #netCarrier:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    move v5, v6

    :goto_1
    return v5

    .line 85
    .restart local v4       #netCarrier:Ljava/lang/String;
    :cond_1
    const-string v5, "ProductConfig"

    const-string v8, "----isChinaMobileCarrier()--netCarrier = null "

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #netCarrier:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 88
    goto :goto_1
.end method

.method public static isCoolRom()Z
    .locals 3

    .prologue
    .line 65
    const-string v2, "ro.coolrom.version.code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, prop:Ljava/lang/String;
    const/4 v0, 0x0

    .line 67
    .local v0, is:Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 70
    :cond_0
    return v0
.end method

.method public static isCurrentNetMode()Z
    .locals 3

    .prologue
    .line 92
    const-string v1, "persist.yulong.defaultmode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, val:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isHaveNVCAMERA()Z
    .locals 2

    .prologue
    .line 258
    :try_start_0
    const-string v1, "com.nvidia.NvCamera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    const/4 v1, 0x1

    .line 261
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 260
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 261
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isProductModel(Ljava/lang/String;)Z
    .locals 3
    .parameter "productNameSearchString"

    .prologue
    .line 221
    const-string v1, "ro.product.model"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, productName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 223
    const/4 v1, 0x1

    .line 225
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isQcModuleSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, ret:Z
    const-string v1, "7620L"

    invoke-static {v1}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    and-int/2addr v0, v1

    .line 167
    const-string v1, "8730L"

    invoke-static {v1}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    and-int/2addr v0, v1

    .line 168
    const-string v1, "8702"

    invoke-static {v1}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    and-int/2addr v0, v1

    .line 169
    const-string v1, "8729"

    invoke-static {v1}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    and-int/2addr v0, v2

    .line 170
    return v0

    :cond_0
    move v1, v3

    .line 166
    goto :goto_0

    :cond_1
    move v1, v3

    .line 167
    goto :goto_1

    :cond_2
    move v1, v3

    .line 168
    goto :goto_2

    :cond_3
    move v2, v3

    .line 169
    goto :goto_3
.end method

.method public static isSupportAudioImage()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 192
    const/4 v7, 0x0

    .line 194
    .local v7, isSupport:Z
    const/4 v2, 0x0

    .line 195
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 197
    .local v4, fileItems:[Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v11, "/system/lib/"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 204
    if-eqz v4, :cond_0

    array-length v11, v4

    if-nez v11, :cond_1

    :cond_0
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move v7, v10

    .line 217
    .end local v7           #isSupport:Z
    :goto_0
    return v7

    .line 199
    .restart local v7       #isSupport:Z
    :catch_0
    move-exception v1

    .line 200
    .local v1, ex:Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    .line 201
    const/4 v4, 0x0

    move v7, v10

    .line 202
    goto :goto_0

    .line 207
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v9, v0

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v9, :cond_2

    aget-object v8, v0, v6

    .line 208
    .local v8, item:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, fileName:Ljava/lang/String;
    const-string v10, "libjpgmp3mix.so"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 210
    const/4 v7, 0x1

    .line 214
    .end local v5           #fileName:Ljava/lang/String;
    .end local v8           #item:Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/android/camera/ProductConfig;->isCurrentNetMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 215
    const/4 v7, 0x0

    :cond_3
    move-object v2, v3

    .line 217
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_0

    .line 207
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileName:Ljava/lang/String;
    .restart local v8       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 199
    .end local v0           #arr$:[Ljava/io/File;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #item:Ljava/io/File;
    .end local v9           #len$:I
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1
.end method

.method static isSupportFaceTrack()Z
    .locals 2

    .prologue
    .line 251
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSupportGifCapture()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    :try_start_0
    const-class v4, Landroid/graphics/YuvImage;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, [I

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 232
    const-class v4, Landroid/graphics/YuvImage;

    const-string v5, "compressToGif"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/io/OutputStream;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :goto_0
    return v2

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :goto_1
    move v2, v3

    .line 242
    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    .line 240
    .local v1, e1:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static isSupportHDR()Z
    .locals 2

    .prologue
    .line 151
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/ProductConfig;->isQcModuleSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 158
    :cond_1
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportImageEffect()Z
    .locals 9

    .prologue
    .line 121
    const/4 v5, 0x0

    .line 123
    .local v5, isSupport:Z
    new-instance v1, Ljava/io/File;

    const-string v8, "/system/lib/"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 125
    .local v2, fileItems:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v6, v0, v4

    .line 126
    .local v6, item:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, fileName:Ljava/lang/String;
    const-string v8, "libimageeffect_jni.so"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    const/4 v5, 0x1

    .line 125
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #item:Ljava/io/File;
    :cond_1
    const-string v8, "8705"

    invoke-static {v8}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 132
    const/4 v5, 0x0

    .line 134
    :cond_2
    return v5
.end method

.method static isSupportLongPressContinuousShot()Z
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, mSupportShotMode:Z
    sget v1, Lcom/android/camera/ProductConfig;->mPlatformID:I

    .line 185
    const/4 v0, 0x0

    .line 188
    return v0
.end method

.method public static isSupportPerfect365(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, isSupport:Z
    const/4 v2, 0x0

    .line 291
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.arcsoft.camera.perfect365"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 293
    const/4 v1, 0x1

    .line 298
    const/4 v2, 0x0

    .line 299
    const-string v3, "8970L"

    invoke-static {v3}, Lcom/android/camera/ProductConfig;->isProductModel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const-string v3, "ProductConfig"

    const-string v4, "this is a support model!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v1, 0x1

    .line 303
    :cond_0
    invoke-static {}, Lcom/android/camera/ProductConfig;->isCurrentNetMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    const/4 v1, 0x0

    :cond_1
    move v3, v1

    .line 306
    :goto_0
    return v3

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ProductConfig"

    const-string v4, "not support 365!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isSupportSelfCamera()Z
    .locals 2

    .prologue
    .line 144
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportThumbnailSlideAnimation()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method static isSupportTrackSolid()Z
    .locals 2

    .prologue
    .line 245
    sget v0, Lcom/android/camera/ProductConfig;->mPlatformID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVideoPause()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, issu:Z
    const-string v3, "android.media.MediaRecorder"

    const-string v4, "resume"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    .local v1, method1:Ljava/lang/reflect/Method;
    const-string v3, "android.media.MediaRecorder"

    const-string v4, "pause"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 100
    .local v2, method2:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0
.end method

.method public static isSupportedBootAnimation()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method
