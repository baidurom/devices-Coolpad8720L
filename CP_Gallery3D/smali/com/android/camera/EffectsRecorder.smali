.class public Lcom/android/camera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;,
        Lcom/android/camera/EffectsRecorder$EffectsListener;
    }
.end annotation


# static fields
.field private static sClassFilter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphEnvironment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphRunner:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsLearningDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRecordingDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRunnerDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsSurfaceTextureSourceListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtGraphEnvironment:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtPoint:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtQuad:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private static sEffectsRecorderIndex:I

.field private static sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

.field private static sFilterGraphGetFilter:Ljava/lang/reflect/Method;

.field private static sFilterGraphTearDown:Ljava/lang/reflect/Method;

.field private static sFilterIsAvailable:Ljava/lang/reflect/Method;

.field private static sFilterSetInputValue:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentActivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetError:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerRun:Ljava/lang/reflect/Method;

.field private static sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

.field private static sGraphRunnerStop:Ljava/lang/reflect/Method;

.field private static sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

.field private static sObjectEquals:Ljava/lang/reflect/Method;

.field private static sObjectToString:Ljava/lang/reflect/Method;

.field private static sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

.field private static sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

.field private static sReflectionInited:Z

.field private static sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

.field private static sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;


# instance fields
.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisplayOrientation:I

.field private mCameraFacing:I

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Ljava/lang/Object;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Ljava/lang/Object;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOldRunner:Ljava/lang/Object;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Ljava/lang/Object;

.field private mRunner:Ljava/lang/Object;

.field private mRunnerDoneCallback:Ljava/lang/Object;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mSourceReadyCallback:Ljava/lang/Object;

.field private mState:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 57
    sput-boolean v2, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    .line 110
    :try_start_0
    const-string v2, "android.filterfw.core.Filter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    .line 111
    sget-object v2, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v3, "isAvailable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/camera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v2, "EffectsRecorder"

    const-string v3, "Can\'t find the class android.filterfw.core.Filter"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "EffectsRecorder"

    const-string v3, "Can\'t find the method Filter.isAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 153
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 154
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    .line 155
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    .line 156
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 159
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 160
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 167
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 168
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 178
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 180
    const-string v9, "EffectsRecorder"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    .line 207
    iget-boolean v9, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v9, :cond_0

    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EffectsRecorder created ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    sget-boolean v9, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    if-nez v9, :cond_1

    .line 211
    :try_start_0
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v10, "setInputValue"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    .line 214
    const-string v9, "android.filterfw.geometry.Point"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 215
    .local v4, clsPoint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    .line 218
    const-string v9, "android.filterfw.geometry.Quad"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 219
    .local v5, clsQuad:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    .line 222
    const-string v9, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, clsBackDropperFilter:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "android.filterpacks.videoproc.BackDropperFilter$LearningDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    .line 226
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    const-string v10, "onLearningDone"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    .line 229
    const-class v9, Ljava/lang/Object;

    const-string v10, "equals"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    .line 230
    const-class v9, Ljava/lang/Object;

    const-string v10, "toString"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    .line 232
    const-string v9, "android.filterfw.core.GraphRunner$OnRunnerDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    .line 234
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    const-string v10, "onRunnerDone"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    .line 237
    const-string v9, "android.filterfw.core.GraphRunner"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    .line 238
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "getGraph"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    .line 239
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "setDoneCallback"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    .line 241
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "run"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    .line 242
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "getError"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    .line 243
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "stop"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    .line 245
    const-string v9, "android.filterfw.core.FilterContext"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 246
    .local v1, clsFilterContext:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getGLEnvironment"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    .line 249
    const-string v9, "android.filterfw.core.FilterGraph"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 250
    .local v2, clsFilterGraph:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getFilter"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    .line 252
    const-string v9, "tearDown"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    .line 255
    const-string v9, "android.filterfw.GraphEnvironment"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    .line 256
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    .line 257
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "createGLEnvironment"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    .line 259
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "getRunner"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    .line 261
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "addReferences"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    .line 263
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "loadGraph"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    .line 265
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "getContext"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    .line 268
    const-string v9, "android.filterfw.core.GLEnvironment"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 269
    .local v3, clsGLEnvironment:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "isActive"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    .line 270
    const-string v9, "activate"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    .line 271
    const-string v9, "deactivate"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    .line 273
    const-string v9, "android.filterpacks.videosrc.SurfaceTextureTarget"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 275
    .local v6, clsSurfaceTextureTarget:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "disconnect"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    .line 278
    const-string v9, "android.filterpacks.videosink.MediaEncoderFilter$OnRecordingDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    .line 280
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    const-string v10, "onRecordingDone"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    .line 283
    const-string v9, "android.filterpacks.videosrc.SurfaceTextureSource$SurfaceTextureSourceListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    .line 285
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    const-string v10, "onSurfaceTextureSourceReady"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/graphics/SurfaceTexture;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    .line 296
    .end local v0           #clsBackDropperFilter:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clsFilterContext:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #clsFilterGraph:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #clsGLEnvironment:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #clsPoint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #clsQuad:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #clsSurfaceTextureTarget:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    sget v9, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    .line 297
    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current effects recorder index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sput-object p0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 299
    new-instance v8, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;

    sget v9, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-direct {v8, v9}, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;-><init>(I)V

    .line 301
    .local v8, sih:Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    .line 304
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    .line 307
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    .line 310
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    .line 314
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 315
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 316
    invoke-static {p1}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 317
    return-void

    .line 289
    .end local v8           #sih:Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;
    :catch_0
    move-exception v7

    .line 290
    .local v7, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method static synthetic access$000()Lcom/android/camera/EffectsRecorder;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/EffectsRecorder;->invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeOnRecordingDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/EffectsRecorder;)Lcom/android/camera/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/EffectsRecorder;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/EffectsRecorder;->invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/EffectsRecorder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeObjectToString()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeOnLearningDone()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/EffectsRecorder;->invokeOnRunnerDone([Ljava/lang/Object;)V

    return-void
.end method

.method private getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1237
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "receiver"

    .prologue
    .line 1219
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "receiver"
    .parameter "name"

    .prologue
    .line 1210
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "receiver"
    .parameter "filterContext"

    .prologue
    .line 1228
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    return-void

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 13
    .parameter "forceReset"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 608
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v3, v11, :cond_5

    .line 612
    :cond_0
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurfaceTexture"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "orientation"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_1

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_2

    .line 621
    :cond_1
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 624
    :cond_2
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    packed-switch v3, :pswitch_data_0

    .line 637
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown effect ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 626
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f080008

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 639
    :goto_0
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 641
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 642
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v8, "MODE_ASYNCHRONOUS"

    invoke-direct {p0, v7, v8}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 645
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_3

    .line 647
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Old runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_4

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_5

    .line 654
    :cond_4
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 655
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 656
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 660
    :cond_5
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    packed-switch v3, :pswitch_data_1

    .line 687
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 688
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    .line 631
    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 632
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x7f08

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 662
    :pswitch_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 663
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "goofyrenderer"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 664
    .local v1, goofyFilter:Ljava/lang/Object;
    const-string v4, "currentEffect"

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v4, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 668
    .end local v1           #goofyFilter:Ljava/lang/Object;
    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 669
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "background"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 670
    .local v0, backgroundSrc:Ljava/lang/Object;
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    if-eqz v3, :cond_7

    .line 673
    const-string v3, "context"

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    :cond_7
    const-string v3, "sourceUrl"

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-ne v3, v10, :cond_6

    .line 679
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "replacer"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 680
    .local v2, replacer:Ljava/lang/Object;
    const-string v3, "mirrorBg"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_6

    const-string v3, "EffectsRecorder"

    const-string v4, "Setting the background to be mirrored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 660
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 583
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v3}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    .line 584
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 586
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 587
    .local v2, videoFrameWidth:I
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 588
    .local v1, videoFrameHeight:I
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 589
    :cond_0
    move v0, v2

    .line 590
    .local v0, tmp:I
    move v2, v1

    .line 591
    move v1, v0

    .line 594
    .end local v0           #tmp:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "textureSourceCallback"

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v8, "recordingWidth"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "recordingHeight"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "recordingProfile"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "learningDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "recordingDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    aput-object v6, v5, v9

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 603
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 604
    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 605
    return-void
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .parameter "receiver"
    .parameter "method"

    .prologue
    .line 1169
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "receiver"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 1178
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "proxy"
    .parameter "args"

    .prologue
    const/4 v0, 0x0

    .line 737
    aget-object v1, p2, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private invokeObjectToString()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeOnLearningDone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 745
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 749
    invoke-virtual {p0, v2}, Lcom/android/camera/EffectsRecorder;->enable3ALocks(Z)V

    .line 750
    return-void
.end method

.method private invokeOnRecordingDone()V
    .locals 2

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 887
    return-void
.end method

.method private invokeOnRunnerDone([Ljava/lang/Object;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 753
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 754
    .local v2, runnerDoneResult:I
    monitor-enter p0

    .line 755
    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 756
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Graph runner done ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v4, "RESULT_ERROR"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 764
    const-string v3, "EffectsRecorder"

    const-string v4, "Error running filter graph!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 767
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    check-cast v0, Ljava/lang/Exception;

    .line 771
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    .line 773
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 775
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_3

    const-string v3, "EffectsRecorder"

    const-string v4, "Tearing down old graph."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_3
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/camera/EffectsRecorder;->getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 777
    .local v1, glEnv:Ljava/lang/Object;
    if-eqz v1, :cond_4

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 778
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 780
    :cond_4
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 782
    if-eqz v1, :cond_5

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 783
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 785
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 787
    .end local v1           #glEnv:Ljava/lang/Object;
    :cond_6
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v7, :cond_7

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v6, :cond_c

    .line 790
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_8

    .line 791
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous effect halted. Running graph again. state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 806
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v4, "RESULT_ERROR"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_9

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v3, v6, :cond_9

    .line 809
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 811
    :cond_9
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 820
    :cond_a
    :goto_1
    monitor-exit p0

    .line 821
    return-void

    .line 768
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_b
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 769
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    check-cast v0, Ljava/lang/Exception;

    .restart local v0       #e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 812
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    .line 814
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_d

    const-string v3, "EffectsRecorder"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 816
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    goto :goto_1

    .line 820
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 824
    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 825
    .local v0, source:Landroid/graphics/SurfaceTexture;
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    monitor-enter p0

    .line 827
    :try_start_0
    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    .line 829
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-nez v1, :cond_2

    .line 833
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1
    monitor-exit p0

    .line 881
    :goto_0
    return-void

    .line 836
    :cond_2
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v1, v4, :cond_4

    .line 839
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_3

    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: Already released, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 880
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 842
    :cond_4
    if-nez v0, :cond_9

    .line 843
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_5

    .line 844
    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: source null! Looks like graph was closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_5
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 852
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_7

    .line 853
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready callback: State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". stopCameraPreview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 859
    :cond_8
    monitor-exit p0

    goto :goto_0

    .line 863
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 865
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 866
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_a

    const-string v1, "EffectsRecorder"

    const-string v2, "Runner active, connecting effects preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_a
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 869
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 872
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 874
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 876
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_b

    const-string v1, "EffectsRecorder"

    const-string v2, "Start preview/effect switch complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_b
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 880
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1202
    .local p1, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "initArgs"
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
    .line 1194
    .local p1, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/EffectsRecorder$2;-><init>(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1164
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/EffectsRecorder$1;-><init>(Lcom/android/camera/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1149
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 488
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 489
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "rotate"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 490
    .local v2, rotateFilter:Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "metarotate"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 491
    .local v0, metaRotateFilter:Ljava/lang/Object;
    const-string v3, "rotation"

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 493
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    .end local v0           #metaRotateFilter:Ljava/lang/Object;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "receiver"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1186
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setRecordingOrientation()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 498
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v6, v12, :cond_0

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 499
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 500
    .local v0, bl:Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 501
    .local v1, br:Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 502
    .local v4, tl:Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 504
    .local v5, tr:Ljava/lang/Object;
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 506
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v1, v7, v10

    aput-object v4, v7, v11

    aput-object v5, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 518
    .local v3, recordingRegion:Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v7, "recorder"

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 519
    .local v2, recorder:Ljava/lang/Object;
    const-string v6, "inputRegion"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    .end local v0           #bl:Ljava/lang/Object;
    .end local v1           #br:Ljava/lang/Object;
    .end local v2           #recorder:Ljava/lang/Object;
    .end local v3           #recordingRegion:Ljava/lang/Object;
    .end local v4           #tl:Ljava/lang/Object;
    .end local v5           #tr:Ljava/lang/Object;
    :cond_0
    return-void

    .line 510
    .restart local v0       #bl:Ljava/lang/Object;
    .restart local v1       #br:Ljava/lang/Object;
    .restart local v4       #tl:Ljava/lang/Object;
    .restart local v5       #tr:Ljava/lang/Object;
    :cond_1
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 512
    :cond_2
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    aput-object v5, v7, v11

    aput-object v4, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #recordingRegion:Ljava/lang/Object;
    goto :goto_0

    .line 515
    .end local v3           #recordingRegion:Ljava/lang/Object;
    :cond_3
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v9

    aput-object v5, v7, v10

    aput-object v0, v7, v11

    aput-object v1, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #recordingRegion:Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disconnectCamera()V
    .locals 2

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Disconnecting the effects from Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    monitor-exit p0

    return-void

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDisplay()V
    .locals 6

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Disconnecting the graph from the SurfaceTexture"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v2, "display"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 974
    .local v0, display:Ljava/lang/Object;
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    monitor-exit p0

    return-void

    .line 971
    .end local v0           #display:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized enable3ALocks(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 1075
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Enable3ALocks"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_2

    .line 1077
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Not enabling 3A locks."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :cond_1
    monitor-exit p0

    return-void

    .line 1080
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1081
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1075
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1130
    :goto_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v0}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1134
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 1137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    monitor-exit p0

    return-void

    .line 1127
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1123
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 2
    .parameter "cameraDevice"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 331
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 322
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 324
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 537
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraDisplayOrientation called after configuration!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    .line 542
    return-void
.end method

.method public setCameraFacing(I)V
    .locals 2
    .parameter "facing"

    .prologue
    .line 545
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 552
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 553
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 554
    return-void

    .line 547
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraFacing called on alrady released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 412
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 422
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time lapse capture rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 424
    return-void

    .line 414
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect: effect ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 469
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 470
    iput-object p2, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 472
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 474
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 476
    :cond_2
    return-void

    .line 462
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    .line 485
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 2
    .parameter "maxDurationMs"

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 407
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 400
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 402
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 2
    .parameter "maxFileSize"

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 390
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 383
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 385
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2
    .parameter "errorListener"

    .prologue
    .line 570
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 579
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 580
    return-void

    .line 572
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .parameter "infoListener"

    .prologue
    .line 557
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 566
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 567
    return-void

    .line 559
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 523
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 530
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 532
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 533
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 534
    return-void

    .line 525
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOrientationHint called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 361
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 372
    return-void

    .line 363
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "outputFile"

    .prologue
    .line 347
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 356
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 358
    return-void

    .line 349
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "previewSurfaceTexture"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurfaceTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 441
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 442
    iput p2, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    .line 443
    iput p3, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    .line 445
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_1

    .line 454
    :goto_0
    return-void

    .line 432
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 451
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 445
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 335
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 343
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 344
    return-void

    .line 337
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 692
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 708
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_1

    .line 709
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect selected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 698
    :pswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    :goto_0
    monitor-exit p0

    return-void

    .line 701
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot start preview when already recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 712
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_3

    .line 715
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 718
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "EffectsRecorder"

    const-string v1, "Passed a null surface; waiting for valid one"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    goto :goto_0

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_6

    .line 723
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "EffectsRecorder"

    const-string v1, "Initializing filter framework and running the graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->initializeFilterFramework()V

    .line 729
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 731
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 732
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized startRecording()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 890
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_0

    const-string v4, "EffectsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting recording ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 902
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v4, :cond_1

    .line 903
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No output file name or descriptor provided!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 894
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Already recording, cannot begin anew!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 896
    :pswitch_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "startRecording called on an already released recorder!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 906
    :cond_1
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-nez v4, :cond_2

    .line 907
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    .line 910
    :cond_2
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v5, "recorder"

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 911
    .local v1, recorder:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_5

    .line 912
    const-string v4, "outputFileDescriptor"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 918
    :goto_0
    const-string v4, "audioSource"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 919
    const-string v4, "recordingProfile"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    const-string v4, "orientationHint"

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 925
    iget-wide v4, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 926
    .local v0, captureTimeLapse:Z
    :goto_1
    if-eqz v0, :cond_7

    .line 927
    const-wide/high16 v4, 0x3ff0

    iget-wide v6, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 928
    .local v2, timeBetweenFrameCapture:D
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v5, v2

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    .end local v2           #timeBetweenFrameCapture:D
    :goto_2
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_3

    .line 936
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    :cond_3
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_4

    .line 939
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    :cond_4
    const-string v4, "maxFileSize"

    iget-wide v5, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 942
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 943
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 944
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 945
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    monitor-exit p0

    return-void

    .line 914
    .end local v0           #captureTimeLapse:Z
    :cond_5
    :try_start_2
    const-string v4, "outputFile"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 925
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 932
    .restart local v0       #captureTimeLapse:Z
    :cond_7
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 892
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized stopCameraPreview()V
    .locals 2

    .prologue
    .line 994
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Stopping camera preview."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 996
    const-string v0, "EffectsRecorder"

    const-string v1, "Camera already null. Nothing to disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    :goto_0
    monitor-exit p0

    return-void

    .line 999
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1000
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 994
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1016
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1017
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V

    .line 1020
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 1023
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 1026
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :goto_0
    monitor-exit p0

    return-void

    .line 1008
    :sswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "StopPreview called when preview not active!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1011
    :sswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1006
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 4

    .prologue
    .line 949
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 962
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v2, "recorder"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 963
    .local v0, recorder:Ljava/lang/Object;
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 964
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 965
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    .end local v0           #recorder:Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-void

    .line 955
    :pswitch_1
    :try_start_1
    const-string v1, "EffectsRecorder"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 949
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 958
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized tryEnable3ALocks(Z)Z
    .locals 4
    .parameter "toggle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1056
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "EffectsRecorder"

    const-string v3, "tryEnable3ALocks"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_2

    .line 1058
    const-string v2, "EffectsRecorder"

    const-string v3, "Camera already null. Not tryenabling 3A locks."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 1061
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1062
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1065
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1066
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    const/4 v1, 0x1

    goto :goto_0

    .line 1056
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    const/4 v2, 0x0

    .line 1035
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "EffectsRecorder"

    const-string v4, "tryEnableVideoStabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_0
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v3, :cond_2

    .line 1037
    const-string v3, "EffectsRecorder"

    const-string v4, "Camera already null. Not enabling video stabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_1
    :goto_0
    return v2

    .line 1040
    :cond_2
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1042
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v3, "video-stabilization-supported"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1044
    iget-boolean v2, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_3

    const-string v2, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_3
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_4

    const-string v2, "true"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1047
    const/4 v2, 0x1

    goto :goto_0

    .line 1045
    :cond_4
    const-string v2, "false"

    goto :goto_1

    .line 1049
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_1

    const-string v3, "EffectsRecorder"

    const-string v4, "Video stabilization not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
