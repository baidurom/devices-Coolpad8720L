.class Lcom/marvell/fmradio/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/marvell/fmradio/ar;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/marvell/fmradio/ar;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/ar;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v1}, Lcom/marvell/fmradio/FMService;->i(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmradio/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marvell/fmmanager/FMRadioManager;->registerListener(Lcom/marvell/fmmanager/FMRadioListener;)Z

    .line 468
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    return-void
.end method
