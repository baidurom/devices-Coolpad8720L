.class Lcom/marvell/fmradio/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic z:Lcom/marvell/fmradio/a/k;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/marvell/fmradio/a/a;->z:Lcom/marvell/fmradio/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/marvell/fmradio/a/a;->z:Lcom/marvell/fmradio/a/k;

    invoke-static {v0}, Lcom/marvell/fmradio/a/k;->a(Lcom/marvell/fmradio/a/k;)Lcom/marvell/fmradio/a/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/marvell/fmradio/a/i;->i()V

    .line 101
    return-void
.end method
