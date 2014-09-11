.class Lcom/marvell/fmradio/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

.field private aY:Ljava/lang/String;

.field private aZ:Ljava/lang/String;

.field private ba:I

.field private bb:Z

.field private bc:Z

.field private bd:I


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 513
    iput-object p1, p0, Lcom/marvell/fmradio/an;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x6

    iput v0, p0, Lcom/marvell/fmradio/an;->ba:I

    .line 536
    iput-boolean v1, p0, Lcom/marvell/fmradio/an;->bb:Z

    .line 541
    iput-boolean v1, p0, Lcom/marvell/fmradio/an;->bc:Z

    .line 546
    const/4 v0, -0x1

    iput v0, p0, Lcom/marvell/fmradio/an;->bd:I

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/marvell/fmradio/an;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/marvell/fmradio/an;->bb:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/marvell/fmradio/an;->bc:Z

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/marvell/fmradio/an;->ba:I

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/marvell/fmradio/an;->bd:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput p1, p0, Lcom/marvell/fmradio/an;->bd:I

    .line 599
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/marvell/fmradio/an;->aY:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput p1, p0, Lcom/marvell/fmradio/an;->ba:I

    .line 607
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/marvell/fmradio/an;->aZ:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/marvell/fmradio/an;->bb:Z

    .line 631
    return-void
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-boolean p1, p0, Lcom/marvell/fmradio/an;->bc:Z

    .line 639
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/marvell/fmradio/an;->aY:Ljava/lang/String;

    return-object v0
.end method
