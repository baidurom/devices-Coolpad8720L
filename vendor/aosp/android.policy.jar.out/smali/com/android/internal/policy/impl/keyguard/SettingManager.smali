.class public Lcom/android/internal/policy/impl/keyguard/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.yulong.android.launcher3.settings"

.field static final EXTRADATA_URI:Landroid/net/Uri; = null

.field static final EXTRADATA_URI_STR:Ljava/lang/String; = "content://com.yulong.android.launcher3.settings/simplestorage"

.field public static final ICONSIZE_KEY:Ljava/lang/String; = "iconSize"

.field public static final ICON_LARGE:Ljava/lang/String; = "large"

.field public static final ICON_NORMAL:Ljava/lang/String; = "normal"

.field public static final ICON_SMALL:Ljava/lang/String; = "small"

.field static final KEY:Ljava/lang/String; = "key"

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final SCREENCYCLE_KEY:Ljava/lang/String; = "deskScreenCycle"

.field public static final SCROLLANIMATION_KEY:Ljava/lang/String; = "scrollAnimation"

.field public static final SHOW_DATE_TIME_KEY:Ljava/lang/String; = "showDateAndTime"

.field public static final SUPER_DATE_TIME_KEY:Ljava/lang/String; = "superDateAndTime"

.field static final TABLE_SIMPLESTORAGE:Ljava/lang/String; = "simplestorage"

.field public static final TAG:Ljava/lang/String; = "SettingManager"

.field static final VALUE:Ljava/lang/String; = "value"

.field public static final WALLPAPERSCROLL_KEY:Ljava/lang/String; = "wallpaperScroll"

.field public static final WALLPAPER_AUTO_CHANGE_KEY:Ljava/lang/String; = "wallpaperAutoChange"

.field public static final WALLPAPER_FREQUENCY_KEY:Ljava/lang/String; = "wallpaperFrequency"

.field public static final WALLPAPER_LANTERN_KEY:Ljava/lang/String; = "wallpaperLantern"

.field static pthis:Lcom/android/internal/policy/impl/keyguard/SettingManager;


# instance fields
.field mContext:Landroid/content/Context;

.field mExtraDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExtraIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "content://com.yulong.android.launcher3.settings/simplestorage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->EXTRADATA_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraDataMap:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraIdMap:Ljava/util/HashMap;

    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mContext:Landroid/content/Context;

    .line 122
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/SettingManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->pthis:Lcom/android/internal/policy/impl/keyguard/SettingManager;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SettingManager;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->pthis:Lcom/android/internal/policy/impl/keyguard/SettingManager;

    .line 138
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->pthis:Lcom/android/internal/policy/impl/keyguard/SettingManager;

    return-object v0
.end method

.method static getContentUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.yulong.android.launcher3.settings/simplestorage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "key"

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getContentUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getContentUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2
    .parameter "key"
    .parameter "notify"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.yulong.android.launcher3.settings/simplestorage/key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getContentUriNoNotify(J)Landroid/net/Uri;
    .locals 2
    .parameter "id"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.yulong.android.launcher3.settings/simplestorage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static getContentUriNoNotify(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "key"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.yulong.android.launcher3.settings/simplestorage/key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/SettingManager;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->pthis:Lcom/android/internal/policy/impl/keyguard/SettingManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getBooleanData(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBooleanData(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 264
    .end local p2
    :goto_0
    monitor-exit p0

    return-object p2

    .restart local p2
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, v1

    goto :goto_0

    .line 257
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getIntData(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 225
    monitor-enter p0

    const/4 v1, -0x1

    .line 227
    .local v1, intData:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    monitor-exit p0

    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_1
    const-string v2, "SettingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException!, string data is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getIntData(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->loadData()Z

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SettingManager;->registerObserver()Z

    .line 202
    return-void
.end method

.method public declared-synchronized loadData()Z
    .locals 14

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const/4 v6, 0x0

    .line 156
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/SettingManager;->EXTRADATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 159
    .local v9, idIndex:I
    const-string v1, "key"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 160
    .local v11, keyIndex:I
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 162
    .local v13, valueIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 164
    .local v8, id:I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, key:Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mExtraIdMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 169
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v8           #id:I
    .end local v9           #idIndex:I
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #keyIndex:I
    .end local v12           #value:Ljava/lang/String;
    .end local v13           #valueIndex:I
    :catch_0
    move-exception v7

    .line 170
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SettingManager"

    const-string v2, "init() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    if-eqz v6, :cond_0

    .line 173
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 172
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local v9       #idIndex:I
    .restart local v11       #keyIndex:I
    .restart local v13       #valueIndex:I
    :cond_1
    if-eqz v6, :cond_0

    .line 173
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 151
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #idIndex:I
    .end local v11           #keyIndex:I
    .end local v13           #valueIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 172
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v6, :cond_2

    .line 173
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public registerObserver()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 182
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/SettingManager$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/internal/policy/impl/keyguard/SettingManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/SettingManager;Landroid/os/Handler;)V

    .line 190
    .local v1, launcherContentObserver:Landroid/database/ContentObserver;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/SettingManager;->EXTRADATA_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return v2

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
