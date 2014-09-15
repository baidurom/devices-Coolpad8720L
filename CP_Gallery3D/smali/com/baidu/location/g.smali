.class Lcom/baidu/location/g;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x0

.field private static b:Ljava/util/ArrayList; = null

.field private static final byte:I = 0x1

.field private static c:I = 0x0

.field private static final case:I = 0x2

.field private static char:Z = false

.field private static d:Ljava/lang/String; = null

.field private static do:Ljava/lang/String; = null

.field private static final e:I = 0x4

.field private static else:I = 0x0

.field private static f:Z = false

.field private static for:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static goto:Z = false

.field private static h:Ljava/lang/String; = null

.field private static i:Landroid/os/Handler; = null

.field private static if:Landroid/net/Uri; = null

.field private static int:Landroid/os/Handler; = null

.field private static final j:I = 0x3

.field private static long:I

.field private static new:Ljava/lang/String;

.field private static try:I

.field private static void:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/sdk.php"

    sput-object v0, Lcom/baidu/location/g;->d:Ljava/lang/String;

    const/16 v0, 0x800

    sput v0, Lcom/baidu/location/g;->long:I

    const/4 v0, 0x3

    sput v0, Lcom/baidu/location/g;->else:I

    sput-boolean v2, Lcom/baidu/location/g;->f:Z

    sput-boolean v2, Lcom/baidu/location/g;->char:Z

    sput-boolean v2, Lcom/baidu/location/g;->goto:Z

    sput-object v1, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    const/16 v0, 0x2ee0

    sput v0, Lcom/baidu/location/g;->a:I

    sput-object v1, Lcom/baidu/location/g;->if:Landroid/net/Uri;

    const/4 v0, 0x4

    sput v0, Lcom/baidu/location/g;->try:I

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/g;->g:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/g;->c:I

    sput-object v1, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    sput-object v1, Lcom/baidu/location/g;->i:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/baidu/location/g;->a:I

    return v0
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/baidu/location/g;->do:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)V

    sget v2, Lcom/baidu/location/g;->try:I

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/baidu/location/g;->f:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sput-boolean v0, Lcom/baidu/location/g;->f:Z

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bloc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/location/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->h:Ljava/lang/String;

    sput-object p1, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/location/g;->do:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/location/k;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->do:Ljava/lang/String;

    :cond_2
    new-instance v1, Lcom/baidu/location/g$1;

    invoke-direct {v1}, Lcom/baidu/location/g$1;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/baidu/location/g;->char:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic byte()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic case()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic char()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic do()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    return-object v0
.end method

.method public static do(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/g;->for(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/baidu/location/g;->try:I

    return-void
.end method

.method static synthetic do(Z)Z
    .locals 0

    sput-boolean p0, Lcom/baidu/location/g;->goto:Z

    return p0
.end method

.method static synthetic else()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->for:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic for()I
    .locals 1

    sget v0, Lcom/baidu/location/g;->try:I

    return v0
.end method

.method private static for(Landroid/content/Context;)I
    .locals 8

    const/4 v6, 0x4

    const/4 v7, 0x1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/g;->if:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/g;->if:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "apn"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    sput-object v0, Lcom/baidu/location/g;->g:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/g;->c:I

    move v0, v7

    goto :goto_0

    :cond_4
    const-string v0, "10.0.0.200"

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_2
    sput-object v0, Lcom/baidu/location/g;->g:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/g;->c:I

    move v0, v7

    goto/16 :goto_0

    :cond_6
    const-string v0, "10.0.0.172"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v6

    goto/16 :goto_0
.end method

.method public static goto()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/baidu/location/g;->goto:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v5, Lcom/baidu/location/g;->goto:Z

    sget-object v0, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    move v0, v1

    :cond_1
    invoke-static {}, Lcom/baidu/location/k;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_2
    :goto_1
    sget-object v0, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_5

    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/baidu/location/g;->goto:Z

    sget-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string v1, "No upload data..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/baidu/location/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload data size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/baidu/location/g;->long:I

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string v1, "Beging upload data..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/location/g$3;

    invoke-direct {v0}, Lcom/baidu/location/g$3;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic if(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Lcom/baidu/location/g;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic if()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->do:Ljava/lang/String;

    return-object v0
.end method

.method public static if(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)V

    sget v1, Lcom/baidu/location/g;->try:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static if(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/baidu/location/g;->char:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sput-boolean v0, Lcom/baidu/location/g;->char:Z

    invoke-static {p0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->void:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bloc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/location/g;->void:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/baidu/location/g;->i:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/location/g;->for:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/location/k;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->for:Ljava/lang/String;

    :cond_2
    new-instance v1, Lcom/baidu/location/g$2;

    invoke-direct {v1}, Lcom/baidu/location/g$2;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic if(Z)Z
    .locals 0

    sput-boolean p0, Lcom/baidu/location/g;->f:Z

    return p0
.end method

.method static synthetic int()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic long()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic new()I
    .locals 1

    sget v0, Lcom/baidu/location/g;->c:I

    return v0
.end method

.method static synthetic try()I
    .locals 1

    sget v0, Lcom/baidu/location/g;->else:I

    return v0
.end method

.method static synthetic void()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->void:Ljava/lang/String;

    return-object v0
.end method
