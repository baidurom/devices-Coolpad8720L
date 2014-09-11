.class public Lcom/yulong/android/cp_utk/UtkMenuActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# static fields
.field private static final K:I = 0x3e8

.field static L:Landroid/os/Handler; = null

.field public static aT:Z = false

.field public static aU:Z = false

.field static final aV:I = 0x1

.field static final aW:I = 0x2


# instance fields
.field aK:Lcom/yulong/android/cp_utk/UtkAppService;

.field private aO:Lcom/android/internal/telephony/cat/Menu;

.field private aP:Z

.field private aQ:Landroid/widget/TextView;

.field private aR:Landroid/widget/ImageView;

.field private aS:Landroid/widget/ProgressBar;

.field private mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    .line 57
    sput-boolean v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    .line 65
    new-instance v0, Lcom/yulong/android/cp_utk/f;

    invoke-direct {v0}, Lcom/yulong/android/cp_utk/f;-><init>()V

    sput-object v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->L:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    .line 48
    iput v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    .line 49
    iput-boolean v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 51
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aQ:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aR:Landroid/widget/ImageView;

    .line 53
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aS:Landroid/widget/ProgressBar;

    .line 55
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkAppService;->q()Lcom/yulong/android/cp_utk/UtkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->L:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, v0, v0}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(IIZ)V

    .line 392
    return-void
.end method

.method private a(IIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 398
    sget-boolean v1, Lcom/yulong/android/cp_utk/UtkAppService;->aF:Z

    if-eqz v1, :cond_0

    .line 399
    const/4 v1, 0x0

    sput-boolean v1, Lcom/yulong/android/cp_utk/UtkAppService;->aF:Z

    .line 401
    :cond_0
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const-string v1, "menu selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse RES_ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse MENU_SELECTION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 409
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 358
    if-eqz p1, :cond_1

    .line 359
    const-string v0, "STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    .line 361
    iget v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 362
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yulong/android/cp_utk/UtkMenuActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yulong/android/cp_utk/UtkMenuActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 313
    iget v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 315
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 316
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 317
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 318
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    sget-object v1, Lcom/yulong/android/cp_utk/UtkMenuActivity;->L:Landroid/os/Handler;

    const-wide/32 v2, 0x9c40

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    :cond_0
    return-void
.end method

.method private d(I)Lcom/android/internal/telephony/cat/Item;
    .locals 2
    .parameter

    .prologue
    .line 373
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    :goto_0
    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 379
    const-string v0, "Invalid menu"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 385
    goto :goto_0

    .line 381
    :catch_1
    move-exception v0

    .line 383
    const-string v0, "Invalid menu"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aR:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aR:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aQ:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aQ:Landroid/widget/TextView;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 347
    :goto_1
    new-instance v0, Lcom/yulong/android/cp_utk/k;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/yulong/android/cp_utk/k;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 350
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 352
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget v0, v0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setSelection(I)V

    .line 354
    :cond_1
    return-void

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aR:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aQ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aQ:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 97
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 99
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aQ:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aR:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aS:Landroid/widget/ProgressBar;

    .line 102
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(Landroid/content/Intent;)V

    .line 105
    iput-boolean v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 245
    const v0, 0x7f060005

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 246
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060006

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 247
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 238
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 239
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x15

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-boolean v1, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    if-eqz v1, :cond_1

    .line 142
    sget-boolean v1, Lcom/yulong/android/cp_utk/UtkAppService;->aG:Z

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f06001d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    iget-boolean v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    if-eqz v1, :cond_0

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 173
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 153
    :pswitch_0
    iget v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 162
    :pswitch_1
    sget-boolean v1, Lcom/yulong/android/cp_utk/UtkAppService;->aF:Z

    if-eqz v1, :cond_2

    .line 163
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 164
    iput-boolean v3, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 165
    invoke-direct {p0, v4}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(I)V

    .line 166
    sput-boolean v3, Lcom/yulong/android/cp_utk/UtkAppService;->aF:Z

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 156
    iput-boolean v3, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 157
    invoke-direct {p0, v4}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(I)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 122
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, p3}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->d(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick RES_ID_MENU_SELECTION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const/16 v1, 0xb

    iget v0, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v1, v0, v3}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(IIZ)V

    .line 132
    iput-boolean v3, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 133
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aS:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aS:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 112
    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(Landroid/content/Intent;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 116
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 271
    iget-boolean v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    if-nez v1, :cond_0

    .line 293
    :goto_0
    return v0

    .line 274
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :cond_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 276
    :pswitch_1
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 277
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 279
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(I)V

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a()V

    .line 283
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 284
    invoke-virtual {p0}, Landroid/app/ListActivity;->getSelectedItemPosition()I

    move-result v1

    .line 285
    invoke-direct {p0, v1}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->d(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_1

    .line 290
    const/16 v2, 0xb

    iget v1, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v2, v1, v0}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->a(IIZ)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 230
    const-string v0, "*****\u8bbe\u7f6e\u754c\u9762\u53ef\u89c1\u6027\u4e3afalse"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulong/android/cp_utk/UtkAppService;->a(Z)V

    .line 233
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 259
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 263
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 266
    return v3

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    .line 305
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    .line 306
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforFinish = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-boolean v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    if-eqz v0, :cond_0

    .line 181
    sput-boolean v3, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    .line 182
    sput-boolean v2, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    .line 183
    new-instance v0, Lcom/yulong/android/cp_utk/h;

    invoke-direct {v0, p0}, Lcom/yulong/android/cp_utk/h;-><init>(Lcom/yulong/android/cp_utk/UtkMenuActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    :goto_0
    const-string v0, "*****onResume \u8bbe\u7f6e\u754c\u9762\u53ef\u89c1\u6027\u4e3atrue"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v0, v2}, Lcom/yulong/android/cp_utk/UtkAppService;->a(Z)V

    .line 205
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/UtkAppService;->i()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    .line 207
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    if-nez v0, :cond_1

    .line 208
    const-string v0, "2222:mUtkMenu is null!"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 224
    :goto_1
    return-void

    .line 196
    :cond_0
    sput-boolean v3, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aT:Z

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->u()V

    .line 213
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkMenuActivity;->b()V

    .line 217
    iget-boolean v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    if-nez v0, :cond_2

    .line 218
    iput v2, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    .line 219
    iput-boolean v2, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aP:Z

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aS:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 223
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aS:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 298
    const-string v0, "STATE"

    iget v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aO:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 300
    return-void
.end method
