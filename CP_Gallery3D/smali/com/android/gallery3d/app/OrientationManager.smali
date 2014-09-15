.class public Lcom/android/gallery3d/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/android/gallery3d/ui/OrientationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;,
        Lcom/android/gallery3d/app/OrientationManager$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/OrientationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

.field private mOrientationLocked:Z

.field private mRotationLockedSetting:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    .line 48
    iput-boolean v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 53
    iput v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 57
    iput-boolean v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    .line 60
    iput-object p1, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;-><init>(Lcom/android/gallery3d/app/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/OrientationManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/OrientationManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/OrientationManager;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/OrientationManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/OrientationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->updateCompensation()V

    return-void
.end method

.method private disableCompensation()V
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 161
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->notifyListeners()V

    .line 163
    :cond_0
    return-void
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 220
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    return v1

    .line 222
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 223
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 224
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 166
    iget-object v3, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/OrientationManager$Listener;

    invoke-interface {v2}, Lcom/android/gallery3d/app/OrientationManager$Listener;->onOrientationCompensationChanged()V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    monitor-exit v3

    .line 171
    return-void

    .line 170
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 205
    const/4 v0, 0x1

    .line 211
    :goto_0
    if-eqz v0, :cond_0

    .line 212
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 214
    .end local p1
    :cond_0
    return p1

    .line 207
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 208
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 209
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCompensation()V
    .locals 3

    .prologue
    .line 144
    iget v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    iget-object v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 151
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 152
    iput v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 153
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->notifyListeners()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    iget-boolean v4, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    if-eqz v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-nez v4, :cond_0

    .line 101
    iput-boolean v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation()I

    move-result v0

    .line 104
    .local v0, displayRotation:I
    const/16 v4, 0xb4

    if-ge v0, v4, :cond_2

    move v1, v2

    .line 105
    .local v1, standard:Z
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 107
    const-string v2, "OrientationManager"

    const-string v4, "lock orientation to landscape"

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 123
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->updateCompensation()V

    goto :goto_0

    .end local v1           #standard:Z
    :cond_2
    move v1, v3

    .line 104
    goto :goto_1

    .line 111
    .restart local v1       #standard:Z
    :cond_3
    const/16 v4, 0x5a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_5

    .line 116
    :cond_4
    if-nez v1, :cond_6

    move v1, v2

    .line 118
    :cond_5
    :goto_3
    const-string v3, "OrientationManager"

    const-string v4, "lock orientation to portrait"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v3, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_6
    move v1, v3

    .line 116
    goto :goto_3
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 74
    return-void
.end method

.method public removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 70
    return-void

    :cond_0
    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 137
    const-string v0, "OrientationManager"

    const-string v1, "unlock orientation"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 139
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->disableCompensation()V

    goto :goto_0
.end method
