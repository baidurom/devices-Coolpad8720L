.class Lcom/android/gallery3d/app/PhotoPage$10;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2186
    if-eqz p2, :cond_0

    .line 2187
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2189
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v6, "isVerifyCheck"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2192
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v5, v5, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2193
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v5, v5, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2195
    .local v2, isSafeModel:Z
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 2196
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->finishSecureOrPrivateModel()V
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 2217
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #isSafeModel:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 2197
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #isSafeModel:Z
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_1
    const-string v5, "com.yulong.android.privatemode.PRIVATE_MODE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2198
    const-string v5, "MODE_CHANGED"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2199
    .local v1, flag:Ljava/lang/String;
    const-string v5, "ENTER_PRIVATE_MODE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "QUIT_PRIVATE_MODE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2200
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->finishSecureOrPrivateModel()V
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 2213
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #flag:Ljava/lang/String;
    .end local v2           #isSafeModel:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 2202
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #isSafeModel:Z
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_3
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 2203
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2204
    .local v4, reason:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2205
    const-string v5, "homekey"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2206
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v5, v5, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 2207
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->finishSecureOrPrivateModel()V
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
