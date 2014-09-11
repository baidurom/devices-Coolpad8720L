.class Lcom/marvell/fmradio/am;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/marvell/fmradio/am;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/marvell/fmradio/am;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/marvell/fmmanager/FMRadioManager;->resume(Z)I

    .line 347
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->d(Z)Z

    .line 348
    return-void
.end method
