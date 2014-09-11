.class public Lcom/yulong/android/cp_utk/UtkAppService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final CARD_ONE:I = 0x0

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.yulong.android.cp_utk"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field static R:Lcom/yulong/android/cp_utk/UtkAppService; = null

.field static final S:Ljava/lang/String; = "op"

.field static final T:Ljava/lang/String; = "cmd message"

.field static final U:Ljava/lang/String; = "response id"

.field static final V:Ljava/lang/String; = "menu selection"

.field static final W:Ljava/lang/String; = "input"

.field static final X:Ljava/lang/String; = "help"

.field static final Y:Ljava/lang/String; = "confirm"

.field static final Z:Ljava/lang/String; = "screen status"

.field private static final aA:I = 0x14d

.field public static final aB:I = 0x2

.field public static final aC:I = 0x1

.field public static final aD:I = 0x2

.field public static final aE:I = 0x0

.field public static aF:Z = false

.field public static aG:Z = false

.field static final aa:Ljava/lang/String; = "slot_id"

.field static final ab:Ljava/lang/String; = "event"

.field static final ac:Ljava/lang/String; = "cause"

.field static final ad:I = 0x1

.field static final ae:I = 0x2

.field static final af:I = 0x3

.field static final ag:I = 0x4

.field static final ah:I = 0x5

.field private static final ai:I = 0x6

.field static final aj:I = 0x7

.field static final ak:I = 0x8

.field static final al:I = 0x9

.field static final am:I = 0xa

.field static final an:I = 0x1e

.field static final ao:I = 0xff

.field static final ap:I = 0xb

.field static final aq:I = 0xc

.field static final ar:I = 0xd

.field static final as:I = 0xe

.field static final at:I = 0x14

.field static final au:I = 0x15

.field static final av:I = 0x16

.field static final aw:I = 0x17

.field static ax:J = 0x0L

.field private static final ay:Ljava/lang/String; = "com.yulong.android.cp_utk.UtkMenuActivity"

.field private static final az:Ljava/lang/String; = "com.yulong.android.cp_utk.UtkInputActivity"

.field private static final n:I = 0xda


# instance fields
.field private volatile O:Lcom/yulong/android/cp_utk/j;

.field private P:Lcom/android/internal/telephony/cat/AppInterface;

.field private Q:Landroid/app/NotificationManager;

.field aH:Lcom/android/internal/telephony/Phone;

.field private aI:Landroid/content/res/Resources;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/cp_utk/UtkAppService;->R:Lcom/yulong/android/cp_utk/UtkAppService;

    .line 143
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yulong/android/cp_utk/UtkAppService;->ax:J

    .line 162
    sput-boolean v2, Lcom/yulong/android/cp_utk/UtkAppService;->aF:Z

    .line 163
    sput-boolean v2, Lcom/yulong/android/cp_utk/UtkAppService;->aG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mContext:Landroid/content/Context;

    .line 87
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->Q:Landroid/app/NotificationManager;

    .line 164
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    .line 421
    return-void
.end method

.method static synthetic a(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aI:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 295
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 297
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    const-string v1, "com.yulong.android.cp_utk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    return-object v0
.end method

.method static synthetic d(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkAppService;->r()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->Q:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static q()Lcom/yulong/android/cp_utk/UtkAppService;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/yulong/android/cp_utk/UtkAppService;->R:Lcom/yulong/android/cp_utk/UtkAppService;

    return-object v0
.end method

.method private r()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 362
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertSlotIdToPhoneId(I)I

    move-result v0

    .line 364
    if-ne v0, v2, :cond_0

    .line 365
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    .line 366
    const-string v0, "getCdmaPhone"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_1

    .line 373
    const-string v0, "mPhone == null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    .line 396
    :goto_1
    return-object v0

    .line 368
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    .line 369
    const-string v0, "getGsmPhone"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhone.getPhoneType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getmStkService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get cdma phone Service OK ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 384
    const-string v0, "get cdma phone Service error"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 388
    :try_start_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getmStkService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get gsm phone Service OK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 390
    :catch_1
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    const-string v0, "get gsm phone Service error"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private s()V
    .locals 5

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    if-nez v1, :cond_0

    .line 405
    monitor-enter p0

    .line 407
    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    .line 408
    :try_start_0
    const-string v1, "waitForLooper, wait count over 40, break!"

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :cond_0
    return-void

    .line 412
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 413
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 417
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 414
    :catch_0
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    .line 415
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_1

    .line 414
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cp_utk/j;->a(Z)V

    .line 334
    return-void
.end method

.method b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    invoke-virtual {v0, p1}, Lcom/yulong/android/cp_utk/j;->b(Z)V

    .line 327
    return-void
.end method

.method getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/j;->h()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    return-object v0
.end method

.method i()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/j;->i()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    const-string v0, "onCreate->Get Service handle"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertSlotIdToPhoneId(I)I

    move-result v0

    .line 180
    if-ne v0, v3, :cond_0

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    .line 182
    const-string v0, "getCdmaPhone"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_1

    .line 189
    const-string v0, "mPhone == null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    :goto_1
    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    .line 185
    const-string v0, "getGsmPhone"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhone.getPhoneType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getmStkService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get cdma phone Service OK ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_2
    :goto_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceHandler SLOT 0"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 220
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 221
    new-instance v0, Lcom/yulong/android/cp_utk/j;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/yulong/android/cp_utk/j;-><init>(Lcom/yulong/android/cp_utk/UtkAppService;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    .line 230
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mContext:Landroid/content/Context;

    .line 231
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->Q:Landroid/app/NotificationManager;

    .line 233
    sput-object p0, Lcom/yulong/android/cp_utk/UtkAppService;->R:Lcom/yulong/android/cp_utk/UtkAppService;

    .line 234
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aI:Landroid/content/res/Resources;

    goto/16 :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    const-string v0, "get cdma phone Service error"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getmStkService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get gsm phone Service OK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->P:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 206
    :catch_1
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    const-string v0, "get gsm phone Service error"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkAppService;->s()V

    .line 310
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 314
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkAppService;->s()V

    .line 241
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    if-nez v0, :cond_1

    .line 242
    const-string v0, "UtkAppService: "

    const-string v1, "mServiceHandler is null, return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 264
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart->msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5f53\u524d\u7684\u5361\u69fd\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget v2, v1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 270
    :sswitch_0
    const-string v2, "cmd message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    :goto_1
    :sswitch_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->O:Lcom/yulong/android/cp_utk/j;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 275
    :sswitch_2
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 279
    :sswitch_3
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkAppService;->aH:Lcom/android/internal/telephony/Phone;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 284
    :sswitch_4
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_1
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method
