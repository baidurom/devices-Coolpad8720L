.class public Lcom/yulong/android/cp_utk/UtkDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final K:I = 0x1

.field private static final TEXT:Ljava/lang/String; = "text"

.field public static final aL:I = 0x7f080006

.field public static final aM:I = 0x7f080011

.field public static aN:Ljava/lang/String;


# instance fields
.field L:Landroid/os/Handler;

.field aJ:I

.field aK:Lcom/yulong/android/cp_utk/UtkAppService;

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "platform"

    sput-object v0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    .line 46
    invoke-static {}, Lcom/yulong/android/cp_utk/UtkAppService;->q()Lcom/yulong/android/cp_utk/UtkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    .line 48
    new-instance v0, Lcom/yulong/android/cp_utk/x;

    invoke-direct {v0, p0}, Lcom/yulong/android/cp_utk/x;-><init>(Lcom/yulong/android/cp_utk/UtkDialogActivity;)V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->L:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->L:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(IZ)V

    .line 222
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v1, "confirm"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
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

    .line 217
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->t()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yulong/android/cp_utk/UtkDialogActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(I)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a()V

    .line 240
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/c;->a(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    .line 241
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start timeout is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    if-eqz v0, :cond_2

    .line 247
    const v0, 0x2625a00

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 256
    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->L:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    return-void

    .line 249
    :cond_2
    const/16 v0, 0x2710

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xd

    .line 99
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->t()V

    .line 111
    return-void

    .line 102
    :sswitch_0
    const-string v0, "onClick OK BUTTON"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(IZ)V

    goto :goto_0

    .line 106
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(IZ)V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x7f080006 -> :sswitch_0
        0x7f080011 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 82
    sget-object v0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aN:Ljava/lang/String;

    invoke-static {v0}, Lcom/yulong/android/feature/FeatureConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLATFORM_TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string v1, "5"

    if-ne v1, v0, :cond_0

    .line 85
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 90
    :goto_0
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 91
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 93
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 87
    :cond_0
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a()V

    .line 187
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 117
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(I)V

    .line 118
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->t()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    const-string v0, "onNewIntent - updating the same Dialog box"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Z)V

    .line 181
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 201
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aK:Lcom/yulong/android/cp_utk/UtkAppService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yulong/android/cp_utk/UtkAppService;->b(Z)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->a(Landroid/content/Intent;)V

    .line 131
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->t()V

    .line 172
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 138
    const v0, 0x7f08000f

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    iget-object v2, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Dialog title is \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 149
    const-string v0, "mTextMsg.icon is null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const v0, 0x1080525

    invoke-virtual {v1, v4, v0}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/c;->a(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    iput v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    .line 165
    iget v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->aJ:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v0, :cond_4

    .line 167
    const-string v0, "User should clear text..show message for ever"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v0, "mTextMsg.icon  is not null"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 171
    :cond_4
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkDialogActivity;->b()V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v0, "text"

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    return-void
.end method

.method t()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 269
    return-void
.end method
