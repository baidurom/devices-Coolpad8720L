.class public final Lcom/baidu/location/LocationClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/LocationClient$a;,
        Lcom/baidu/location/LocationClient$b;
    }
.end annotation


# static fields
.field private static final byte:Ljava/lang/String; = "baidu_location_Client"

.field private static final char:I = 0x1770

.field private static final do:I = 0x4

.field private static final for:I = 0x1

.field private static final h:I = 0x3

.field private static final if:I = 0x5

.field private static final k:I = 0x2

.field private static final new:I = 0x6

.field private static final try:I = 0x7

.field private static final void:I = 0x3e8


# instance fields
.field private a:Landroid/os/Messenger;

.field private b:J

.field private c:Lcom/baidu/location/LocationClient$a;

.field private case:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;

.field private else:Z

.field private f:Lcom/baidu/location/BDLocation;

.field private g:Landroid/content/Context;

.field private goto:J

.field private i:Ljava/lang/String;

.field private int:Z

.field private j:Landroid/content/ServiceConnection;

.field private final l:Landroid/os/Messenger;

.field private long:Ljava/lang/String;

.field private m:Lcom/baidu/location/LocationClientOption;

.field private n:Z

.field private o:Lcom/baidu/location/LocationClient$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.3"

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->i:Ljava/lang/String;

    iput-wide v4, p0, Lcom/baidu/location/LocationClient;->b:J

    iput-wide v4, p0, Lcom/baidu/location/LocationClient;->goto:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->long:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->int:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->g:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    new-instance v0, Lcom/baidu/location/LocationClient$a;

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/LocationClient$a;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/LocationClient$1;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->f:Lcom/baidu/location/BDLocation;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->n:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->d:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->case:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->o:Lcom/baidu/location/LocationClient$b;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->else:Z

    new-instance v0, Lcom/baidu/location/LocationClient$1;

    invoke-direct {v0, p0}, Lcom/baidu/location/LocationClient$1;-><init>(Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->j:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/content/Context;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.3"

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->i:Ljava/lang/String;

    iput-wide v4, p0, Lcom/baidu/location/LocationClient;->b:J

    iput-wide v4, p0, Lcom/baidu/location/LocationClient;->goto:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->long:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->int:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->g:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    new-instance v0, Lcom/baidu/location/LocationClient$a;

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/LocationClient$a;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/LocationClient$1;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->f:Lcom/baidu/location/BDLocation;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->n:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->d:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->case:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->o:Lcom/baidu/location/LocationClient$b;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->else:Z

    new-instance v0, Lcom/baidu/location/LocationClient$1;

    invoke-direct {v0, p0}, Lcom/baidu/location/LocationClient$1;-><init>(Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->j:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    return-void
.end method

.method private a()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "num"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "distance"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->do:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->if:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->d:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->f:Lcom/baidu/location/BDLocation;

    invoke-interface {v0, v2}, Lcom/baidu/location/BDLocationListener;->onReceivePoi(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/baidu/location/LocationClient;->d:Z

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->n:Z

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->long:Z

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->f:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->f:Lcom/baidu/location/BDLocation;

    invoke-interface {v0, v2}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lcom/baidu/location/LocationClient;->n:Z

    :cond_4
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Landroid/os/Message;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu_location_Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on receive new location : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->f:Lcom/baidu/location/BDLocation;

    invoke-direct {p0, p2}, Lcom/baidu/location/LocationClient;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->for()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/LocationClient;->a(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/LocationClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->int:Z

    return p1
.end method

.method static synthetic byte(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    return-object v0
.end method

.method static synthetic case(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->new()V

    return-void
.end method

.method static synthetic char(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private do()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->goto:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->d:Z

    const-string v0, "baidu_location_Client"

    const-string v1, "send poi request to server..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private do(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocationListener;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic do(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->do()V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->if(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/LocationClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->else:Z

    return p1
.end method

.method static synthetic for(Lcom/baidu/location/LocationClient;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->if()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private for()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->int:Z

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/location/j;->do()V

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->long:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    if-nez v1, :cond_1

    new-instance v1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    :cond_1
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->int:Z

    goto :goto_0
.end method

.method private if()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packName"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->long:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prodName"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "coorType"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openGPS"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->byte:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "location_change_notify"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->long:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "scanSpan"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->for:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timeOut"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->goto:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->else:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    return-object v0
.end method

.method private if(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "baidu_location_Client"

    const-string v1, "setOption, but msg.obj is null"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/LocationClientOption;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClientOption;->equals(Lcom/baidu/location/LocationClientOption;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    if-nez v0, :cond_3

    const-string v0, "baidu_location_Client"

    const-string v1, "server not connected"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/16 v1, 0xf

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->if()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string v0, "baidu_location_Client"

    const-string v1, "change option ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->do(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->case:Z

    return p1
.end method

.method private int()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->int:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    invoke-static {}, Lcom/baidu/location/j;->for()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->int:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic int(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->int()V

    return-void
.end method

.method static synthetic new(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    return-object v0
.end method

.method private new()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    if-nez v0, :cond_1

    const-string v0, "baidu_location_Client"

    const-string v1, "server not connected"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->else:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->long:Z

    if-nez v0, :cond_3

    :cond_2
    const/16 v0, 0x16

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->n:Z

    const-string v0, "baidu_location_Client"

    const-string v1, "send request to server..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->for:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->case:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->o:Lcom/baidu/location/LocationClient$b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/baidu/location/LocationClient$b;

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/LocationClient$b;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/LocationClient$1;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->o:Lcom/baidu/location/LocationClient$b;

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->o:Lcom/baidu/location/LocationClient$b;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->for:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/LocationClient;->case:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic try(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public getLastKnownLocation()Lcom/baidu/location/BDLocation;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->f:Lcom/baidu/location/BDLocation;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->int:Z

    return v0
.end method

.method public registerLocationListener(Lcom/baidu/location/BDLocationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestLocation()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/LocationClient;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const-string v0, "baidu_location_Client"

    const-string v1, "request location ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPoi()I
    .locals 6

    const/4 v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->a:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->l:Landroid/os/Messenger;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/LocationClient;->goto:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1770

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/baidu/location/LocationClient;->m:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->a:I

    if-lt v2, v1, :cond_1

    const-string v1, "baidu_location_Client"

    const-string v2, "request location ..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocOption(Lcom/baidu/location/LocationClientOption;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->c:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
