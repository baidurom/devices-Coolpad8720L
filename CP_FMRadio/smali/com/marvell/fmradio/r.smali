.class public Lcom/marvell/fmradio/r;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private D:Ljava/util/List;

.field private E:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1975
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1972
    iput-object v0, p0, Lcom/marvell/fmradio/r;->mContext:Landroid/content/Context;

    .line 1973
    iput-object v0, p0, Lcom/marvell/fmradio/r;->E:Landroid/view/LayoutInflater;

    .line 1976
    iput-object p1, p0, Lcom/marvell/fmradio/r;->mContext:Landroid/content/Context;

    .line 1977
    iput-object p2, p0, Lcom/marvell/fmradio/r;->D:Ljava/util/List;

    .line 1978
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/r;->E:Landroid/view/LayoutInflater;

    .line 1979
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/marvell/fmradio/r;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/marvell/fmradio/r;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1993
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, -0x100

    .line 1999
    if-nez p2, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/marvell/fmradio/r;->E:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2002
    new-instance v1, Lcom/marvell/fmradio/bb;

    invoke-direct {v1}, Lcom/marvell/fmradio/bb;-><init>()V

    .line 2003
    const v0, 0x7f07002d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/marvell/fmradio/bb;->bK:Landroid/widget/TextView;

    .line 2005
    const v0, 0x7f07002e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/marvell/fmradio/bb;->bL:Landroid/widget/TextView;

    .line 2007
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2011
    :goto_0
    iget-object v0, v1, Lcom/marvell/fmradio/bb;->bK:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/marvell/fmradio/r;->mContext:Landroid/content/Context;

    const v4, 0x7f05003a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2014
    iget-object v2, v1, Lcom/marvell/fmradio/bb;->bL:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/marvell/fmradio/r;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v0}, Lcom/marvell/fmradio/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2016
    iget-object v0, v1, Lcom/marvell/fmradio/bb;->bK:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2017
    iget-object v0, v1, Lcom/marvell/fmradio/bb;->bL:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2018
    return-object p2

    .line 2009
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/bb;

    move-object v1, v0

    goto :goto_0
.end method
