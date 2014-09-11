.class Lcom/marvell/fmradio/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aW:Lcom/marvell/fmradio/a/o;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/a/o;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/marvell/fmradio/a/f;->aW:Lcom/marvell/fmradio/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/marvell/fmradio/a/f;->aW:Lcom/marvell/fmradio/a/o;

    invoke-static {v0}, Lcom/marvell/fmradio/a/o;->a(Lcom/marvell/fmradio/a/o;)Lcom/marvell/fmradio/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/marvell/fmradio/a/n;->h()V

    .line 149
    return-void
.end method
