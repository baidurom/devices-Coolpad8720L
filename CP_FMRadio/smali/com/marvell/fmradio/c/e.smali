.class public Lcom/marvell/fmradio/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelHolder"

.field public static final cf:I = 0x155cc

.field private static cl:Lcom/marvell/fmradio/c/e;


# instance fields
.field public cg:Ljava/util/List;

.field public ch:Ljava/util/List;

.field public ci:I

.field private cj:Lcom/marvell/fmradio/b/c;

.field private ck:Lcom/marvell/fmradio/b/b;

.field private cm:Ljava/util/List;

.field public rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/marvell/fmradio/c/e;->cl:Lcom/marvell/fmradio/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x155cc

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    .line 45
    iput-object v1, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/marvell/fmradio/c/e;->ci:I

    .line 49
    iput-object v1, p0, Lcom/marvell/fmradio/c/e;->cj:Lcom/marvell/fmradio/b/c;

    .line 50
    iput-object v1, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/c/e;->cm:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/marvell/fmradio/b/b;

    invoke-direct {v0}, Lcom/marvell/fmradio/b/b;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    .line 67
    new-instance v0, Lcom/marvell/fmradio/b/c;

    invoke-direct {v0}, Lcom/marvell/fmradio/b/c;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/c/e;->cj:Lcom/marvell/fmradio/b/c;

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.marvell.fmradio/files/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 73
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.marvell.fmradio/files/channels.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iput v2, p0, Lcom/marvell/fmradio/c/e;->ci:I

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cj:Lcom/marvell/fmradio/b/c;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/b/c;->b(Lcom/marvell/fmradio/c/e;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    const-string v0, "ChannelHolder"

    const-string v1, "Failed to parse file"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_1
    iget v0, p0, Lcom/marvell/fmradio/c/e;->ci:I

    if-nez v0, :cond_1

    .line 86
    const v0, 0x155cc

    iput v0, p0, Lcom/marvell/fmradio/c/e;->ci:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 83
    :cond_3
    :try_start_1
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static I()Lcom/marvell/fmradio/c/e;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/marvell/fmradio/c/e;->cl:Lcom/marvell/fmradio/c/e;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/marvell/fmradio/c/e;

    invoke-direct {v0}, Lcom/marvell/fmradio/c/e;-><init>()V

    sput-object v0, Lcom/marvell/fmradio/c/e;->cl:Lcom/marvell/fmradio/c/e;

    .line 60
    :cond_0
    sget-object v0, Lcom/marvell/fmradio/c/e;->cl:Lcom/marvell/fmradio/c/e;

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 325
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v2

    .line 329
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 330
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 332
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/marvell/fmradio/c/e;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 336
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 338
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/marvell/fmradio/c/e;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 339
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 342
    :cond_2
    :goto_1
    if-gt v2, v1, :cond_0

    .line 343
    add-int v0, v2, v1

    div-int/lit8 v3, v0, 0x2

    .line 344
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 346
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/marvell/fmradio/c/e;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 347
    add-int/lit8 v0, v3, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_2
    move v2, v1

    move v1, v0

    .line 350
    goto :goto_1

    .line 349
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v1, v2

    goto :goto_2
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 359
    sub-int/2addr v0, v1

    return v0
.end method

.method private notifyObservers()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/a;

    .line 108
    invoke-interface {v0}, Lcom/marvell/fmradio/c/a;->G()V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public J()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<deleteAllFavorite>mFavoriteList.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Lcom/marvell/fmradio/c/e;->notifyObservers()V

    .line 188
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/b/b;->a(Lcom/marvell/fmradio/c/e;)V

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public K()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public L()Ljava/util/List;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    return-object v0
.end method

.method public M()Ljava/util/List;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    iget v0, p0, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 317
    iget-object v3, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 321
    :goto_1
    return-object v0

    .line 314
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(ILcom/marvell/fmradio/c/c;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/marvell/fmradio/c/e;->a(Lcom/marvell/fmradio/c/c;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/marvell/fmradio/c/c;)I
    .locals 3
    .parameter

    .prologue
    .line 113
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const-string v0, "ChannelHolder"

    const-string v1, "Command name/content mustn\'t be empty!"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, -0x1

    .line 126
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    iget-object v1, p1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/e;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 119
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_2

    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    iget-object v2, p1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p0, v1}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lcom/marvell/fmradio/c/e;->notifyObservers()V

    .line 125
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/b/b;->a(Lcom/marvell/fmradio/c/e;)V

    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public a(Lcom/marvell/fmradio/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method

.method public b(ILcom/marvell/fmradio/c/c;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/marvell/fmradio/c/e;->m(I)V

    .line 153
    invoke-virtual {p0, p2}, Lcom/marvell/fmradio/c/e;->b(Lcom/marvell/fmradio/c/c;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/marvell/fmradio/c/c;)I
    .locals 3
    .parameter

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    const-string v0, "ChannelHolder"

    const-string v1, "Command name/content mustn\'t be empty!"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, -0x1

    .line 143
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    iget-object v1, p1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/e;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 136
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_2

    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    iget-object v2, p1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0, v1}, Lcom/marvell/fmradio/c/e;->m(I)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Lcom/marvell/fmradio/c/e;->notifyObservers()V

    .line 142
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/b/b;->a(Lcom/marvell/fmradio/c/e;)V

    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public b(Lcom/marvell/fmradio/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public delete(I)V
    .locals 3
    .parameter

    .prologue
    .line 157
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 158
    :cond_0
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is invalid, it must between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Lcom/marvell/fmradio/c/e;->notifyObservers()V

    .line 166
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/b/b;->a(Lcom/marvell/fmradio/c/e;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/b/b;->a(Lcom/marvell/fmradio/c/e;)V

    .line 220
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    .line 277
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getIndex> freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 279
    const/4 v1, -0x1

    .line 280
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 282
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 280
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_1
    return v2
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)Lcom/marvell/fmradio/c/c;
    .locals 3
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 269
    iget-object v2, v0, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    .line 289
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getFavoriteIndex> freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 291
    const/4 v1, -0x1

    .line 292
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 294
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 292
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 297
    :cond_1
    return v2
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 301
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getFavoritePos> freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 304
    iget-object v2, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    .line 308
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(I)V
    .locals 3
    .parameter

    .prologue
    .line 170
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 171
    :cond_0
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is invalid, it must between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    invoke-direct {p0}, Lcom/marvell/fmradio/c/e;->notifyObservers()V

    .line 179
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ck:Lcom/marvell/fmradio/b/b;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/b/b;->a(Lcom/marvell/fmradio/c/e;)V

    goto :goto_0
.end method

.method public n(I)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput p1, p0, Lcom/marvell/fmradio/c/e;->ci:I

    .line 224
    return-void
.end method

.method public o(I)Lcom/marvell/fmradio/c/c;
    .locals 3
    .parameter

    .prologue
    .line 243
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 244
    :cond_0
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is invalid, it must between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 250
    :cond_1
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemFreq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    goto :goto_0
.end method

.method public p(I)Lcom/marvell/fmradio/c/c;
    .locals 3
    .parameter

    .prologue
    .line 255
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 256
    :cond_0
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is invalid, it must between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    .line 262
    :cond_1
    const-string v0, "ChannelHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFavoriteItemFreq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    goto :goto_0
.end method
