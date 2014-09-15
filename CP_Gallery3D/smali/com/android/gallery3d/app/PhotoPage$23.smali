.class Lcom/android/gallery3d/app/PhotoPage$23;
.super Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->checkCoolPassword()V
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
    .line 3005
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstButtonClick(Landroid/view/View;)I
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3008
    invoke-super {p0, p1}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;->onFirstButtonClick(Landroid/view/View;)I

    move-result v5

    .line 3009
    .local v5, result:I
    if-ne v5, v11, :cond_2

    .line 3010
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/view/dialog/LoginDialog;->getText()Ljava/lang/String;

    move-result-object v4

    .line 3011
    .local v4, passWord:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 3013
    const-string v6, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v7, "isCryptoKeyExist"

    new-array v8, v10, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3015
    .local v0, checkKey:Ljava/lang/reflect/Method;
    const-string v6, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v7, "initCryptoKey"

    new-array v8, v11, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3017
    .local v2, initKey:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 3018
    .local v1, hasCryptoKey:Z
    if-eqz v0, :cond_0

    .line 3019
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3020
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 3021
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v10

    invoke-static {v2, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3025
    :cond_0
    if-eqz v1, :cond_1

    .line 3026
    const-string v6, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v7, "notifySecureServer"

    new-array v8, v11, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3029
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    .line 3030
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3, v6, v7}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    const-string v6, "PhotoPage"

    const-string v7, "checkCoolPassword notifySecureServer VERTIFY = 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xb4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3045
    .end local v0           #checkKey:Ljava/lang/reflect/Method;
    .end local v1           #hasCryptoKey:Z
    .end local v2           #initKey:Ljava/lang/reflect/Method;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #passWord:Ljava/lang/String;
    :cond_1
    :goto_0
    return v10

    .line 3038
    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 3040
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3041
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$23;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 3051
    return-void
.end method
