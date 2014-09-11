.class Lcom/marvell/fmradio/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic F:Lcom/marvell/fmradio/a/m;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/marvell/fmradio/a/c;->F:Lcom/marvell/fmradio/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    packed-switch p2, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/marvell/fmradio/a/c;->F:Lcom/marvell/fmradio/a/m;

    invoke-static {v0}, Lcom/marvell/fmradio/a/m;->a(Lcom/marvell/fmradio/a/m;)Lcom/marvell/fmradio/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/marvell/fmradio/a/d;->l()V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/marvell/fmradio/a/c;->F:Lcom/marvell/fmradio/a/m;

    invoke-static {v0}, Lcom/marvell/fmradio/a/m;->a(Lcom/marvell/fmradio/a/m;)Lcom/marvell/fmradio/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/marvell/fmradio/a/d;->m()V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/marvell/fmradio/a/c;->F:Lcom/marvell/fmradio/a/m;

    invoke-static {v0}, Lcom/marvell/fmradio/a/m;->a(Lcom/marvell/fmradio/a/m;)Lcom/marvell/fmradio/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/marvell/fmradio/a/d;->n()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
