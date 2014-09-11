.class Lcom/marvell/fmradio/ac;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aX:Lcom/marvell/fmradio/af;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/af;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/marvell/fmradio/ac;->aX:Lcom/marvell/fmradio/af;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/marvell/fmradio/ac;->aX:Lcom/marvell/fmradio/af;

    iget-object v0, v0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->j(Lcom/marvell/fmradio/FMService;)V

    .line 540
    iget-object v0, p0, Lcom/marvell/fmradio/ac;->aX:Lcom/marvell/fmradio/af;

    iget-object v0, v0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/marvell/fmmanager/FMRadioManager;->suspend(Z)I

    .line 541
    return-void
.end method
