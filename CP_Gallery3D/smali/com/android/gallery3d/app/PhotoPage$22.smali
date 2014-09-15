.class Lcom/android/gallery3d/app/PhotoPage$22;
.super Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->initKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/yulong/android/view/dialog/LoginDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2939
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$22;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {p0}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstButtonClick(Landroid/view/View;)I
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2942
    invoke-super {p0, p1}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;->onFirstButtonClick(Landroid/view/View;)I

    move-result v3

    .line 2943
    .local v3, result:I
    if-ne v3, v9, :cond_1

    .line 2944
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v4}, Lcom/yulong/android/view/dialog/LoginDialog;->getText()Ljava/lang/String;

    move-result-object v2

    .line 2945
    .local v2, passWord:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v4}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 2947
    const-string v4, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v5, "initCryptoKey"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2949
    .local v0, initKey:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 2950
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$22;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-static {v0, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2951
    .local v1, initSuccess:Z
    if-eqz v1, :cond_0

    .line 2952
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$22;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->movePicToSecureBox()V
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3100(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 2962
    .end local v0           #initKey:Ljava/lang/reflect/Method;
    .end local v1           #initSuccess:Z
    .end local v2           #passWord:Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 2955
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2957
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v4}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2958
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$22;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 2968
    return-void
.end method
