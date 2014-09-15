.class public Lcom/android/gallery3d/app/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# instance fields
.field private mPickedItem:Landroid/net/Uri;

.field private mState:I

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    return-void
.end method

.method private getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .parameter "size"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 73
    .local v0, d:Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 78
    :goto_0
    return-object p1

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 145
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 146
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 151
    iget v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string v0, "activity-state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 55
    const-string v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->screenWidth:I

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->screenHeight:I

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 86
    .local v4, intent:Landroid/content/Intent;
    iget v10, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    packed-switch v10, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 89
    iget-object v10, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-nez v10, :cond_0

    .line 90
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.GET_CONTENT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v11, Lcom/android/gallery3d/app/DialogPicker;

    invoke-virtual {v10, p0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "image/*"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 93
    .local v5, request:Landroid/content/Intent;
    invoke-virtual {p0, v5, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 96
    .end local v5           #request:Landroid/content/Intent;
    :cond_0
    iput v13, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 101
    :pswitch_1
    iget v10, p0, Lcom/android/gallery3d/app/Wallpaper;->screenHeight:I

    iget v11, p0, Lcom/android/gallery3d/app/Wallpaper;->screenWidth:I

    if-le v10, v11, :cond_5

    iget v9, p0, Lcom/android/gallery3d/app/Wallpaper;->screenWidth:I

    .line 102
    .local v9, width:I
    :goto_1
    iget v10, p0, Lcom/android/gallery3d/app/Wallpaper;->screenHeight:I

    iget v11, p0, Lcom/android/gallery3d/app/Wallpaper;->screenWidth:I

    if-le v10, v11, :cond_6

    iget v3, p0, Lcom/android/gallery3d/app/Wallpaper;->screenHeight:I

    .line 103
    .local v3, height:I
    :goto_2
    if-gtz v9, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getWallpaperDesiredMinimumWidth()I

    move-result v9

    .line 104
    :cond_1
    if-gtz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getWallpaperDesiredMinimumHeight()I

    move-result v3

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.gallery3d.app.Wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 107
    .local v2, Wallpaper:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.gallery3d.app.KeyGuardWallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    .local v0, KeyGuardWallpaper:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.gallery3d.app.LauncherMenuWallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    .local v1, LauncherMenuWallpaper:Z
    if-eqz v2, :cond_3

    mul-int/lit8 v9, v9, 0x2

    .line 113
    :cond_3
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/Wallpaper;->getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 114
    .local v6, size:Landroid/graphics/Point;
    iget v10, v6, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    int-to-float v11, v9

    div-float v7, v10, v11

    .line 115
    .local v7, spotlightX:F
    iget v10, v6, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v8, v10, v11

    .line 116
    .local v8, spotlightY:F
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.camera.action.CROP"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    const-string v12, "image/*"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x200

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "outputX"

    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "outputY"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "aspectX"

    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "aspectY"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "spotlightX"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "spotlightY"

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "scale"

    invoke-virtual {v10, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "scaleUpIfNeeded"

    invoke-virtual {v10, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "noFaceDetection"

    invoke-virtual {v10, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 129
    .restart local v5       #request:Landroid/content/Intent;
    if-eqz v0, :cond_7

    .line 130
    const-string v10, "set-as-keyguard-wallpaper"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    :cond_4
    :goto_3
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 101
    .end local v0           #KeyGuardWallpaper:Z
    .end local v1           #LauncherMenuWallpaper:Z
    .end local v2           #Wallpaper:Z
    .end local v3           #height:I
    .end local v5           #request:Landroid/content/Intent;
    .end local v6           #size:Landroid/graphics/Point;
    .end local v7           #spotlightX:F
    .end local v8           #spotlightY:F
    .end local v9           #width:I
    :cond_5
    iget v9, p0, Lcom/android/gallery3d/app/Wallpaper;->screenHeight:I

    goto/16 :goto_1

    .line 102
    .restart local v9       #width:I
    :cond_6
    iget v3, p0, Lcom/android/gallery3d/app/Wallpaper;->screenWidth:I

    goto/16 :goto_2

    .line 131
    .restart local v0       #KeyGuardWallpaper:Z
    .restart local v1       #LauncherMenuWallpaper:Z
    .restart local v2       #Wallpaper:Z
    .restart local v3       #height:I
    .restart local v5       #request:Landroid/content/Intent;
    .restart local v6       #size:Landroid/graphics/Point;
    .restart local v7       #spotlightX:F
    .restart local v8       #spotlightY:F
    :cond_7
    if-eqz v1, :cond_8

    .line 132
    const-string v10, "set-as-launchermenu-wallpaper"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 133
    :cond_8
    if-eqz v2, :cond_4

    .line 134
    const-string v10, "set-as-wallpaper"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 63
    const-string v0, "activity-state"

    iget v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "picked-item"

    iget-object v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    :cond_0
    return-void
.end method
