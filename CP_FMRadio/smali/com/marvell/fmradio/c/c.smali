.class public Lcom/marvell/fmradio/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cb:Ljava/lang/String;

.field public cc:Ljava/lang/String;

.field public cd:Z

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/marvell/fmradio/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    iput-object v0, p0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    iput-object v0, p0, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    .line 54
    return-void
.end method
