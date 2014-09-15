.class Lcom/android/gallery3d/app/AlbumSetPage$12;
.super Landroid/content/BroadcastReceiver;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1365
    if-eqz p2, :cond_2

    .line 1366
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v8, "isVerifyCheck"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1370
    .local v5, method:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, v7, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 1371
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, v7, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1373
    .local v4, isVerifyCheck:Z
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->intoSecureBox:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2700(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 1375
    .local v3, isSafeModel:Z
    :cond_1
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 1376
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->finishSecureModel()V
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1398
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #isSafeModel:Z
    .end local v4           #isVerifyCheck:Z
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_2
    :goto_0
    return-void

    .line 1377
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #isSafeModel:Z
    .restart local v4       #isVerifyCheck:Z
    .restart local v5       #method:Ljava/lang/reflect/Method;
    :cond_3
    const-string v7, "com.yulong.android.privatemode.PRIVATE_MODE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1378
    const-string v7, "MODE_CHANGED"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1379
    .local v2, flag:Ljava/lang/String;
    const-string v7, "ENTER_PRIVATE_MODE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "QUIT_PRIVATE_MODE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1381
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->updataPrivateModel()V
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1395
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #flag:Ljava/lang/String;
    .end local v3           #isSafeModel:Z
    .end local v4           #isVerifyCheck:Z
    .end local v5           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1396
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "AlbumSetPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1383
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #isSafeModel:Z
    .restart local v4       #isVerifyCheck:Z
    .restart local v5       #method:Ljava/lang/reflect/Method;
    :cond_5
    :try_start_1
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    .line 1385
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1386
    .local v6, reason:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1387
    const-string v7, "homekey"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1388
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, v7, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 1389
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->finishSecureModel()V
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
