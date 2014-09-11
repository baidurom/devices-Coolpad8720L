.class Lcom/marvell/fmradio/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aU:Lcom/marvell/fmradio/a/s;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/a/s;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/marvell/fmradio/a/e;->aU:Lcom/marvell/fmradio/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/marvell/fmradio/a/e;->aU:Lcom/marvell/fmradio/a/s;

    invoke-static {v0}, Lcom/marvell/fmradio/a/s;->a(Lcom/marvell/fmradio/a/s;)Lcom/marvell/fmradio/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/marvell/fmradio/a/h;->y()V

    .line 142
    return-void
.end method
