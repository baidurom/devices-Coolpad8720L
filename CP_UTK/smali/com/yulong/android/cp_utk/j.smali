.class final Lcom/yulong/android/cp_utk/j;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final K:I = 0x1


# instance fields
.field private A:Ljava/util/LinkedList;

.field private B:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private C:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private D:Z

.field private E:Z

.field private F:Lcom/android/internal/telephony/cat/Menu;

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field L:Landroid/os/Handler;

.field final synthetic M:Lcom/yulong/android/cp_utk/UtkAppService;

.field l:Lcom/yulong/android/cp_utk/g;

.field private responseNeeded:Z

.field private s:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private t:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private u:Lcom/android/internal/telephony/cat/Menu;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;


# direct methods
.method public constructor <init>(Lcom/yulong/android/cp_utk/UtkAppService;Landroid/os/Looper;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 485
    iput-object p1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    .line 486
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 423
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 424
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 425
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    .line 426
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->v:Ljava/lang/String;

    .line 427
    iput-boolean v3, p0, Lcom/yulong/android/cp_utk/j;->responseNeeded:Z

    .line 428
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    .line 429
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->x:Z

    .line 430
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->y:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 431
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 432
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    .line 433
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->B:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 434
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 435
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->D:Z

    .line 436
    iput-boolean v3, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    .line 437
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->l:Lcom/yulong/android/cp_utk/g;

    .line 439
    iput-object v1, p0, Lcom/yulong/android/cp_utk/j;->F:Lcom/android/internal/telephony/cat/Menu;

    .line 440
    iput v2, p0, Lcom/yulong/android/cp_utk/j;->G:I

    .line 441
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->H:Z

    .line 442
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->I:Z

    .line 443
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    .line 448
    new-instance v0, Lcom/yulong/android/cp_utk/i;

    invoke-direct {v0, p0}, Lcom/yulong/android/cp_utk/i;-><init>(Lcom/yulong/android/cp_utk/j;)V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->L:Landroid/os/Handler;

    .line 487
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    .line 488
    iput p3, p0, Lcom/yulong/android/cp_utk/j;->G:I

    .line 489
    return-void
.end method

.method private a(Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1242
    sget-object v0, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->a:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->L:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 758
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 759
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 760
    const-string v2, "response id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 762
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 763
    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1326
    .line 1327
    const/4 v3, 0x0

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1335
    :goto_0
    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 1336
    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v4, v4, v0

    if-ne p1, v4, :cond_0

    move v0, v2

    .line 1343
    :goto_1
    if-ne v0, v2, :cond_1

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Event "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "exists in the EventList"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    packed-switch p1, :pswitch_data_0

    .line 1391
    :goto_2
    :pswitch_0
    return-void

    .line 1335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    :pswitch_1
    const-string v0, "browser_termination_cause"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowserTerminationCause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1355
    new-array v2, v2, [B

    .line 1356
    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 1357
    invoke-direct {p0, p1, v2}, Lcom/yulong/android/cp_utk/j;->a(I[B)V

    goto :goto_2

    .line 1360
    :pswitch_2
    invoke-direct {p0, p1, v3}, Lcom/yulong/android/cp_utk/j;->a(I[B)V

    .line 1361
    invoke-direct {p0, p1}, Lcom/yulong/android/cp_utk/j;->b(I)V

    goto :goto_2

    .line 1369
    :pswitch_3
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1377
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1378
    invoke-direct {p0, p1, v0}, Lcom/yulong/android/cp_utk/j;->a(I[B)V

    goto :goto_2

    .line 1384
    :cond_1
    const-string v0, " Event does not exist in the EventList"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1387
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetupEventList is not received. Ignoring the event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private a(I[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSetUpEventResponse: event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->B:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->d(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    .line 1310
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1311
    const-string v0, "mUtkService is null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1316
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->B:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1319
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1320
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1322
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v1}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 671
    const-string v0, "screen status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******handle screenstatus, ccreen status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayText is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/cp_utk/j;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "Need to send IDLE SCREEN Available event to SIM"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/cp_utk/j;->a(ILandroid/os/Bundle;)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 683
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->n()V

    .line 685
    :cond_1
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->D:Z

    if-eqz v0, :cond_2

    .line 692
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 693
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->c()V

    .line 697
    :goto_0
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->D:Z

    .line 700
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_2

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    const-string v1, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 704
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 721
    :cond_2
    return-void

    .line 695
    :cond_3
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->k()V

    goto :goto_0
.end method

.method private a(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x400

    .line 1476
    const-string v0, "launchBrowser->Start Browser"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    if-nez p1, :cond_0

    .line 1479
    const-string v0, "launchBrowser->settings = null,exit"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1521
    :goto_0
    return-void

    .line 1483
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1484
    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const/4 v0, 0x0

    .line 1489
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1490
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1492
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1493
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1494
    sget-object v2, Lcom/yulong/android/cp_utk/n;->aX:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1510
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 1517
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1496
    :pswitch_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 1500
    :pswitch_1
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    const/high16 v0, 0x800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 1504
    :pswitch_2
    if-eqz v0, :cond_2

    .line 1505
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 1494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/android/internal/telephony/cat/Menu;)V
    .locals 4
    .parameter

    .prologue
    .line 1247
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 1248
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1249
    const-string v0, "com.yulong.android.cp_utk"

    const-string v2, "com.yulong.android.cp_utk.UtkMenuActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const/high16 v0, 0x1400

    .line 1253
    const-string v2, "launchMenuActivity->Start Menu Activity"

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    if-nez p1, :cond_0

    .line 1258
    sget-object v2, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->a:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/yulong/android/cp_utk/j;->a(Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1259
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1267
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1268
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1269
    return-void

    .line 1263
    :cond_0
    sget-object v2, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/yulong/android/cp_utk/j;->a(Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1264
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    const-string v2, "MENU"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 1456
    const-string v0, "launchConfirmationDialog->Start Confirmation Dialog"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1459
    if-nez p1, :cond_0

    .line 1460
    const-string v0, "launchConfirmationDialog->msg = null,exit"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    :goto_0
    return-void

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->v:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1465
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/yulong/android/cp_utk/UtkAppService;->R:Lcom/yulong/android/cp_utk/UtkAppService;

    const-class v2, Lcom/yulong/android/cp_utk/UtkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1466
    const/high16 v1, 0x5080

    sget-object v2, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/yulong/android/cp_utk/j;->a(Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1471
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1472
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/ToneSettings;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1673
    new-instance v0, Lcom/yulong/android/cp_utk/g;

    invoke-direct {v0}, Lcom/yulong/android/cp_utk/g;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->l:Lcom/yulong/android/cp_utk/g;

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play tone settings.tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->l:Lcom/yulong/android/cp_utk/g;

    iget-object v1, p2, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0, v1}, Lcom/yulong/android/cp_utk/g;->a(Lcom/android/internal/telephony/cat/Tone;)V

    .line 1676
    iget-object v0, p2, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/c;->a(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 1677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToneDialog: Tone timeout :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1678
    if-nez v0, :cond_0

    .line 1679
    const/16 v0, 0x7d0

    .line 1681
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1682
    const/16 v2, 0xda

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1684
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1685
    iget-boolean v0, p2, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v0, :cond_1

    .line 1688
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yulong/android/cp_utk/j;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->g()V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1524
    const/16 v2, 0x63

    .line 1525
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1527
    if-nez v0, :cond_0

    move v0, v1

    .line 1542
    :goto_0
    return v0

    .line 1529
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1532
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1533
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1534
    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1536
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1542
    goto :goto_0
.end method

.method private a(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter

    .prologue
    .line 766
    sget-object v0, Lcom/yulong/android/cp_utk/n;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 778
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 775
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 4

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->a()V

    .line 467
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->L:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 470
    return-void
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove Event :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v0, :cond_0

    .line 1400
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 1402
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 1407
    :cond_0
    return-void

    .line 1400
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->d(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    .line 1071
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1072
    const-string v0, "mUtkService is null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1079
    const-string v0, "help"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCmdResponse->args.getInt(RES_ID)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "response id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    const-string v2, "response id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1207
    :pswitch_0
    const-string v0, "Unknown result id"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :pswitch_1
    const-string v2, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    const-string v2, "menu selection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RES_ID_MENU_SELECTION id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CmdType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    sget-object v3, Lcom/yulong/android/cp_utk/n;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1211
    :cond_2
    :goto_1
    :pswitch_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1212
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 1095
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/yulong/android/cp_utk/j;->c(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yulong/android/cp_utk/j;->v:Ljava/lang/String;

    .line 1101
    if-eqz v0, :cond_3

    .line 1102
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1108
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    .line 1109
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->b()V

    goto :goto_1

    .line 1104
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 1114
    :pswitch_4
    const-string v2, "RES_ID_INPUT"

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    const-string v2, "input"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***********\u53d1\u9001\u7ed9framework\u5c42\u7684\u8f93\u5165\u5185\u5bb9\u662f\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v3, :cond_5

    .line 1120
    const-string v0, "YES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1122
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 1124
    :cond_5
    if-eqz v0, :cond_6

    .line 1125
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 1127
    :cond_6
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1129
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1127
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 1134
    :pswitch_5
    const-string v0, "RES_ID_CONFIRM"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1135
    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1136
    sget-object v0, Lcom/yulong/android/cp_utk/n;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 1138
    :sswitch_0
    if-eqz v2, :cond_9

    .line 1139
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 1142
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1146
    :sswitch_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->y:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 1153
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->y:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v3, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    if-ne v0, v3, :cond_a

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1155
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1156
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    .line 1157
    const-string v0, "LAUNCH_BROWSER_ERROR - Browser_Unavailable"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    :goto_6
    if-eqz v2, :cond_2

    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->x:Z

    goto/16 :goto_1

    .line 1160
    :cond_a
    if-eqz v2, :cond_b

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_6

    :cond_b
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_7

    .line 1170
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1171
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1172
    if-eqz v2, :cond_2

    .line 1173
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->m()V

    goto/16 :goto_1

    .line 1179
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1182
    :pswitch_7
    const-string v0, "RES_ID_BACKWARD"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1183
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1186
    :pswitch_8
    const-string v0, "RES_ID_END_SESSION"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1190
    :pswitch_9
    const-string v0, "RES_ID_TIMEOUT"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v0, :cond_c

    .line 1201
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1203
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1215
    :cond_d
    const-string v0, "CmdResponse on wrong slotid"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1092
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1136
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 834
    if-nez p1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iput-object p1, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 841
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCmd->cmdMsg.getCmdType().name()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    sget-object v0, Lcom/yulong/android/cp_utk/n;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1032
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1034
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->f()V

    goto :goto_0

    .line 847
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v3

    .line 851
    iget-boolean v0, v3, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_f

    move v0, v1

    .line 855
    :goto_2
    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->v:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 856
    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->v:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 866
    :goto_3
    const-string v4, "\u5f00\u59cb\u786e\u5b9a\u662f\u5426\u663e\u793a\u6587\u672c\u4fe1\u606f "

    invoke-static {p0, v4}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextMessage\u7684\u4f18\u5148\u7ea7isHighPriority\u4e3a = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "************mMenuIsVisibile\u4e3a = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*******mDisplayTextDlgIsVisibile\u4e3a = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/cp_utk/j;->I:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*******mScreenIdle\u4e3a = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/yulong/android/cp_utk/j;->I:Z

    if-nez v3, :cond_5

    .line 885
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    const-string v4, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 888
    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v4, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 889
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->D:Z

    .line 890
    const-string v2, "\u4e0d\u663e\u793a\u6587\u672c\u4fe1\u606f "

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v0

    .line 891
    goto/16 :goto_1

    .line 857
    :cond_3
    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v4, :cond_4

    .line 858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMainCmd1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    iget-object v4, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto/16 :goto_3

    .line 862
    :cond_4
    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto/16 :goto_3

    .line 892
    :cond_5
    const-string v2, "\u663e\u793a\u6587\u672c\u4fe1\u606f "

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->k()V

    move v2, v0

    .line 895
    goto/16 :goto_1

    .line 897
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    .line 900
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :goto_4
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 909
    :try_start_1
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 915
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneInUse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    if-eqz v0, :cond_7

    .line 917
    sput-boolean v2, Lcom/yulong/android/cp_utk/UtkAppService;->aF:Z

    goto/16 :goto_1

    .line 901
    :catch_0
    move-exception v0

    .line 902
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_6
    move v0, v1

    .line 909
    goto :goto_5

    .line 910
    :catch_1
    move-exception v0

    .line 912
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_5

    .line 919
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/Menu;)V

    .line 920
    sput-boolean v1, Lcom/yulong/android/cp_utk/UtkAppService;->aF:Z

    goto/16 :goto_1

    .line 925
    :pswitch_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMainCmd2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    .line 928
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 929
    const-string v0, "Uninstall App"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    iput-object v5, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    .line 931
    iput-object v5, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 932
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulong/android/cp_utk/s;->c(Landroid/content/Context;)V

    .line 938
    :goto_6
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->F:Lcom/android/internal/telephony/cat/Menu;

    .line 939
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    if-eqz v0, :cond_2

    .line 940
    invoke-direct {p0, v5}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_1

    .line 934
    :cond_8
    const-string v0, "Install App"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulong/android/cp_utk/s;->install(Landroid/content/Context;)V

    goto :goto_6

    .line 945
    :pswitch_3
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->j()V

    goto/16 :goto_1

    .line 949
    :pswitch_4
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 950
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->n()V

    .line 951
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 954
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    if-eqz v0, :cond_9

    .line 957
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 958
    const-string v0, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    :cond_9
    :goto_7
    const-string v0, "set up idle mode"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainCmd3="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 968
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v1

    .line 969
    goto/16 :goto_1

    .line 960
    :cond_a
    const-string v0, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 961
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->n()V

    .line 962
    iput-object v5, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_7

    .line 975
    :pswitch_5
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->l()V

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainCmd4="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move v2, v1

    .line 978
    goto/16 :goto_1

    .line 980
    :pswitch_6
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 987
    :pswitch_7
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->l()V

    move v2, v1

    .line 988
    goto/16 :goto_1

    .line 991
    :pswitch_8
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 994
    :pswitch_9
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 995
    if-eqz v0, :cond_c

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 997
    :cond_b
    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET_UP_CALL mesg.text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    :cond_c
    if-eqz v0, :cond_2

    .line 1002
    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 1006
    :pswitch_a
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->o()V

    goto/16 :goto_1

    .line 1009
    :pswitch_b
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 1010
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->B:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMainCmd5="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1013
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->D:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 1015
    :goto_8
    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1016
    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->z:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v3, v3, v0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    .line 1017
    const-string v0, " IDLE_SCREEN_AVAILABLE_EVENT present in List"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1023
    const-string v3, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1024
    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1015
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1036
    :cond_e
    iput-boolean v1, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_2

    .line 845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private c(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1691
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    .line 1692
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1700
    :goto_0
    return-object v0

    .line 1695
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    .line 1696
    iget v3, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v3, p1, :cond_1

    .line 1697
    iget-object v0, v0, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1700
    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->d(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    .line 730
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 731
    const-string v0, "mUtkService is null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 736
    const-string v1, "SCREEN_BUSY"

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 738
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v1}, Lcom/yulong/android/cp_utk/UtkAppService;->c(Lcom/yulong/android/cp_utk/UtkAppService;)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->responseNeeded:Z

    .line 741
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->f()V

    goto :goto_0

    .line 744
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    goto :goto_0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1717
    const-string v0, "alpha_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha string received from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1720
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v1}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1722
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1723
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1724
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 749
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(I)V

    .line 750
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->l:Lcom/yulong/android/cp_utk/g;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/g;->stop()V

    .line 751
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->l:Lcom/yulong/android/cp_utk/g;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/g;->release()V

    .line 753
    const-string v0, "Finished handling PlayTone with Null alpha"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cp_utk/o;

    .line 784
    iget v1, v0, Lcom/yulong/android/cp_utk/o;->id:I

    packed-switch v1, :pswitch_data_0

    .line 793
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 786
    :pswitch_1
    iget-object v0, v0, Lcom/yulong/android/cp_utk/o;->aY:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->b(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 789
    :pswitch_2
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->g()V

    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 797
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 798
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 799
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 802
    const-string v0, "**********\u5f00\u59cb\u5904\u7406session end"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMainCmd 7 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 805
    iput-object v3, p0, Lcom/yulong/android/cp_utk/j;->v:Ljava/lang/String;

    .line 806
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->a()V

    .line 810
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**********mMenuIsVisibile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    if-eqz v0, :cond_1

    .line 817
    const-string v0, "**********\u7ecf\u8fc7session end\u5904\u7406\uff0c\u8fdb\u5165UTK\u7684\u4e3b\u754c\u9762"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    invoke-direct {p0, v3}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/Menu;)V

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 821
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->f()V

    .line 827
    :goto_0
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->x:Z

    if-eqz v0, :cond_2

    .line 828
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->x:Z

    .line 829
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->y:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 831
    :cond_2
    return-void

    .line 823
    :cond_3
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 1272
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 1273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1274
    const/high16 v1, 0x1000

    sget-object v2, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/yulong/android/cp_utk/j;->a(Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1278
    const-string v1, "launchInputActivity->Start Input Activity"

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    const-string v1, "com.yulong.android.cp_utk"

    const-string v2, "com.yulong.android.cp_utk.UtkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1282
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v1}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1283
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 1286
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 1287
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/yulong/android/cp_utk/UtkAppService;->R:Lcom/yulong/android/cp_utk/UtkAppService;

    const-class v2, Lcom/yulong/android/cp_utk/UtkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1288
    const/high16 v1, 0x7080

    sget-object v2, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/yulong/android/cp_utk/j;->a(Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1295
    const-string v1, "launchTextDialog->Start Text Dialog"

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1297
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1298
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 1299
    return-void
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1410
    const-string v0, "launchEventMessage->Start Event Message"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 1413
    if-nez v2, :cond_1

    .line 1414
    const-string v0, "launchEventMessage->msg == null,exit"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1421
    new-instance v3, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1422
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1424
    const/high16 v1, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1425
    const v0, 0x102000b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1427
    const v1, 0x1020006

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1429
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 1430
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1441
    :goto_1
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1442
    :cond_2
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1449
    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 1451
    const/16 v0, 0x50

    invoke-virtual {v3, v0, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1452
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1432
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1546
    const-string v0, "launchCallMsg->Start Call Msg"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 1549
    if-nez v2, :cond_1

    .line 1550
    const-string v0, "launchCallMsg->msg == null,exit"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->v:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1559
    new-instance v3, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1560
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1562
    const/high16 v1, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1563
    const v0, 0x102000b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1565
    const v1, 0x1020006

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1567
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 1568
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1578
    :goto_1
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-boolean v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1579
    :cond_2
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1583
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1584
    const/16 v0, 0x50

    invoke-virtual {v3, v0, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1585
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1570
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private n()V
    .locals 8

    .prologue
    const v7, 0x1080525

    const v6, 0x1020006

    const/4 v5, 0x0

    .line 1590
    const-string v0, "launchIdleText->Start Idle Text"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1593
    if-nez v0, :cond_0

    .line 1594
    const-string v0, "launchIdleText->msg == null,exit"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    :goto_0
    return-void

    .line 1598
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yulong/android/cp_utk/j;->E:Z

    if-nez v1, :cond_2

    .line 1599
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->e(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x14d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1601
    :cond_2
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1602
    new-instance v2, Landroid/widget/RemoteViews;

    const-string v3, "com.yulong.android.cp_utk"

    const v4, 0x10900bf

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1606
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1607
    iput v7, v1, Landroid/app/Notification;->icon:I

    .line 1615
    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->C:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_4

    .line 1617
    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1618
    const v3, 0x1020046

    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1621
    :cond_4
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 1622
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1630
    :goto_1
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1631
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v3}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 1625
    :cond_5
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private o()V
    .locals 5

    .prologue
    .line 1640
    const-string v0, "launchToneDialog->Start Tone Dialog"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1642
    if-nez v0, :cond_0

    .line 1643
    const-string v0, "launchToneDialog->toneMsg == null,exit"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->t:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v1

    .line 1649
    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toneMsg.text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Starting Activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1652
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/yulong/android/cp_utk/UtkAppService;->R:Lcom/yulong/android/cp_utk/UtkAppService;

    const-class v4, Lcom/yulong/android/cp_utk/ToneDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1653
    const/high16 v3, 0x5080

    sget-object v4, Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;->b:Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;

    invoke-direct {p0, v4}, Lcom/yulong/android/cp_utk/j;->a(Lcom/yulong/android/cp_utk/UtkAppService$InitiatedByUserAction;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1658
    const-string v3, "TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1659
    const-string v0, "TONE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1660
    const-string v0, "Starting Activity based on the ToneDialog Intent"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1662
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1664
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toneMsg.text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NO Activity, play tone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1666
    invoke-direct {p0, v0, v1}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/ToneSettings;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1705
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 1713
    :goto_0
    return v0

    .line 1709
    :catch_0
    move-exception v1

    .line 1710
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1713
    goto :goto_0
.end method


# virtual methods
.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1046
    iput-boolean p1, p0, Lcom/yulong/android/cp_utk/j;->J:Z

    .line 1047
    return-void
.end method

.method b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    iput-boolean p1, p0, Lcom/yulong/android/cp_utk/j;->I:Z

    .line 1225
    return-void
.end method

.method public h()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->F:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 493
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceHandler->opcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainCmd 6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    sparse-switch v0, :sswitch_data_0

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 499
    :sswitch_0
    const-string v0, "OP_LAUNCH_APP"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_3

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 504
    sget-wide v3, Lcom/yulong/android/cp_utk/UtkAppService;->ax:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOAST:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/yulong/android/cp_utk/UtkAppService;->ax:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<3000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_1
    sput-wide v1, Lcom/yulong/android/cp_utk/UtkAppService;->ax:J

    .line 510
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v1

    .line 511
    invoke-virtual {v1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->isActivePhoneByPhoneId(I)I

    move-result v0

    .line 512
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 513
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->a(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->a(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 535
    :cond_3
    invoke-direct {p0, v3}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_0

    .line 538
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP_CMD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceHandler->OP_CMD: UtkCmdMessage cmdMsg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->a()V

    .line 558
    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 559
    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->b(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0

    .line 561
    :cond_4
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    if-nez v0, :cond_5

    .line 562
    iput-boolean v7, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    .line 563
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->b(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0

    .line 565
    :cond_5
    iget-object v1, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    new-instance v2, Lcom/yulong/android/cp_utk/o;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v2, p0, v7, v0}, Lcom/yulong/android/cp_utk/o;-><init>(Lcom/yulong/android/cp_utk/j;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 571
    :sswitch_2
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->responseNeeded:Z

    if-eqz v0, :cond_6

    .line 587
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->b(Landroid/os/Bundle;)V

    .line 590
    :cond_6
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 591
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->f()V

    .line 596
    :goto_1
    iput-boolean v7, p0, Lcom/yulong/android/cp_utk/j;->responseNeeded:Z

    goto/16 :goto_0

    .line 593
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    goto :goto_1

    .line 599
    :sswitch_3
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    if-nez v0, :cond_8

    .line 600
    iput-boolean v7, p0, Lcom/yulong/android/cp_utk/j;->w:Z

    .line 601
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->g()V

    goto/16 :goto_0

    .line 603
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->A:Ljava/util/LinkedList;

    new-instance v1, Lcom/yulong/android/cp_utk/o;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/yulong/android/cp_utk/o;-><init>(Lcom/yulong/android/cp_utk/j;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 607
    :sswitch_4
    const-string v0, "OP_BOOT_COMPLETED"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->s:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->M:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Lcom/yulong/android/cp_utk/UtkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yulong/android/cp_utk/s;->install(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 614
    :sswitch_5
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->e()V

    goto/16 :goto_0

    .line 617
    :sswitch_6
    const-string v0, "Browser Closed"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    const/16 v1, 0x8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v1, v0}, Lcom/yulong/android/cp_utk/j;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 621
    :sswitch_7
    const-string v0, "IDLE SCREEN"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 625
    :sswitch_8
    const-string v0, "Locale Changed"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    const/4 v1, 0x7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v1, v0}, Lcom/yulong/android/cp_utk/j;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 635
    :sswitch_9
    const-string v0, "Received MSG_ID_STOP_TONE"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/j;->d()V

    goto/16 :goto_0

    .line 640
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/j;->c(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0x9 -> :sswitch_8
        0x1e -> :sswitch_a
        0xda -> :sswitch_9
    .end sparse-switch
.end method

.method public i()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/yulong/android/cp_utk/j;->u:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method
