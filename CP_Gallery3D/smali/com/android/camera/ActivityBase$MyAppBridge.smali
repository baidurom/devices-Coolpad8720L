.class Lcom/android/camera/ActivityBase$MyAppBridge;
.super Lcom/android/gallery3d/app/AppBridge;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppBridge"
.end annotation


# instance fields
.field private mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mServer:Lcom/android/gallery3d/app/AppBridge$Server;

.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Lcom/android/gallery3d/app/AppBridge;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ActivityBase$MyAppBridge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V

    return-void
.end method

.method private notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->notifyScreenNailChanged()V

    .line 1140
    :cond_0
    return-void
.end method

.method private setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setSwipingEnabled(Z)V

    .line 1136
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/app/AppBridge$Server;->addSecureAlbumItem(ZI)V

    .line 1124
    :cond_0
    return-void
.end method

.method public attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5

    .prologue
    .line 1035
    iget-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_0

    .line 1036
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_1

    .line 1037
    new-instance v3, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$Listener;)V

    iput-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1053
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v3

    .line 1039
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    iget v3, v3, Lcom/android/camera/ActivityBase;->mCurrentModuleIndex:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1040
    new-instance v3, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$Listener;)V

    iput-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020226

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1046
    .local v2, screenWidth:I
    iget-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1047
    .local v1, screenHeight:I
    new-instance v3, Lcom/android/camera/StaticBitmapScreenNail;

    invoke-direct {v3, v2, v1}, Lcom/android/camera/StaticBitmapScreenNail;-><init>(II)V

    iput-object v3, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public detachScreenNail()V
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1059
    return-void
.end method

.method public getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isPanoramaActivity()Z

    move-result v0

    return v0
.end method

.method public isStaticCamera()Z
    .locals 1

    .prologue
    .line 1119
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onAnimationEnd()V

    .line 1150
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onAnimationStart()V

    .line 1156
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onCaptureTextureCopied()V

    .line 1105
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V

    .line 1088
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onPreviewTextureCopied()V

    .line 1100
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    #calls: Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/camera/ActivityBase;->access$1000(Lcom/android/camera/ActivityBase;II)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRenderForced()V

    .line 1095
    :cond_0
    return-void
.end method

.method public setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    .line 1110
    return-void
.end method
