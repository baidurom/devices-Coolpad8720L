.class public Lcom/marvell/fmradio/FMService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FMService"

.field private static R:Z = false

.field private static S:Z = false

.field public static T:Z = false

.field private static final U:I = 0x1

.field private static final V:I = 0x2

.field private static final W:I = 0x3

.field private static final X:I = 0x4

.field private static final Y:I = 0x5

.field private static final Z:I = 0x6

.field public static final aA:Ljava/lang/String; = "com.marvell.fmradio.STOPSCAN"

.field public static final aB:Ljava/lang/String; = "com.marvell.fmradio.SUSPEND"

.field public static final aC:Ljava/lang/String; = "com.marvell.fmradio.RESUME"

.field public static final aD:Ljava/lang/String; = "com.marvell.fmradio.RECORD"

.field public static final aE:Ljava/lang/String; = "com.marvell.fmradio.STOPRECORD"

.field public static final aF:Ljava/lang/String; = "com.marvell.fmradio.GETRSSI"

.field private static final aH:I = 0x1

.field private static final aJ:Ljava/lang/String; = "first_search"

.field private static final aK:Ljava/lang/String; = "is_first"

.field private static aL:Z = false

.field private static aM:Z = false

.field private static aN:Z = false

.field private static final aQ:Ljava/lang/String; = "FM Records"

.field private static final aR:Ljava/lang/String; = "/Coolpad/My Records/"

.field private static final aa:I = 0x7

.field private static final ab:I = 0x8

.field private static final ac:I = 0xb

.field private static final ad:I = 0xf

.field private static final ae:I = 0x11

.field private static final af:I = 0x12

.field private static final ag:I = 0x13

.field private static final ah:I = 0x14

.field private static final ai:I = 0x15

.field private static final aj:I = 0x16

.field private static final ak:I = 0x1c

.field private static final al:I = 0x20

.field private static final am:I = 0x21

.field private static final an:J = 0x2710L

.field public static final ap:Ljava/lang/String; = "com.marvell.fmradio.WAIT_FOR"

.field public static final aq:Ljava/lang/String; = "com.marvell.fmradio.ENABLE"

.field public static final ar:Ljava/lang/String; = "com.marvell.fmradio.SETCHANNEL"

.field public static final as:Ljava/lang/String; = "com.marvell.fmradio.DISABLE"

.field public static final at:Ljava/lang/String; = "com.marvell.fmradio.DISABLE_ONLY"

.field public static final au:Ljava/lang/String; = "com.marvell.fmradio.SCANPREV"

.field public static final av:Ljava/lang/String; = "com.marvell.fmradio.SCANNEXT"

.field public static final aw:Ljava/lang/String; = "com.marvell.fmradio.SPEAKER"

.field public static final ax:Ljava/lang/String; = "com.marvell.fmradio.INITIATE"

.field public static final ay:Ljava/lang/String; = "com.marvell.fmradio.SCANALL"

.field public static final az:Ljava/lang/String; = "com.marvell.fmradio.GETCHANNEL"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private Q:Lcom/marvell/fmradio/az;

.field private aG:Z

.field private aI:Landroid/content/SharedPreferences;

.field private aO:Landroid/content/ContentResolver;

.field private aP:Ljava/io/File;

.field private aS:Ljava/lang/String;

.field private aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private ao:Lcom/marvell/fmmanager/FMRadioManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private v:Lcom/marvell/fmradio/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/marvell/fmradio/FMService;->R:Z

    .line 34
    sput-object v1, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    .line 36
    sput-boolean v0, Lcom/marvell/fmradio/FMService;->T:Z

    .line 82
    sput-boolean v0, Lcom/marvell/fmradio/FMService;->aL:Z

    .line 83
    sput-boolean v0, Lcom/marvell/fmradio/FMService;->aM:Z

    .line 84
    sput-boolean v0, Lcom/marvell/fmradio/FMService;->aN:Z

    .line 86
    sput-object v1, Lcom/marvell/fmradio/FMService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->Q:Lcom/marvell/fmradio/az;

    .line 33
    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->v:Lcom/marvell/fmradio/c/e;

    .line 57
    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->ao:Lcom/marvell/fmmanager/FMRadioManager;

    .line 79
    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->aI:Landroid/content/SharedPreferences;

    .line 85
    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->aO:Landroid/content/ContentResolver;

    .line 87
    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->aP:Ljava/io/File;

    .line 90
    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->aS:Ljava/lang/String;

    .line 515
    new-instance v0, Lcom/marvell/fmradio/af;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/af;-><init>(Lcom/marvell/fmradio/FMService;)V

    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/FMService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method private a(Ljava/io/File;)Landroid/net/Uri;
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 572
    .line 573
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<addToMediaDB>file.getAbsolutePath= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 579
    const-string v0, "is_music"

    const-string v1, "0"

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "album"

    const-string v1, "FM Records"

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v0, Lcom/marvell/fmradio/FMService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 584
    sget-object v0, Lcom/marvell/fmradio/FMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 589
    :goto_0
    if-nez v0, :cond_2

    .line 590
    const-string v0, "FMService"

    const-string v1, "<addToMediaDB>resolver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 633
    :cond_0
    :goto_1
    return-object v0

    .line 586
    :cond_1
    const-string v0, "FMService"

    const-string v1, "<addToMediaDB>mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    .line 594
    :cond_2
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 596
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<addToMediaDB>base="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<addToMediaDB>file.getPath= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 605
    const-string v2, "FMService"

    const-string v3, "<addToMediaDB>should update here"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v6

    .line 614
    :goto_2
    if-eqz v1, :cond_0

    .line 615
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 618
    :catch_0
    move-exception v1

    .line 619
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto/16 :goto_1

    .line 611
    :cond_3
    :try_start_2
    const-string v2, "FMService"

    const-string v3, "<addToMediaDB>should insert here"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2

    .line 620
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 621
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 622
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    const-string v1, "FMService"

    const-string v2, "<addToMediaDB>insert ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 620
    :catch_2
    move-exception v1

    goto :goto_4

    .line 618
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method static synthetic a(Lcom/marvell/fmradio/FMService;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/marvell/fmradio/FMService;->aP:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/marvell/fmradio/FMService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/marvell/fmradio/FMService;->aS:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    sput-object p0, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    .line 458
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 449
    sput-boolean p0, Lcom/marvell/fmradio/FMService;->aL:Z

    .line 450
    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/FMService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/marvell/fmradio/FMService;->aG:Z

    return p1
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-boolean p0, Lcom/marvell/fmradio/FMService;->R:Z

    return p0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/marvell/fmradio/FMService;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic b(Lcom/marvell/fmradio/FMService;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/marvell/fmradio/FMService;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 637
    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 641
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 642
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddkkmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 644
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    return-object v0
.end method

.method static synthetic b(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-boolean p0, Lcom/marvell/fmradio/FMService;->aL:Z

    return p0
.end method

.method static synthetic c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->ao:Lcom/marvell/fmmanager/FMRadioManager;

    return-object v0
.end method

.method static synthetic c(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-boolean p0, Lcom/marvell/fmradio/FMService;->aN:Z

    return p0
.end method

.method static synthetic d(Lcom/marvell/fmradio/FMService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->aI:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-boolean p0, Lcom/marvell/fmradio/FMService;->aM:Z

    return p0
.end method

.method static synthetic e(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/marvell/fmradio/FMService;->u()V

    return-void
.end method

.method static synthetic f(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmradio/c/e;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->v:Lcom/marvell/fmradio/c/e;

    return-object v0
.end method

.method static synthetic g(Lcom/marvell/fmradio/FMService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->aS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/marvell/fmradio/FMService;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->aP:Ljava/io/File;

    return-object v0
.end method

.method static synthetic i(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmradio/az;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->Q:Lcom/marvell/fmradio/az;

    return-object v0
.end method

.method static synthetic j(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/marvell/fmradio/FMService;->s()V

    return-void
.end method

.method static synthetic k(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/marvell/fmradio/FMService;->r()V

    return-void
.end method

.method static synthetic l(Lcom/marvell/fmradio/FMService;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/marvell/fmradio/FMService;->aG:Z

    return v0
.end method

.method static synthetic m(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/marvell/fmradio/FMService;->t()V

    return-void
.end method

.method public static o()Z
    .locals 1

    .prologue
    .line 445
    sget-boolean v0, Lcom/marvell/fmradio/FMService;->aL:Z

    return v0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 453
    sget-boolean v0, Lcom/marvell/fmradio/FMService;->aM:Z

    return v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 477
    const/4 v0, 0x1

    sget-boolean v1, Lcom/marvell/fmradio/FMService;->T:Z

    if-ne v0, v1, :cond_0

    .line 478
    const-string v0, "FMService"

    const-string v1, "stop fm recording now..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v0, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 482
    :cond_0
    return-void
.end method

.method private s()V
    .locals 6

    .prologue
    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 487
    const-string v2, "FMService"

    const-string v3, "waiting enable over"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    sget-boolean v2, Lcom/marvell/fmradio/FMService;->R:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 491
    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 492
    const-string v0, "FMService"

    const-string v1, "waiting enable times out"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    sput-object p0, Lcom/marvell/fmradio/FMService;->mContext:Landroid/content/Context;

    .line 462
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/marvell/fmradio/aq;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/aq;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 512
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 513
    return-void
.end method

.method private u()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 557
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/marvell/fmradio/FMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/marvell/fmradio/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0}, Lcom/marvell/fmradio/FMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 562
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020019

    const v3, 0x7f050029

    invoke-virtual {p0, v3}, Lcom/marvell/fmradio/FMService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 564
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 565
    invoke-virtual {p0}, Lcom/marvell/fmradio/FMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05002a

    invoke-virtual {p0, v3}, Lcom/marvell/fmradio/FMService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f05002b

    invoke-virtual {p0, v4}, Lcom/marvell/fmradio/FMService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/marvell/fmradio/FMService;->startForeground(ILandroid/app/Notification;)V

    .line 569
    return-void
.end method

.method static synthetic v()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/marvell/fmradio/FMService;->S:Z

    return v0
.end method

.method static synthetic w()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/marvell/fmradio/FMService;->aN:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 100
    const-string v0, "FMService"

    const-string v1, "<onCreate>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/marvell/fmmanager/FMRadioManager;

    invoke-direct {v0}, Lcom/marvell/fmmanager/FMRadioManager;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->ao:Lcom/marvell/fmmanager/FMRadioManager;

    .line 102
    invoke-static {}, Lcom/marvell/fmradio/az;->H()Lcom/marvell/fmradio/az;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->Q:Lcom/marvell/fmradio/az;

    .line 104
    invoke-static {}, Lcom/marvell/fmradio/c/e;->I()Lcom/marvell/fmradio/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->v:Lcom/marvell/fmradio/c/e;

    .line 105
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->ao:Lcom/marvell/fmmanager/FMRadioManager;

    iget-object v1, p0, Lcom/marvell/fmradio/FMService;->Q:Lcom/marvell/fmradio/az;

    invoke-virtual {v0, v1}, Lcom/marvell/fmmanager/FMRadioManager;->registerListener(Lcom/marvell/fmmanager/FMRadioListener;)Z

    .line 106
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/FMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    const-string v0, "first_search"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/marvell/fmradio/FMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/FMService;->aI:Landroid/content/SharedPreferences;

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 115
    const-string v0, "FMService"

    const-string v1, "<onDestroy>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/marvell/fmradio/FMService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 117
    sget-object v0, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/FMService;->stopForeground(Z)V

    .line 119
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 123
    invoke-super {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 124
    if-nez p1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/marvell/fmradio/FMService;->stopSelf()V

    .line 441
    :cond_0
    :goto_0
    return v5

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onStartCommand>action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "com.marvell.fmradio.WAIT_FOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/marvell/fmradio/FMService;->q()V

    goto :goto_0

    .line 134
    :cond_2
    const-string v1, "com.marvell.fmradio.INITIATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    new-instance v0, Lcom/marvell/fmradio/y;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/y;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 175
    :cond_3
    const-string v1, "com.marvell.fmradio.ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    new-instance v0, Lcom/marvell/fmradio/z;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/z;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 201
    :cond_4
    const-string v1, "com.marvell.fmradio.GETCHANNEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    new-instance v0, Lcom/marvell/fmradio/w;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/w;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 211
    :cond_5
    const-string v1, "com.marvell.fmradio.SETCHANNEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    new-instance v0, Lcom/marvell/fmradio/x;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/x;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 221
    :cond_6
    const-string v1, "com.marvell.fmradio.DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    new-instance v0, Lcom/marvell/fmradio/t;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/t;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 234
    :cond_7
    const-string v1, "com.marvell.fmradio.DISABLE_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 235
    new-instance v0, Lcom/marvell/fmradio/v;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/v;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 246
    :cond_8
    const-string v1, "com.marvell.fmradio.SCANPREV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 247
    new-instance v0, Lcom/marvell/fmradio/q;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/q;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 262
    :cond_9
    const-string v1, "com.marvell.fmradio.SCANNEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 263
    new-instance v0, Lcom/marvell/fmradio/s;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/s;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 276
    :cond_a
    const-string v1, "com.marvell.fmradio.SPEAKER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 277
    const-string v0, "speaker"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/marvell/fmradio/FMService;->S:Z

    .line 278
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SPEAKER_ACTION>speaker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/marvell/fmradio/FMService;->S:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/marvell/fmradio/p;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/p;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 286
    :cond_b
    const-string v1, "com.marvell.fmradio.SCANALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 288
    new-instance v0, Lcom/marvell/fmradio/ah;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ah;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 314
    :cond_c
    const-string v1, "com.marvell.fmradio.STOPSCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 315
    new-instance v0, Lcom/marvell/fmradio/ag;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ag;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 324
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 325
    :cond_d
    const-string v1, "com.marvell.fmradio.SUSPEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 326
    new-instance v0, Lcom/marvell/fmradio/ak;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ak;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 333
    :cond_e
    const-string v1, "com.marvell.fmradio.RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 334
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<RESUME_ACTION>speaker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/marvell/fmradio/FMService;->S:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-boolean v0, Lcom/marvell/fmradio/FMService;->S:Z

    if-eqz v0, :cond_f

    .line 336
    new-instance v0, Lcom/marvell/fmradio/aj;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/aj;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 344
    :cond_f
    new-instance v0, Lcom/marvell/fmradio/am;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/am;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 350
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 351
    :cond_10
    const-string v1, "com.marvell.fmradio.RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 361
    iget-object v0, p0, Lcom/marvell/fmradio/FMService;->ao:Lcom/marvell/fmmanager/FMRadioManager;

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->getRecordFormat()[B

    move-result-object v0

    .line 362
    if-nez v0, :cond_11

    .line 363
    sget-object v0, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 367
    :cond_11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 368
    invoke-direct {p0, v1}, Lcom/marvell/fmradio/FMService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 373
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Coolpad/My Records/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FM Records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<RECORD_ACTION>fileDirPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    .line 381
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 383
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<RECORD_ACTION>filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-boolean v1, Lcom/marvell/fmradio/FMService;->T:Z

    if-nez v1, :cond_13

    .line 387
    new-instance v1, Lcom/marvell/fmradio/al;

    invoke-direct {v1, p0, v0}, Lcom/marvell/fmradio/al;-><init>(Lcom/marvell/fmradio/FMService;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 406
    :cond_13
    new-instance v0, Lcom/marvell/fmradio/ap;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ap;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 426
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 429
    :cond_14
    sget-object v0, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/marvell/fmradio/FMService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 432
    :cond_15
    const-string v1, "com.marvell.fmradio.GETRSSI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Lcom/marvell/fmradio/ao;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ao;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 439
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 465
    new-instance v0, Lcom/marvell/fmradio/ar;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ar;-><init>(Lcom/marvell/fmradio/FMService;)V

    .line 472
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 473
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 474
    return-void
.end method
