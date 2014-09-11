.class Lcom/marvell/fmradio/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/marvell/fmradio/ListTestdeleteableActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/marvell/fmradio/d;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 645
    iget-object v0, p0, Lcom/marvell/fmradio/d;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->b()V

    .line 646
    return-void
.end method
