.class public Lcom/yulong/android/cp_utk/ToneDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final n:I = 0xda


# instance fields
.field j:Lcom/android/internal/telephony/cat/TextMessage;

.field k:Lcom/android/internal/telephony/cat/ToneSettings;

.field l:Lcom/yulong/android/cp_utk/g;

.field m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->j:Lcom/android/internal/telephony/cat/TextMessage;

    .line 39
    iput-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->k:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 40
    iput-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->l:Lcom/yulong/android/cp_utk/g;

    .line 45
    new-instance v0, Lcom/yulong/android/cp_utk/v;

    invoke-direct {v0, p0}, Lcom/yulong/android/cp_utk/v;-><init>(Lcom/yulong/android/cp_utk/ToneDialog;)V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->m:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->j:Lcom/android/internal/telephony/cat/TextMessage;

    .line 125
    const-string v0, "TONE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->k:Lcom/android/internal/telephony/cat/ToneSettings;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yulong/android/cp_utk/ToneDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/yulong/android/cp_utk/ToneDialog;->a(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/ToneDialog;->a(Landroid/content/Intent;)V

    .line 69
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    iget-object v2, p0, Lcom/yulong/android/cp_utk/ToneDialog;->j:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->j:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 80
    const v0, 0x1080363

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_0
    new-instance v0, Lcom/yulong/android/cp_utk/g;

    invoke-direct {v0}, Lcom/yulong/android/cp_utk/g;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->l:Lcom/yulong/android/cp_utk/g;

    .line 87
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->l:Lcom/yulong/android/cp_utk/g;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/ToneDialog;->k:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0, v1}, Lcom/yulong/android/cp_utk/g;->a(Lcom/android/internal/telephony/cat/Tone;)V

    .line 88
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->k:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/yulong/android/cp_utk/c;->a(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    const/16 v0, 0x7d0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/cp_utk/ToneDialog;->m:Landroid/os/Handler;

    const/16 v2, 0xda

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->k:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_1
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->j:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->m:Landroid/os/Handler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->l:Lcom/yulong/android/cp_utk/g;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/g;->stop()V

    .line 104
    iget-object v0, p0, Lcom/yulong/android/cp_utk/ToneDialog;->l:Lcom/yulong/android/cp_utk/g;

    invoke-virtual {v0}, Lcom/yulong/android/cp_utk/g;->release()V

    .line 106
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 112
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/yulong/android/cp_utk/ToneDialog;->a(I)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
