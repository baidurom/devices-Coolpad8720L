.class Lcom/marvell/fmradio/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic B:Lcom/marvell/fmradio/MultipleListTestActivity;

.field private aY:Ljava/lang/String;

.field private aZ:Ljava/lang/String;

.field private ba:I

.field private bb:Z

.field private bc:Z

.field private bd:I


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MultipleListTestActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 344
    iput-object p1, p0, Lcom/marvell/fmradio/ae;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x6

    iput v0, p0, Lcom/marvell/fmradio/ae;->ba:I

    .line 367
    iput-boolean v1, p0, Lcom/marvell/fmradio/ae;->bb:Z

    .line 372
    iput-boolean v1, p0, Lcom/marvell/fmradio/ae;->bc:Z

    .line 377
    const/4 v0, -0x1

    iput v0, p0, Lcom/marvell/fmradio/ae;->bd:I

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/marvell/fmradio/ae;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/marvell/fmradio/ae;->bb:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/marvell/fmradio/ae;->bc:Z

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/marvell/fmradio/ae;->ba:I

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/marvell/fmradio/ae;->bd:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput p1, p0, Lcom/marvell/fmradio/ae;->bd:I

    .line 430
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/marvell/fmradio/ae;->aY:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput p1, p0, Lcom/marvell/fmradio/ae;->ba:I

    .line 438
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/marvell/fmradio/ae;->aZ:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/marvell/fmradio/ae;->bb:Z

    .line 462
    return-void
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/marvell/fmradio/ae;->bc:Z

    .line 470
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/marvell/fmradio/ae;->aY:Ljava/lang/String;

    return-object v0
.end method
