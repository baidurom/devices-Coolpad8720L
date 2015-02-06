.class Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$1;
.super Ljava/lang/Object;
.source "MiBaoUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.yulong.action.lookforpassword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/MiBaoUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    const-string v1, "mibao"

    const-string v2, ".............................mFindPasswodText sendBroadcast is done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method
