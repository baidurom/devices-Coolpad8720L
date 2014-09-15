.class public final Lcom/baidu/location/f;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/f$1;,
        Lcom/baidu/location/f$b;,
        Lcom/baidu/location/f$a;
    }
.end annotation


# static fields
.field static final B:I = 0x37

.field static final F:I = 0x33

.field static final G:I = 0x35

.field static final H:I = 0xd

.field static final K:I = 0x16

.field static final L:I = 0x41

.field static M:Ljava/lang/String; = null

.field static final N:I = 0x15

.field static final O:I = 0x3d

.field static final P:I = 0x40

.field static final R:I = 0xb

.field static final a:I = 0x19

.field static final byte:I = 0xc

.field static final c:I = 0x2a

.field static final case:I = 0xe

.field static final char:F = 2.3f

.field static final d:I = 0xbb8

.field static final e:I = 0x34

.field static final f:I = 0x1f

.field public static final g:Ljava/lang/String; = "baidu_location_service"

.field static final goto:I = 0x18

.field static final if:I = 0x3e8

.field static final int:I = 0x2b

.field static final j:I = 0xbb8

.field static final l:I = 0x17

.field static final n:I = 0xf

.field static final q:I = 0x3f

.field static final r:I = 0x3e

.field static final s:I = 0x7d0

.field static final try:I = 0x1a

.field static final u:I = 0x5b

.field static final v:I = 0x47

.field static final w:I = 0x29

.field static final x:I = 0x51

.field static final z:I = 0x36


# instance fields
.field private A:Lcom/baidu/location/b;

.field private C:Z

.field private D:Landroid/location/Location;

.field private E:Lcom/baidu/location/a;

.field private I:Lcom/baidu/location/c;

.field private J:Lcom/baidu/location/c$a;

.field private Q:Ljava/lang/String;

.field private b:Lcom/baidu/location/e$c;

.field final do:Landroid/os/Handler;

.field private else:Z

.field private for:Lcom/baidu/location/e$c;

.field private h:Ljava/lang/String;

.field private i:J

.field private k:Lcom/baidu/location/e;

.field private long:Lcom/baidu/location/c$a;

.field final m:Landroid/os/Messenger;

.field private new:Z

.field private o:Lcom/baidu/location/c$a;

.field private p:Z

.field private t:J

.field private void:Ljava/lang/String;

.field private y:Lcom/baidu/location/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/baidu/tempdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/f;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/baidu/location/f$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/f$b;-><init>(Lcom/baidu/location/f;)V

    iput-object v0, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->m:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    iput-object v2, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    iput-object v2, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    iput-object v2, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    iput-object v2, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    iput-object v2, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/e$c;

    iput-object v2, p0, Lcom/baidu/location/f;->for:Lcom/baidu/location/e$c;

    iput-object v2, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    iput-object v2, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/c$a;

    iput-object v2, p0, Lcom/baidu/location/f;->long:Lcom/baidu/location/c$a;

    iput-object v2, p0, Lcom/baidu/location/f;->D:Landroid/location/Location;

    iput-object v2, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/f;->void:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/f;->else:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/f;->new:Z

    iput-boolean v3, p0, Lcom/baidu/location/f;->C:Z

    iput-boolean v3, p0, Lcom/baidu/location/f;->p:Z

    iput-wide v4, p0, Lcom/baidu/location/f;->i:J

    iput-wide v4, p0, Lcom/baidu/location/f;->t:J

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "baidu_location_service"

    const-string v2, "generate locdata ..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    invoke-virtual {v1}, Lcom/baidu/location/c$a;->if()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    invoke-virtual {v1}, Lcom/baidu/location/c;->if()Lcom/baidu/location/c$a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    :cond_1
    iget-object v1, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    invoke-virtual {v1}, Lcom/baidu/location/e$c;->if()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    invoke-virtual {v1}, Lcom/baidu/location/e;->new()Lcom/baidu/location/e$c;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v1}, Lcom/baidu/location/b;->byte()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v1}, Lcom/baidu/location/b;->do()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/f;->D:Landroid/location/Location;

    :goto_0
    iget-object v1, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->try()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz p1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    iget-object v2, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    iget-object v3, p0, Lcom/baidu/location/f;->D:Landroid/location/Location;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/baidu/location/j;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iput-object v0, p0, Lcom/baidu/location/f;->D:Landroid/location/Location;

    goto :goto_0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "baidu_location_service"

    const-string v1, "on new gps..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v0}, Lcom/baidu/location/b;->do()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v1}, Lcom/baidu/location/b;->byte()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/baidu/location/k;->do(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    if-eqz v1, :cond_2

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    invoke-virtual {v1}, Lcom/baidu/location/c;->if()Lcom/baidu/location/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    invoke-virtual {v2}, Lcom/baidu/location/e;->do()Lcom/baidu/location/e$c;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v3}, Lcom/baidu/location/a;->try()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/location/k;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Landroid/location/Location;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v0}, Lcom/baidu/location/b;->byte()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    iget-object v1, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v1}, Lcom/baidu/location/b;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a;->if(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "baidu_location_service"

    const-string v1, "on network exception"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/e$c;

    iput-object v2, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/c$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"63\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v1, v0, p1}, Lcom/baidu/location/a;->a(Ljava/lang/String;I)V

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/baidu/location/f;->new()V

    :cond_1
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 8

    const-string v0, "baidu_location_service"

    const-string v1, "manual upload ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->if()Lcom/baidu/location/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    invoke-virtual {v1}, Lcom/baidu/location/e;->do()Lcom/baidu/location/e$c;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v2}, Lcom/baidu/location/a;->try()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v7}, Lcom/baidu/location/k;->a(Lcom/baidu/location/c$a;Lcom/baidu/location/e$c;Ljava/lang/String;DDLjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/baidu/location/f;->int()V

    return-void
.end method

.method private a(Landroid/os/Message;I)V
    .locals 13

    const/high16 v12, 0x40a0

    const/4 v2, 0x0

    const/16 v11, 0x15

    const-wide/16 v9, 0x1

    const-string v0, "baidu_location_service"

    const-string v1, "on network success"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0, v8, p2}, Lcom/baidu/location/a;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-static {v8}, Lcom/baidu/location/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-ne p2, v11, :cond_8

    iput-object v8, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    :goto_0
    const-string v0, "ssid\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_b

    iget-object v1, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/e$c;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/e$c;

    invoke-virtual {v1, v0}, Lcom/baidu/location/e$c;->if(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    :goto_1
    const-string v0, "radius\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    const-string v0, "x\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    const-string v0, "y\":\""

    const-string v3, "\""

    invoke-static {v8, v0, v3}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    cmpl-double v0, v5, v9

    if-eqz v0, :cond_1

    cmpl-double v0, v1, v9

    if-eqz v0, :cond_1

    cmpl-double v0, v3, v9

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/c$a;

    double-to-float v5, v5

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/h;->a(Lcom/baidu/location/c$a;DDF)V

    :cond_1
    const-string v0, "a\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v2, v0, v9

    if-eqz v2, :cond_2

    const-string v2, "b\":\""

    const-string v3, "\""

    invoke-static {v8, v2, v3}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "c\":\""

    const-string v5, "\""

    invoke-static {v8, v4, v5}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "b\":\""

    const-string v7, "\""

    invoke-static {v8, v6, v7}, Lcom/baidu/location/j;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/baidu/location/k;->a(DDDD)V

    :cond_2
    const-string v0, "rWifiN\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    sput v0, Lcom/baidu/location/j;->int:I

    :cond_3
    const-string v0, "rWifiT\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_4

    sput v0, Lcom/baidu/location/j;->for:I

    :cond_4
    const-string v0, "hSpeedDis\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    cmpl-float v1, v0, v12

    if-lez v1, :cond_5

    sput v0, Lcom/baidu/location/j;->try:F

    :cond_5
    const-string v1, "mSpeedDis\":\""

    const-string v2, "\""

    invoke-static {v8, v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    cmpl-float v0, v0, v12

    if-lez v0, :cond_6

    sput v1, Lcom/baidu/location/j;->a:F

    :cond_6
    if-ne p2, v11, :cond_7

    invoke-direct {p0}, Lcom/baidu/location/f;->new()V

    :cond_7
    return-void

    :cond_8
    iput-object v8, p0, Lcom/baidu/location/f;->void:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    if-ne p2, v11, :cond_a

    iput-object v2, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    iput-object v2, p0, Lcom/baidu/location/f;->void:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iput-object v2, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->do()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->int(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/f;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/f;->a(Landroid/os/Message;I)V

    return-void
.end method

.method private a(Lcom/baidu/location/c$a;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->if()Lcom/baidu/location/c$a;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    iget-object v2, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    invoke-virtual {p1, v2}, Lcom/baidu/location/c$a;->a(Lcom/baidu/location/c$a;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/baidu/location/e$c;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    invoke-virtual {v2}, Lcom/baidu/location/e;->new()Lcom/baidu/location/e$c;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    iget-object v2, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    invoke-virtual {p1, v2}, Lcom/baidu/location/e$c;->a(Lcom/baidu/location/e$c;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/location/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/f;->p:Z

    return p1
.end method

.method private byte()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/baidu/location/g;->if(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/g;->goto()V

    :cond_0
    return-void
.end method

.method static synthetic byte(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->try()V

    return-void
.end method

.method private case()V
    .locals 2

    const-string v0, "baidu_location_service"

    const-string v1, "on switch gps ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->for()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/location/b;

    iget-object v1, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v0}, Lcom/baidu/location/b;->int()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v0}, Lcom/baidu/location/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    goto :goto_0
.end method

.method static synthetic case(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->int()V

    return-void
.end method

.method private char()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->new()V

    :cond_0
    return-void
.end method

.method static synthetic char(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->case()V

    return-void
.end method

.method private do()V
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/g;->if(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/g;->goto()V

    :cond_0
    return-void
.end method

.method private do(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "baidu_location_service"

    const-string v1, "request too frequency ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/f;->void:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    iget-object v1, p0, Lcom/baidu/location/f;->void:Ljava/lang/String;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/a;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a;->a(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    :cond_2
    invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/location/g;->if(Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    iput-object v0, p0, Lcom/baidu/location/f;->long:Lcom/baidu/location/c$a;

    iget-object v0, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    iput-object v0, p0, Lcom/baidu/location/f;->for:Lcom/baidu/location/e$c;

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f;->t:J

    goto :goto_0

    :cond_3
    const-string v0, "baidu_location_service"

    const-string v1, "request poi error .."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic do(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->if()V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->if(Landroid/os/Message;)V

    return-void
.end method

.method private for()V
    .locals 0

    return-void
.end method

.method private for(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "baidu_location_service"

    const-string v1, "on request location ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a;->do(Landroid/os/Message;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v0}, Lcom/baidu/location/b;->byte()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "baidu_location_service"

    const-string v1, "send gps location to client ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    iget-object v1, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v1}, Lcom/baidu/location/b;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/a;->a(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->for()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/baidu/location/f;->p:Z

    iget-object v0, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/location/f$a;-><init>(Lcom/baidu/location/f;Lcom/baidu/location/f$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/baidu/location/f;->int()V

    goto :goto_0
.end method

.method static synthetic for(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->for(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/f;->p:Z

    return v0
.end method

.method private if()V
    .locals 2

    const-string v0, "baidu_location_service"

    const-string v1, "on new wifi ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/location/f;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/f;->int()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->p:Z

    :cond_0
    return-void
.end method

.method private if(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a;->for(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->do(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/f;->else:Z

    return v0
.end method

.method private int()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/f;->C:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "baidu_location_service"

    const-string v1, "request too frequency ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    iget-object v1, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/f;->new()V

    goto :goto_0

    :cond_2
    const-string v0, "baidu_location_service"

    const-string v1, "start network locating ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/baidu/location/f;->C:Z

    iget-object v0, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/e$c;

    invoke-direct {p0, v0}, Lcom/baidu/location/f;->a(Lcom/baidu/location/e$c;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/c$a;

    invoke-direct {p0, v0}, Lcom/baidu/location/f;->a(Lcom/baidu/location/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    iget-object v1, p0, Lcom/baidu/location/f;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/f;->new()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5}, Lcom/baidu/location/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"62\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/f;->new()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v5, p0, Lcom/baidu/location/f;->h:Ljava/lang/String;

    :cond_5
    invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/f;->J:Lcom/baidu/location/c$a;

    iput-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/c$a;

    iget-object v0, p0, Lcom/baidu/location/f;->y:Lcom/baidu/location/e$c;

    iput-object v0, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/e$c;

    :goto_1
    iget-boolean v0, p0, Lcom/baidu/location/f;->new:Z

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->if()Lcom/baidu/location/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/baidu/location/c$a;->if:I

    iget v2, v0, Lcom/baidu/location/c$a;->for:I

    iget v0, v0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v1, v2, v0}, Lcom/baidu/location/h;->a(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/a;->a(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->new:Z

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f;->i:J

    goto/16 :goto_0

    :cond_8
    const-string v0, "baidu_location_service"

    const-string v1, "request error .."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private int(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a;->if(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method static synthetic int(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->char()V

    return-void
.end method

.method static synthetic int(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->a(Landroid/os/Message;)V

    return-void
.end method

.method private new()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->C:Z

    invoke-direct {p0}, Lcom/baidu/location/f;->byte()V

    return-void
.end method

.method private new(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a;->int(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method static synthetic new(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->a()V

    return-void
.end method

.method static synthetic new(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->new(Landroid/os/Message;)V

    return-void
.end method

.method private try()V
    .locals 2

    const-string v0, "baidu_location_service"

    const-string v1, "on new cell ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic try(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->for()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->m:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    new-instance v0, Lcom/baidu/location/c;

    iget-object v1, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    new-instance v0, Lcom/baidu/location/e;

    iget-object v1, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/e;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    new-instance v0, Lcom/baidu/location/a;

    iget-object v1, p0, Lcom/baidu/location/f;->do:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/location/a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->E:Lcom/baidu/location/a;

    iget-object v0, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->do()V

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->int()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/f;->else:Z

    const-string v0, "baidu_location_service"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu location service start ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->I:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->try()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->try()V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->A:Lcom/baidu/location/b;

    invoke-virtual {v0}, Lcom/baidu/location/b;->a()V

    :cond_2
    invoke-static {}, Lcom/baidu/location/k;->if()V

    invoke-static {}, Lcom/baidu/location/h;->if()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->else:Z

    const-string v0, "baidu_location_service"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
