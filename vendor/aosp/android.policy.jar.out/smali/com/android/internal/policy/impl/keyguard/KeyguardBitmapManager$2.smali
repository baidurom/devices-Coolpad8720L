.class Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$2;
.super Ljava/lang/Object;
.source "KeyguardBitmapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v1, "KeyguardBitmapManager"

    const-string v3, "Run load bitmap"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 93
    const-string v1, "KeyguardBitmapManager"

    const-string v3, "Run load bitmap system is ready"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 98
    :try_start_0
    const-string v1, "wallpaper_file_path"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 99
    .local v9, pathIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, path:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #pathIndex:I
    :catch_0
    move-exception v7

    .line 106
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "KeyguardBitmapManager"

    const-string v2, " exception init() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v6, :cond_0

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string v1, "KeyguardBitmapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPathList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :goto_2
    return-void

    .line 109
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_0

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 126
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const-string v1, "KeyguardBitmapManager"

    const-string v2, "Run but system is not Read"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
