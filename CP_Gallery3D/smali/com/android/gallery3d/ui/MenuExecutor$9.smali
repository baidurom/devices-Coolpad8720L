.class Lcom/android/gallery3d/ui/MenuExecutor$9;
.super Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;->initKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/yulong/android/view/dialog/LoginDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {p0}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstButtonClick(Landroid/view/View;)I
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1125
    invoke-super {p0, p1}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;->onFirstButtonClick(Landroid/view/View;)I

    move-result v2

    .line 1126
    .local v2, result:I
    if-ne v2, v8, :cond_1

    .line 1127
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Lcom/yulong/android/view/dialog/LoginDialog;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, passWord:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 1130
    const-string v3, "com.yulong.android.crypto.CryptoManagerClient"

    const-string v4, "initCryptoKey"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1134
    .local v0, initKey:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 1135
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, v3, Lcom/android/gallery3d/ui/MenuExecutor;->mCryptoManagerClient:Ljava/lang/Object;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v0, v3, v5}, Lcom/android/gallery3d/common/ApiHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v4, Lcom/android/gallery3d/ui/MenuExecutor;->intCryptoKey:Z

    .line 1137
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-boolean v3, v3, Lcom/android/gallery3d/ui/MenuExecutor;->intCryptoKey:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, v3, Lcom/android/gallery3d/ui/MenuExecutor;->mOperation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    if-eqz v3, :cond_0

    .line 1138
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v4, v4, Lcom/android/gallery3d/ui/MenuExecutor;->mOperation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;)V

    .line 1147
    .end local v0           #initKey:Ljava/lang/reflect/Method;
    .end local v1           #passWord:Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 1141
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1143
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v3}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$9;->val$passwordDialog:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 1153
    return-void
.end method
