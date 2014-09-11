.class Lcom/marvell/fmradio/y;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic C:Lcom/marvell/fmradio/FMService;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/FMService;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 137
    invoke-static {v4}, Lcom/marvell/fmradio/FMService;->access$002(Z)Z

    .line 138
    iget-object v0, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->b(Lcom/marvell/fmradio/FMService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v1}, Lcom/marvell/fmradio/FMService;->a(Lcom/marvell/fmradio/FMService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 141
    iget-object v0, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->enableRx()I

    move-result v0

    sput v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    .line 142
    invoke-static {v5}, Lcom/marvell/fmradio/FMService;->access$002(Z)Z

    .line 143
    iget-object v0, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->c(Lcom/marvell/fmradio/FMService;)Lcom/marvell/fmmanager/FMRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmmanager/FMRadioManager;->stopScan()I

    .line 144
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onStartCommand>enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/marvell/fmradio/MainActivity;->ct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->d(Lcom/marvell/fmradio/FMService;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->d(Lcom/marvell/fmradio/FMService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_first"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 148
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INITIATE_ACTION first_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget v1, Lcom/marvell/fmradio/MainActivity;->ct:I

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.marvell.fmradio.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/FMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    iget-object v0, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->d(Lcom/marvell/fmradio/FMService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    const-string v1, "is_first"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    :cond_0
    :goto_0
    sget v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/marvell/fmradio/y;->C:Lcom/marvell/fmradio/FMService;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->e(Lcom/marvell/fmradio/FMService;)V

    .line 172
    :cond_1
    return-void

    .line 160
    :cond_2
    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/marvell/fmradio/FMService;->access$500()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    sget v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    if-nez v0, :cond_3

    .line 163
    invoke-static {v4}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    goto :goto_0

    .line 165
    :cond_3
    invoke-static {v5}, Lcom/marvell/fmradio/FMService;->b(Z)Z

    goto :goto_0
.end method
