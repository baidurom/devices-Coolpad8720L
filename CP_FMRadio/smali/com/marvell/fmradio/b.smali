.class Lcom/marvell/fmradio/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1164
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<mHandler>msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1469
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1167
    :pswitch_1
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->d(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1168
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->N()Ljava/lang/String;

    move-result-object v1

    .line 1169
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v0

    iget v0, v0, Lcom/marvell/fmradio/c/e;->ci:I

    .line 1170
    if-ne v0, v5, :cond_1

    .line 1171
    const v0, 0x155cc

    .line 1172
    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v2

    iput v0, v2, Lcom/marvell/fmradio/c/e;->ci:I

    .line 1174
    :cond_1
    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2, v1, v0}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 1177
    :pswitch_2
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;I)V

    goto :goto_0

    .line 1180
    :pswitch_3
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->q(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/a/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->q(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/a/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->q(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/a/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 1187
    :pswitch_4
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v2, "com.marvell.fmradio.GETCHANNEL"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1189
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<MSG_SCAN_FINISHED>mPowerOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->r(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->r(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1191
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v7}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1197
    :goto_1
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1198
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1199
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->s(Lcom/marvell/fmradio/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1200
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->t(Lcom/marvell/fmradio/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1201
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->t(Lcom/marvell/fmradio/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1202
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1204
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/MainActivity;->r(I)V

    goto/16 :goto_0

    .line 1193
    :cond_3
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v8}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1194
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v7}, Lcom/marvell/fmradio/MainActivity;->f(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1195
    invoke-static {v8}, Lcom/marvell/fmradio/FMService;->a(Z)V

    goto :goto_1

    .line 1207
    :pswitch_5
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->s(Lcom/marvell/fmradio/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1208
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->t(Lcom/marvell/fmradio/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1209
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->t(Lcom/marvell/fmradio/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1210
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1212
    :cond_4
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->r(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1213
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1219
    :goto_2
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1220
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    goto/16 :goto_0

    .line 1215
    :cond_5
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v8}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1216
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->f(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1217
    invoke-static {v8}, Lcom/marvell/fmradio/FMService;->a(Z)V

    goto :goto_2

    .line 1223
    :pswitch_6
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.GETCHANNEL"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->u(Lcom/marvell/fmradio/MainActivity;)V

    goto/16 :goto_0

    .line 1227
    :pswitch_7
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->u(Lcom/marvell/fmradio/MainActivity;)V

    goto/16 :goto_0

    .line 1230
    :pswitch_8
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->v(Lcom/marvell/fmradio/MainActivity;)V

    .line 1233
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.INITIATE"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1236
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->w(Lcom/marvell/fmradio/MainActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1238
    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v2

    new-instance v3, Lcom/marvell/fmradio/c/c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/marvell/fmradio/c/e;->a(Lcom/marvell/fmradio/c/c;)I

    .line 1240
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->x(Lcom/marvell/fmradio/MainActivity;)I

    .line 1241
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<MSG_FOUNDCHANNEL>freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1243
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1244
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1245
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->s(Lcom/marvell/fmradio/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1249
    :pswitch_a
    sget v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    if-ne v0, v5, :cond_7

    .line 1250
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1251
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1252
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1254
    :cond_6
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1255
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1256
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    goto/16 :goto_0

    .line 1258
    :cond_7
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v8}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1259
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->f(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1260
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1261
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1262
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SETCHANNEL"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1266
    :pswitch_b
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<MSG_SCANALL>mPowerOffing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->y(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->y(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1272
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    :cond_8
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->z(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1278
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->z(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1281
    :cond_9
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;I)I

    .line 1282
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const v2, 0x7f05005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->A(Lcom/marvell/fmradio/MainActivity;)V

    .line 1285
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_a

    .line 1286
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 1285
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1288
    :cond_a
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v8}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1289
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SCANALL"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1292
    :pswitch_c
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SETCHANNEL"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1295
    :pswitch_d
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1296
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1297
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1298
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-class v2, Lcom/marvell/fmradio/FMService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1299
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1300
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1301
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 1305
    :pswitch_e
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.DISABLE"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1310
    :pswitch_f
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    goto/16 :goto_0

    .line 1314
    :pswitch_10
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1315
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1316
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1318
    :cond_b
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->u(Lcom/marvell/fmradio/MainActivity;)V

    .line 1319
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1320
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->g(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1321
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1322
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v8}, Lcom/marvell/fmradio/MainActivity;->f(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1323
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->B(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->C(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->z(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->z(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1332
    :pswitch_11
    sget v0, Lcom/marvell/fmradio/MainActivity;->ct:I

    if-ne v0, v5, :cond_d

    .line 1333
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-ne v0, v8, :cond_c

    .line 1334
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1335
    :cond_c
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1336
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1337
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1338
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1342
    :cond_d
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<MSG_ENABLE_DISMISS>mPowerOffing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->y(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->y(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SPEAKER"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v8}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1349
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->f(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1350
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1351
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1352
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SETCHANNEL"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1356
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    :cond_e
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->u(Lcom/marvell/fmradio/MainActivity;)V

    .line 1360
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->z(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->z(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1367
    :pswitch_12
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State Changed mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1370
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1371
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1372
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.DISABLE_ONLY"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1373
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-class v2, Lcom/marvell/fmradio/FMService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1375
    iget-object v1, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1381
    :pswitch_13
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->m(Lcom/marvell/fmradio/MainActivity;)V

    goto/16 :goto_0

    .line 1384
    :pswitch_14
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;J)J

    .line 1385
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<MSG_RECORD_SUCCESS>mCurrentTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->D(Lcom/marvell/fmradio/MainActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->E(Lcom/marvell/fmradio/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1388
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->E(Lcom/marvell/fmradio/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1389
    const-string v1, "fm_record_time"

    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->D(Lcom/marvell/fmradio/MainActivity;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1392
    :cond_f
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v8}, Lcom/marvell/fmradio/MainActivity;->h(Lcom/marvell/fmradio/MainActivity;Z)V

    goto/16 :goto_0

    .line 1395
    :pswitch_15
    invoke-static {v7}, Lcom/marvell/fmradio/MainActivity;->h(Z)Z

    .line 1396
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const v1, 0x7f050022

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1401
    :pswitch_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_10

    .line 1402
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1404
    iget-object v3, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->E(Lcom/marvell/fmradio/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1405
    iget-object v3, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->E(Lcom/marvell/fmradio/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fm_record_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1406
    iget-object v5, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v5}, Lcom/marvell/fmradio/MainActivity;->D(Lcom/marvell/fmradio/MainActivity;)J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_11

    .line 1407
    iget-object v5, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v5, v3, v4}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;J)J

    .line 1410
    :cond_11
    iget-object v3, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->D(Lcom/marvell/fmradio/MainActivity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1411
    iget-object v3, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v4, v1, v2}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1420
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0, v7}, Lcom/marvell/fmradio/MainActivity;->h(Lcom/marvell/fmradio/MainActivity;Z)V

    goto/16 :goto_0

    .line 1423
    :pswitch_17
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const v1, 0x7f050023

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1428
    :pswitch_18
    invoke-static {}, Lcom/marvell/fmradio/MainActivity;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.RECORD"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1430
    invoke-static {v7}, Lcom/marvell/fmradio/MainActivity;->h(Z)Z

    goto/16 :goto_0

    .line 1434
    :pswitch_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1435
    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->E(Lcom/marvell/fmradio/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1436
    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->E(Lcom/marvell/fmradio/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fm_record_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1437
    iget-object v4, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v4}, Lcom/marvell/fmradio/MainActivity;->D(Lcom/marvell/fmradio/MainActivity;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    .line 1438
    iget-object v4, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v4, v2, v3}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;J)J

    .line 1441
    :cond_12
    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->D(Lcom/marvell/fmradio/MainActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1442
    iget-object v2, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->F(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3, v0, v1}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1445
    :pswitch_1a
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const v1, 0x7f050026

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1449
    :pswitch_1b
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const v1, 0x7f050027

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1454
    :pswitch_1c
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const v1, 0x7f050028

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1459
    :pswitch_1d
    :try_start_0
    iget-object v0, p0, Lcom/marvell/fmradio/b;->b:Lcom/marvell/fmradio/MainActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_10
        :pswitch_8
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_11
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_f
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_18
        :pswitch_1d
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
