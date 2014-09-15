.class public Lcom/android/gallery3d/app/GifView;
.super Landroid/app/Activity;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GifView$SampleView;
    }
.end annotation


# instance fields
.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private myView:Lcom/android/gallery3d/app/GifView$SampleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 38
    .local v1, uri:Landroid/net/Uri;
    move-object v2, v1

    .line 39
    .local v2, uriParse:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 43
    :cond_0
    new-instance v3, Lcom/android/gallery3d/app/OrientationManager;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/GifView;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 44
    iget-object v3, p0, Lcom/android/gallery3d/app/GifView;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 45
    new-instance v3, Lcom/android/gallery3d/app/GifView$SampleView;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/app/GifView$SampleView;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/GifView;->myView:Lcom/android/gallery3d/app/GifView$SampleView;

    .line 46
    iget-object v3, p0, Lcom/android/gallery3d/app/GifView;->myView:Lcom/android/gallery3d/app/GifView$SampleView;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/GifView;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    const-string v0, "GifView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
