.class public Lcom/marvell/fmradio/ListTestdeleteableActivity;
.super Lcom/yulong/android/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/marvell/fmradio/a/b;
.implements Lcom/marvell/fmradio/a/i;
.implements Lcom/marvell/fmradio/a/n;


# static fields
.field public static final TAG:Ljava/lang/String; = "ListTestdeleteableActivity"

.field private static d:I = 0x0

.field private static final g:Ljava/lang/String; = "action_current_station_play"

.field static final h:I = 0x6

.field static final i:I = 0x27e2

.field static final j:I = 0x1e

.field public static k:I = 0x0

.field private static l:I = 0x0

.field private static final m:Ljava/lang/String; = "EditFavorite"

.field private static final n:Ljava/lang/String; = "RenameFavorite"

.field private static final o:Ljava/lang/String; = "DeleteFavorite"

.field private static final p:I = 0x1

.field private static final q:I = 0x2


# instance fields
.field private c:Lcom/yulong/android/view/list/DeleteableListView;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private r:[Ljava/lang/String;

.field private s:[Z

.field private t:Landroid/widget/ImageView;

.field private u:I

.field private v:Lcom/marvell/fmradio/c/e;

.field private w:J

.field private x:Landroid/widget/AdapterView$OnItemLongClickListener;

.field public final y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    sput v0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->d:I

    .line 96
    const/4 v0, 0x6

    sput v0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->k:I

    .line 105
    const/4 v0, 0x0

    sput v0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 59
    invoke-direct {p0}, Lcom/yulong/android/base/BaseActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->f:Ljava/util/List;

    .line 121
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->r:[Ljava/lang/String;

    .line 124
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->s:[Z

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    .line 319
    new-instance v0, Lcom/marvell/fmradio/e;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/e;-><init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->x:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 642
    new-instance v0, Lcom/marvell/fmradio/d;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/d;-><init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->y:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0
    .parameter

    .prologue
    .line 59
    sput p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->d:I

    return p0
.end method

.method static synthetic a(Lcom/marvell/fmradio/ListTestdeleteableActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/marvell/fmradio/ListTestdeleteableActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->w:J

    return-wide p1
.end method

.method static synthetic a(Lcom/marvell/fmradio/ListTestdeleteableActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->t:Landroid/widget/ImageView;

    return-object p1
.end method

.method private a()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 420
    const-string v0, "ListTestdeleteableActivity"

    const-string v2, "setData IN "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 428
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v3

    .line 429
    const-string v0, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setData: st==  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->K()I

    move-result v2

    .line 433
    const-string v0, "ListTestdeleteableActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setData: sfl_num=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 436
    :goto_0
    if-ge v0, v10, :cond_2

    .line 437
    if-nez v2, :cond_0

    .line 438
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->r:[Ljava/lang/String;

    aput-object v7, v4, v0

    .line 439
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->s:[Z

    aput-boolean v9, v4, v0

    .line 440
    const-string v4, "ListTestdeleteableActivity"

    const-string v5, "setData: stationFavorList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_1
    const-string v4, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setData: j= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v4, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setData: buttonAddeStation[j]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->r:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v4, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setData: noButtonAddeStation[j]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->s:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    if-ge v0, v2, :cond_1

    .line 443
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->r:[Ljava/lang/String;

    iget-object v5, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v5, v0}, Lcom/marvell/fmradio/c/e;->p(I)Lcom/marvell/fmradio/c/c;

    move-result-object v5

    iget-object v5, v5, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    aput-object v5, v4, v0

    .line 444
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->s:[Z

    aput-boolean v1, v4, v0

    goto :goto_1

    .line 446
    :cond_1
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->r:[Ljava/lang/String;

    aput-object v7, v4, v0

    .line 447
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->s:[Z

    aput-boolean v9, v4, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 457
    :goto_2
    if-ge v2, v3, :cond_6

    .line 458
    new-instance v4, Lcom/marvell/fmradio/an;

    invoke-direct {v4, p0}, Lcom/marvell/fmradio/an;-><init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V

    .line 461
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0, v2}, Lcom/marvell/fmradio/c/e;->o(I)Lcom/marvell/fmradio/c/c;

    move-result-object v0

    .line 462
    iget-object v5, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 463
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 464
    const-string v6, "ListTestdeleteableActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setData:frequency=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v6, "ListTestdeleteableActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setData:name=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v4, v5}, Lcom/marvell/fmradio/an;->c(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4, v0}, Lcom/marvell/fmradio/an;->d(Ljava/lang/String;)V

    .line 472
    sget v0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->k:I

    invoke-virtual {v4, v0}, Lcom/marvell/fmradio/an;->d(I)V

    .line 475
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v0, v0, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const-string v0, "ListTestdeleteableActivity"

    const-string v6, "setData:setIsPlay : true"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v4, v9}, Lcom/marvell/fmradio/an;->f(Z)V

    :goto_3
    move v0, v1

    .line 483
    :goto_4
    if-ge v0, v10, :cond_5

    .line 485
    iget-object v6, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->r:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 486
    invoke-virtual {v4, v0}, Lcom/marvell/fmradio/an;->c(I)V

    .line 487
    invoke-virtual {v4, v9}, Lcom/marvell/fmradio/an;->e(Z)V

    .line 488
    iget-object v6, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->s:[Z

    aput-boolean v9, v6, v0

    .line 483
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 479
    :cond_4
    invoke-virtual {v4, v1}, Lcom/marvell/fmradio/an;->f(Z)V

    goto :goto_3

    .line 491
    :cond_5
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 494
    :cond_6
    const-string v0, "ListTestdeleteableActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData:listdata.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/BaseListView;->setCount(I)V

    .line 497
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "setData OUT "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 2
    .parameter

    .prologue
    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 349
    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 351
    :pswitch_0
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "RESET_CHANNEL_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->d()V

    goto :goto_0

    .line 355
    :pswitch_1
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "DELETE_CHANNEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->f()V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/marvell/fmradio/ListTestdeleteableActivity;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 892
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 893
    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->d:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0
    .parameter

    .prologue
    .line 59
    sput p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->l:I

    return p0
.end method

.method static synthetic b(Lcom/marvell/fmradio/ListTestdeleteableActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->w:J

    return-wide v0
.end method

.method static synthetic c(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Lcom/marvell/fmradio/c/e;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    return-object v0
.end method

.method static synthetic e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->k()I

    move-result v1

    .line 684
    const-string v0, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRenameFavoriteDialog selectPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v2

    .line 689
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->A()Ljava/lang/String;

    move-result-object v0

    .line 690
    const-string v1, "ListTestdeleteableActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRenameFavoriteDialog selctStationName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v1, "ListTestdeleteableActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRenameFavoriteDialog selctStationFreq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {v0}, Lcom/marvell/fmradio/a/o;->f(Ljava/lang/String;)Lcom/marvell/fmradio/a/o;

    move-result-object v0

    .line 696
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RenameFavorite"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method static synthetic f(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Lcom/yulong/android/view/list/DeleteableListView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    return-object v0
.end method

.method static synthetic h(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/marvell/fmradio/ListTestdeleteableActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    return v0
.end method

.method private k()I
    .locals 4

    .prologue
    .line 906
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v0}, Lcom/yulong/android/view/list/BaseListView;->getSelectedPosition()I

    move-result v0

    .line 907
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getListSelected> selectPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getListSelected> list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 911
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "listdata.size() <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    .line 922
    :cond_0
    :goto_0
    return v0

    .line 915
    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 916
    :cond_2
    iget v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 917
    iget v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    goto :goto_0

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const-string v0, "ListTestdeleteableActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectPosition fisrtPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",iCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-lt p2, p3, :cond_1

    .line 396
    add-int/lit8 v0, p3, -0x1

    .line 397
    if-ltz v0, :cond_0

    .line 398
    rem-int/lit8 v0, v0, 0x6

    .line 399
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v1, p2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    sub-int v0, p2, p1

    .line 403
    rem-int/lit8 v0, v0, 0x6

    .line 404
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, p2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public a_()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 655
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->y:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->y:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 658
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 650
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 651
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 652
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 665
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    sget v1, Lcom/marvell/fmradio/ListTestdeleteableActivity;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v1

    .line 666
    const-string v0, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showEditFavoriteDialog selectFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    sget v2, Lcom/marvell/fmradio/ListTestdeleteableActivity;->l:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->A()Ljava/lang/String;

    move-result-object v0

    .line 670
    const-string v2, "ListTestdeleteableActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEditFavoriteDialog selctStationName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static {v0, v1}, Lcom/marvell/fmradio/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/marvell/fmradio/a/j;

    move-result-object v0

    .line 675
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EditFavorite"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 703
    invoke-static {}, Lcom/marvell/fmradio/a/k;->F()Lcom/marvell/fmradio/a/k;

    move-result-object v0

    .line 704
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DeleteFavorite"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public g()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 711
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "<editFavorite>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditFavorite"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/a/j;

    .line 714
    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 719
    if-eqz v1, :cond_0

    .line 723
    const/high16 v0, 0x7f07

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/view/edittext/EditTextEx;

    .line 725
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/view/edittext/EditTextEx;

    .line 729
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    sget v3, Lcom/marvell/fmradio/ListTestdeleteableActivity;->l:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/marvell/fmradio/an;

    invoke-virtual {v2}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v3

    .line 730
    const-string v2, "ListTestdeleteableActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<editFavorite> mDlgStationFreq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    sget v4, Lcom/marvell/fmradio/ListTestdeleteableActivity;->l:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/marvell/fmradio/an;

    invoke-virtual {v2}, Lcom/marvell/fmradio/an;->A()Ljava/lang/String;

    move-result-object v2

    .line 733
    const-string v4, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<editFavorite> mDlgStationName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/yulong/android/view/edittext/RichEdit;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-virtual {v1}, Lcom/yulong/android/view/edittext/RichEdit;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 745
    const-string v1, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<editFavorite> newName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v1, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<editFavorite> newStationFreqStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 754
    :goto_1
    const/4 v1, 0x0

    .line 757
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 762
    :goto_2
    invoke-static {v1}, Lcom/marvell/fmradio/c/b;->b(F)I

    move-result v1

    .line 763
    const-string v4, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<editFavorite> newFreq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-static {v1}, Lcom/marvell/fmradio/c/b;->f(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 767
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/marvell/fmradio/c/e;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05006c

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 758
    :catch_0
    move-exception v4

    .line 759
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 775
    :cond_2
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v2, v3}, Lcom/marvell/fmradio/c/e;->getIndex(Ljava/lang/String;)I

    move-result v2

    .line 776
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v4, v3}, Lcom/marvell/fmradio/c/e;->l(Ljava/lang/String;)I

    move-result v3

    .line 777
    const-string v4, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<editFavorite> index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v4, "ListTestdeleteableActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<editFavorite> fIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    if-eq v2, v7, :cond_4

    .line 780
    if-ne v3, v7, :cond_3

    .line 781
    iget-object v3, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v3, v2}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 783
    :cond_3
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v3, Lcom/marvell/fmradio/c/c;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/marvell/fmradio/c/e;->a(Lcom/marvell/fmradio/c/c;)I

    .line 789
    :cond_4
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a()Ljava/util/List;

    goto/16 :goto_0

    .line 791
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public h()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 801
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "<renameFavorite>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RenameFavorite"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/a/o;

    .line 804
    if-nez v0, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_0

    .line 813
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/view/edittext/EditTextEx;

    .line 816
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 827
    invoke-virtual {v0}, Lcom/yulong/android/view/edittext/RichEdit;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/marvell/fmradio/an;

    invoke-virtual {v1}, Lcom/marvell/fmradio/an;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 829
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 834
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 835
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 838
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->k()I

    move-result v0

    .line 839
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v0

    .line 840
    const-string v2, "ListTestdeleteableActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameFavorite selectFrequency = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v2, v0}, Lcom/marvell/fmradio/c/e;->getIndex(Ljava/lang/String;)I

    move-result v2

    .line 843
    const-string v3, "ListTestdeleteableActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renameFavorite index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    if-eq v2, v8, :cond_5

    .line 845
    iget-object v3, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v4, Lcom/marvell/fmradio/c/c;

    invoke-direct {v4, v0, v1}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/marvell/fmradio/c/e;->a(ILcom/marvell/fmradio/c/c;)I

    .line 848
    :cond_5
    iget-object v3, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v3, v0}, Lcom/marvell/fmradio/c/e;->l(Ljava/lang/String;)I

    move-result v3

    .line 849
    iget-object v4, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v4, v0}, Lcom/marvell/fmradio/c/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 850
    const-string v5, "ListTestdeleteableActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renameFavorite fIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    if-eq v3, v8, :cond_6

    .line 852
    iget-object v3, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v5, Lcom/marvell/fmradio/c/c;

    invoke-direct {v5, v0, v1, v4}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v5}, Lcom/marvell/fmradio/c/e;->b(ILcom/marvell/fmradio/c/c;)I

    .line 856
    :cond_6
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a()Ljava/util/List;

    .line 857
    const v0, 0x7f050044

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public i()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 866
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    sget v1, Lcom/marvell/fmradio/ListTestdeleteableActivity;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v0

    .line 867
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<deleteFavorite>mDlgStationFreq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 870
    const-string v2, "ListTestdeleteableActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<deleteFavorite>index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    if-eq v1, v5, :cond_0

    .line 872
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v2, v1}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->l(Ljava/lang/String;)I

    move-result v0

    .line 875
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<deleteFavorite>fIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    if-eq v0, v5, :cond_1

    .line 877
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->m(I)V

    .line 881
    :cond_1
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a()Ljava/util/List;

    .line 882
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 883
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 885
    :cond_2
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/yulong/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0, v3}, Lcom/yulong/android/base/BaseActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 138
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->mContext:Landroid/content/Context;

    .line 140
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "onCreate IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/AbsActivity;->setBodyLayout(I)Landroid/view/View;

    .line 143
    invoke-static {}, Lcom/marvell/fmradio/c/e;->I()Lcom/marvell/fmradio/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->v:Lcom/marvell/fmradio/c/e;

    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/AbsActivity;->setBodyLayoutBackgroundByArgb(I)V

    .line 146
    iget-object v0, p0, Lcom/yulong/android/base/AbsActivity;->mBodyView:Landroid/view/View;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/view/list/DeleteableListView;

    iput-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    .line 147
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v0, v2}, Lcom/yulong/android/view/list/BaseListView;->setRound(Z)V

    .line 148
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v0, v3}, Lcom/yulong/android/view/list/BaseListView;->setClickSetBackground(Z)V

    .line 149
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v0, v2}, Lcom/yulong/android/view/list/BaseListView;->setDoubleClick(Z)V

    .line 150
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    iget v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/BaseListView;->setSelectedPosition(I)V

    .line 151
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->x:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/yulong/android/base/BaseActivity;->setMenuButtonVisible(Z)V

    .line 157
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/BaseActivity;->setButtonCount(I)V

    .line 158
    new-instance v0, Lcom/marvell/fmradio/c;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/c;-><init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/BaseActivity;->setButtonGroupProcessor(Lcom/yulong/android/controller/ButtonGroupProcessor;)V

    .line 191
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/DeleteableListView;->setListItemViewResid(I)V

    .line 196
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    new-instance v1, Lcom/marvell/fmradio/a;

    invoke-direct {v1, p0}, Lcom/marvell/fmradio/a;-><init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/DeleteableListView;->setDeleteableListItemProcessor(Lcom/yulong/android/view/list/DeleteableListView$DeleteableListItemProcessor;)V

    .line 316
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "onCreate OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 412
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-super {p0}, Lcom/yulong/android/base/BaseActivity;->onPause()V

    .line 414
    return-void
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 365
    invoke-super {p0}, Lcom/yulong/android/base/BaseActivity;->onResume()V

    .line 366
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "onResume IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a()Ljava/util/List;

    .line 370
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/BaseListView;->setCount(I)V

    .line 371
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v0}, Lcom/yulong/android/view/list/BaseListView;->refresh()V

    .line 372
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 374
    iget-object v2, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c:Lcom/yulong/android/view/list/DeleteableListView;

    invoke-virtual {v2, v1}, Lcom/yulong/android/view/list/BaseListView;->setCount(I)V

    .line 375
    sget v2, Lcom/marvell/fmradio/ListTestdeleteableActivity;->d:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(III)V

    .line 376
    iget-object v0, p0, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 379
    :cond_0
    const-string v0, "ListTestdeleteableActivity"

    const-string v1, "onResume OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method
