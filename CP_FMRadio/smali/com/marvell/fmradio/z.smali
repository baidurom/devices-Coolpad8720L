.class Lcom/marvell/fmradio/z;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/marvell/fmradio/z;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 180
    invoke-static {v2}, Lcom/marvell/fmradio/FMService;->access$002(Z)Z

    .line 181
    iget-object v0, p0, Lcom/marvell/fmradio/z;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->b(Lcom/marvell/fmradio/FMService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/z;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v1}, Lcom/marvell/fmradio/FMService;->a(Lcom/marvell/fmradio/FMService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 184
    iget-object v0, p0, Lcom/marvell/fmradio/z;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->enableRx()I

    move-result v0

    sput v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    .line 185
    invoke-static {v3}, Lcom/marvell/fmradio/FMService;->access$002(Z)Z

    .line 186
    sget v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.marvell.fmradio.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/marvell/fmradio/z;->C:Lcom/marvell/fmradio/FMService;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/FMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    invoke-static {v2}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    .line 192
    iget-object v0, p0, Lcom/marvell/fmradio/z;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->e(Lcom/marvell/fmradio/FMService;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    invoke-static {v3}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    goto :goto_0
.end method
