.class Lcom/android/gallery3d/app/Gallery$2;
.super Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/Gallery;->checkCoolPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    invoke-direct {p0}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstButtonClick(Landroid/view/View;)I
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 587
    invoke-super {p0, p1}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;->onFirstButtonClick(Landroid/view/View;)I

    move-result v6

    .line 588
    .local v6, result:I
    if-ne v6, v12, :cond_5

    .line 589
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$000(Lcom/android/gallery3d/app/Gallery;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yulong/android/view/dialog/LoginDialog;->getText()Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, passWord:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$000(Lcom/android/gallery3d/app/Gallery;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 592
    const-string v7, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v8, "isCryptoKeyExist"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 594
    .local v0, checkKey:Ljava/lang/reflect/Method;
    const-string v7, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v8, "initCryptoKey"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 596
    .local v2, initKey:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 597
    .local v1, hasCryptoKey:Z
    if-eqz v0, :cond_0

    .line 598
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$100(Lcom/android/gallery3d/app/Gallery;)Ljava/lang/Object;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 599
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 600
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$100(Lcom/android/gallery3d/app/Gallery;)Ljava/lang/Object;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v2, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 603
    :cond_0
    if-eqz v1, :cond_3

    .line 605
    const-string v7, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v8, "notifySecureServer"

    new-array v9, v12, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 607
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    .line 608
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mCryptoManagerClient:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$100(Lcom/android/gallery3d/app/Gallery;)Ljava/lang/Object;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v4, v7, v8}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v7, "Gallery"

    const-string v8, "checkCoolPassword() notifySecureServer VERTIFY = 1"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    const/4 v3, 0x1

    .line 612
    .local v3, message:I
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->filesafebox:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$200(Lcom/android/gallery3d/app/Gallery;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 613
    const/4 v3, 0x1

    .line 617
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$400(Lcom/android/gallery3d/app/Gallery;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/gallery3d/app/Gallery;->access$400(Lcom/android/gallery3d/app/Gallery;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xb4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 628
    .end local v0           #checkKey:Ljava/lang/reflect/Method;
    .end local v1           #hasCryptoKey:Z
    .end local v2           #initKey:Ljava/lang/reflect/Method;
    .end local v3           #message:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #passWord:Ljava/lang/String;
    :cond_3
    :goto_1
    return v11

    .line 614
    .restart local v0       #checkKey:Ljava/lang/reflect/Method;
    .restart local v1       #hasCryptoKey:Z
    .restart local v2       #initKey:Ljava/lang/reflect/Method;
    .restart local v3       #message:I
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v5       #passWord:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->safeboxalbum:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$300(Lcom/android/gallery3d/app/Gallery;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 615
    const/4 v3, 0x2

    goto :goto_0

    .line 620
    .end local v0           #checkKey:Ljava/lang/reflect/Method;
    .end local v1           #hasCryptoKey:Z
    .end local v2           #initKey:Ljava/lang/reflect/Method;
    .end local v3           #message:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #passWord:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 622
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v7}, Lcom/android/gallery3d/app/Gallery;->access$000(Lcom/android/gallery3d/app/Gallery;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 623
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 624
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    #getter for: Lcom/android/gallery3d/app/Gallery;->mPasswordDialog:Lcom/yulong/android/view/dialog/LoginDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/Gallery;->access$000(Lcom/android/gallery3d/app/Gallery;)Lcom/yulong/android/view/dialog/LoginDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 634
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 635
    return-void
.end method
