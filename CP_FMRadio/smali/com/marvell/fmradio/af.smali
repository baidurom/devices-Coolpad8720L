.class Lcom/marvell/fmradio/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 553
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 521
    :pswitch_1
    const-string v0, "FMService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0, v2}, Lcom/marvell/fmradio/FMService;->a(Lcom/marvell/fmradio/FMService;Z)Z

    .line 523
    new-instance v0, Lcom/marvell/fmradio/ab;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ab;-><init>(Lcom/marvell/fmradio/af;)V

    .line 530
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 534
    :pswitch_2
    const-string v0, "FMService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/FMService;->a(Lcom/marvell/fmradio/FMService;Z)Z

    .line 536
    iget-object v0, p0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->k(Lcom/marvell/fmradio/FMService;)V

    .line 537
    new-instance v0, Lcom/marvell/fmradio/ac;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/ac;-><init>(Lcom/marvell/fmradio/af;)V

    .line 543
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 546
    :pswitch_3
    const-string v0, "FMService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->l(Lcom/marvell/fmradio/FMService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->m(Lcom/marvell/fmradio/FMService;)V

    .line 549
    iget-object v0, p0, Lcom/marvell/fmradio/af;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0, v2}, Lcom/marvell/fmradio/FMService;->a(Lcom/marvell/fmradio/FMService;Z)Z

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
