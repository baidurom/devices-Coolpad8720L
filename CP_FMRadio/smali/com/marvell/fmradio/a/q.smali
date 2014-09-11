.class Lcom/marvell/fmradio/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bM:Lcom/marvell/fmradio/a/j;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/marvell/fmradio/a/q;->bM:Lcom/marvell/fmradio/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/marvell/fmradio/a/q;->bM:Lcom/marvell/fmradio/a/j;

    invoke-static {v0}, Lcom/marvell/fmradio/a/j;->a(Lcom/marvell/fmradio/a/j;)Lcom/marvell/fmradio/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/marvell/fmradio/a/b;->g()V

    .line 165
    return-void
.end method
