.class public Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;
.super Ljava/lang/Object;
.source "LockscreenSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;,
        Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.yulong.android.provider.coolshow"

.field public static final COLUMN_ANY_SLIDE_UNLOCK:Ljava/lang/String; = "any_slide_unlock"

.field public static final COLUMN_BRIGHTNESS_WITH_SYSTEM:Ljava/lang/String; = "brightness_with_system"

.field public static final COLUMN_SHOW_CARRIER_NAME:Ljava/lang/String; = "show_carrier_name"

.field public static final COLUMN_SHOW_DATA_TIME:Ljava/lang/String; = "show_data_time"

.field public static final COLUMN_SHOW_OWNER_INFO:Ljava/lang/String; = "show_text"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final FONT_PATH:Ljava/lang/String; = "font_path"

.field public static final PARAM_KEY_COLORINDB:I = 0x5

.field public static final PARAM_KEY_FOLLOWSYSBRIGHTNESS:I = 0x1

.field public static final PARAM_KEY_SHOWCARRIER:I = 0x3

.field public static final PARAM_KEY_SHOWDATATIME:I = 0x0

.field public static final PARAM_KEY_SHOWOWNERINFO:I = 0x7

.field public static final PARAM_KEY_SHOWRANDOMUNLOCK:I = 0x2

.field public static final PARAM_KEY_TEXTINDB:I = 0x4

.field public static final PARAM_KEY_TYPEFACEINDB:I = 0x6

.field private static final PATH_LOCKSCREENTEXTINFO:Ljava/lang/String; = "/lockscreenTextInfo"

.field private static final SCHEME:Ljava/lang/String; = "content://"

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TEXT_COLOR:Ljava/lang/String; = "text_color"

.field static sLockscreenSettingManager:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;


# instance fields
.field mContext:Landroid/content/Context;

.field mInitSuccess:Z

.field private mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

.field mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

.field mRegisterSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://com.yulong.android.provider.coolshow/lockscreenTextInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mRegisterSuccess:Z

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mRegisterSuccess:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;)Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    return-object p1
.end method

.method public static creatInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->sLockscreenSettingManager:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->sLockscreenSettingManager:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->sLockscreenSettingManager:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->sLockscreenSettingManager:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    return-object v0
.end method


# virtual methods
.method public FollowSysBrightNess()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$600(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    return v0
.end method

.method public ShowCarrier()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$500(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    return v0
.end method

.method public ShowDataTime()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$300(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    return v0
.end method

.method public ShowOwnerInfo()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$700(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    return v0
.end method

.method public ShowRandomUnlock()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$400(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    return v0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 194
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->ShowDataTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->FollowSysBrightNess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->ShowRandomUnlock()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->ShowCarrier()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getOwnerText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 190
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getTextType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->ShowOwnerInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDefLockScreenSettingParam()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    .locals 3

    .prologue
    .line 266
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mContext:Landroid/content/Context;

    const v2, 0x10405d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOwnerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$000(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$100(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)I

    move-result v0

    return v0
.end method

.method public getTextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->init()Z

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$200(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z

    if-nez v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    .line 87
    .local v0, preLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->loadDataBase()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    .line 88
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->sendParamChanged2Listener(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getDefLockScreenSettingParam()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    .line 95
    .end local v0           #preLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->registerObserver()Z

    .line 96
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mRegisterSuccess:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initResult()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mRegisterSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDataBase()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    .locals 18

    .prologue
    .line 103
    new-instance v12, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    invoke-direct {v12}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;-><init>()V

    .line 104
    .local v12, lockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    const/4 v8, 0x0

    .line 106
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 107
    .local v1, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 108
    const-string v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 109
    .local v17, textIndex:I
    const-string v2, "text_color"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 110
    .local v15, textColorIndex:I
    const-string v2, "font_path"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 111
    .local v16, textFontIndex:I
    const-string v2, "show_data_time"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 112
    .local v10, dateTimeIndex:I
    const-string v2, "any_slide_unlock"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 113
    .local v14, randomUnlockIndex:I
    const-string v2, "show_carrier_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 114
    .local v9, carrierNameIndex:I
    const-string v2, "brightness_with_system"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 115
    .local v7, brightNessIndex:I
    const-string v2, "show_text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 117
    .local v13, ownerInfoIndex:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$002(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$102(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;I)I

    .line 120
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$202(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$302(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z

    .line 122
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$402(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z

    .line 123
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$502(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z

    .line 124
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$602(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z

    .line 125
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$702(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v7           #brightNessIndex:I
    .end local v9           #carrierNameIndex:I
    .end local v10           #dateTimeIndex:I
    .end local v13           #ownerInfoIndex:I
    .end local v14           #randomUnlockIndex:I
    .end local v15           #textColorIndex:I
    .end local v16           #textFontIndex:I
    .end local v17           #textIndex:I
    :catch_0
    move-exception v11

    .line 128
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "###"

    const-string v3, "..................init() error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    const/4 v12, 0x0

    .line 133
    .end local v12           #lockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    if-eqz v8, :cond_0

    .line 134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 138
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v12

    .line 133
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v7       #brightNessIndex:I
    .restart local v9       #carrierNameIndex:I
    .restart local v10       #dateTimeIndex:I
    .restart local v12       #lockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    .restart local v13       #ownerInfoIndex:I
    .restart local v14       #randomUnlockIndex:I
    .restart local v15       #textColorIndex:I
    .restart local v16       #textFontIndex:I
    .restart local v17       #textIndex:I
    :cond_1
    if-eqz v8, :cond_2

    .line 134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mInitSuccess:Z

    goto :goto_1

    .line 133
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v7           #brightNessIndex:I
    .end local v9           #carrierNameIndex:I
    .end local v10           #dateTimeIndex:I
    .end local v13           #ownerInfoIndex:I
    .end local v14           #randomUnlockIndex:I
    .end local v15           #textColorIndex:I
    .end local v16           #textFontIndex:I
    .end local v17           #textIndex:I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method registerLockScreenSettinsChangedObserver(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    .line 307
    return-void
.end method

.method public registerObserver()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 200
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mRegisterSuccess:Z

    if-eqz v4, :cond_0

    .line 226
    :goto_0
    return v2

    .line 203
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;Landroid/os/Handler;)V

    .line 220
    .local v0, coolShowContentObserver:Landroid/database/ContentObserver;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mRegisterSuccess:Z

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mRegisterSuccess:Z

    move v2, v3

    .line 223
    goto :goto_0
.end method

.method public sendParamChanged2Listener(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)V
    .locals 4
    .parameter "oldParam"
    .parameter "newParam"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged()V

    .line 231
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$300(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$300(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$300(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showDataTime:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$300(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    :cond_0
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$600(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$600(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x1

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$600(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->followSysBrightNess:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$600(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 239
    :cond_1
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$400(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$400(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$400(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showRandomUnlock:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$400(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 243
    :cond_2
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$500(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$500(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x3

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$500(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showCarrier:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$500(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 247
    :cond_3
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$000(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$000(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x4

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$000(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->textInDB:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$000(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 251
    :cond_4
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$100(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)I

    move-result v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$100(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x5

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$100(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->colorInDB:I
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$100(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 255
    :cond_5
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$200(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$200(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x6

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$200(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->typeFaceInDB:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$200(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 259
    :cond_6
    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$700(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$700(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    const/4 v1, 0x7

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$700(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->showOwnerInfo:Z
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;->access$700(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;->dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 263
    :cond_7
    return-void
.end method
