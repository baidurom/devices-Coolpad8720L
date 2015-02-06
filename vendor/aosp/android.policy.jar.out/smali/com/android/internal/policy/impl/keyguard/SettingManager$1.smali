.class Lcom/android/internal/policy/impl/keyguard/SettingManager$1;
.super Landroid/database/ContentObserver;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/SettingManager;->registerObserver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SettingManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SettingManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SettingManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 185
    const-string v0, "###"

    const-string v1, "......................launcherContentObserver is done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SettingManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->loadData()Z

    .line 187
    return-void
.end method
