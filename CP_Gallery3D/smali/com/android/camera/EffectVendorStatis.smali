.class public Lcom/android/camera/EffectVendorStatis;
.super Lcom/android/camera/CameraEffectBase;
.source "EffectVendorStatis.java"


# instance fields
.field protected mEffectName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mSwitchToNightshot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "handler"
    .parameter "EffectService"
    .parameter "context"
    .parameter "para"

    .prologue
    .line 46
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/CameraEffectBase;-><init>(Landroid/media/ImageEffectService;Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 33
    const-string v0, "vendorstatis"

    iput-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectName:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/EffectVendorStatis;->mPaused:Z

    .line 41
    const-string v0, "invalid"

    iput-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mSwitchToNightshot:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/EffectVendorStatis;->SetEffectName(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/camera/EffectVendorStatis;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 142
    const-string v2, "EffectVendorStatis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/EffectVendorStatis;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/android/camera/EffectVendorStatis;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, k:Ljava/lang/String;
    const-string v3, "EffectVendorStatis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/EffectVendorStatis;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v1           #k:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public CloseEffect()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->CloseEffect()V

    .line 150
    return-void
.end method

.method public EndCapture()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public OpenEffect()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectService:Landroid/media/ImageEffectService;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/media/ImageEffectService;

    invoke-direct {v0}, Landroid/media/ImageEffectService;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectService:Landroid/media/ImageEffectService;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v1, p0, Lcom/android/camera/EffectVendorStatis;->mEffectName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageEffectService;->loadEffectPlugIn(Ljava/lang/String;Z)Landroid/media/ImageEffectProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectProxy:Landroid/media/ImageEffectProxy;

    .line 85
    iget-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectProxy:Landroid/media/ImageEffectProxy;

    if-nez v0, :cond_1

    .line 86
    const-string v0, "EffectVendorStatis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>loading plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/EffectVendorStatis;->mEffectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectService:Landroid/media/ImageEffectService;

    iget-object v1, p0, Lcom/android/camera/EffectVendorStatis;->mEffectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/ImageEffectService;->setEffectMode(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0, p0}, Landroid/media/ImageEffectProxy;->setGeneralCb(Landroid/media/ImageEffectProxy$GeneticCallback;)V

    goto :goto_0
.end method

.method public StartCapture()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onGeneralCallback(ILjava/lang/String;II)V
    .locals 13
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 107
    const/16 v8, 0x70

    if-eq p1, v8, :cond_1

    .line 108
    const-string v8, "EffectVendorStatis"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>>>>>>skip the on onGeneralCallback with invalied datatype "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/camera/EffectVendorStatis;->mPaused:Z

    if-eqz v8, :cond_2

    .line 112
    const-string v8, "EffectVendorStatis"

    const-string v9, ">>>>>>>skip the on onGeneralCallback"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    iget-object v8, p0, Lcom/android/camera/EffectVendorStatis;->mMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 117
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3b

    invoke-direct {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 118
    .local v6, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 120
    invoke-interface {v6}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, kv:Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 122
    .local v5, pos:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 125
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, k:Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, v:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/EffectVendorStatis;->mMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    .end local v2           #k:Ljava/lang/String;
    .end local v3           #kv:Ljava/lang/String;
    .end local v5           #pos:I
    .end local v7           #v:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/EffectVendorStatis;->dump()V

    .line 131
    iget-object v8, p0, Lcom/android/camera/EffectVendorStatis;->mMap:Ljava/util/HashMap;

    const-string v9, "EnterBlack"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, doSwitch:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/camera/EffectVendorStatis;->mSwitchToNightshot:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 133
    iput-object v0, p0, Lcom/android/camera/EffectVendorStatis;->mSwitchToNightshot:Ljava/lang/String;

    .line 134
    iget-object v8, p0, Lcom/android/camera/EffectVendorStatis;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    .line 135
    iget-object v8, p0, Lcom/android/camera/EffectVendorStatis;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x15b3

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/EffectVendorStatis;->mSwitchToNightshot:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 136
    .local v4, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/camera/EffectVendorStatis;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onPause()V

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/EffectVendorStatis;->mPaused:Z

    .line 59
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 60
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectVendorStatis;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 61
    const-string v1, "plugin_paused"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/EffectVendorStatis;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/camera/CameraEffectBase;->onResume()V

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/EffectVendorStatis;->mPaused:Z

    .line 68
    new-instance v0, Landroid/media/MMPlugInParam;

    invoke-direct {v0}, Landroid/media/MMPlugInParam;-><init>()V

    .line 69
    .local v0, PluginParam:Landroid/media/MMPlugInParam;
    iget-object v1, p0, Lcom/android/camera/EffectVendorStatis;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v1}, Landroid/media/ImageEffectProxy;->getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MMPlugInParam;->unflatten(Ljava/lang/String;)V

    .line 70
    const-string v1, "plugin_paused"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/media/MMPlugInParam;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/EffectVendorStatis;->mEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-virtual {v0}, Landroid/media/MMPlugInParam;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/ImageEffectProxy;->setParameters(Ljava/lang/String;)V

    .line 72
    return-void
.end method
