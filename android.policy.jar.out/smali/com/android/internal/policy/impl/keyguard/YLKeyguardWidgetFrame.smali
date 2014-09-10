.class public Lcom/android/internal/policy/impl/keyguard/YLKeyguardWidgetFrame;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.source "YLKeyguardWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyselfWidgetFrame"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/YLKeyguardWidgetFrame;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    return-void
.end method


# virtual methods
.method public getExtLockScreen()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, extLockScreen:Landroid/view/View;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLKeyguardWidgetFrame;->mContext:Landroid/content/Context;

    const-string v8, "com.example.extkeyguardview"

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 42
    .local v4, lockscreenContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v8, "com.example.extkeyguardview.ExtKeyguardViewManager"

    invoke-virtual {v6, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 44
    .local v3, lmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getExtLockscreen"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 46
    .local v5, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    .line 52
    .end local v3           #lmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #lockscreenContext:Landroid/content/Context;
    .end local v5           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "MyselfWidgetFrame"

    const-string v8, "------exception----"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 50
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 22
    return-void
.end method

.method public onScreenTurnOff()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public resetSize()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public shrinkWidget(Z)V
    .locals 0
    .parameter "alsoShrinkFrame"

    .prologue
    .line 30
    return-void
.end method
