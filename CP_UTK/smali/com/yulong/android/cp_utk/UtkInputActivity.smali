.class public Lcom/yulong/android/cp_utk/UtkInputActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final K:I = 0x1

.field private static final bh:I = 0x1

.field private static final bi:I = 0x2

.field static final bj:Ljava/lang/String; = "YES"

.field static final bk:Ljava/lang/String; = "NO"

.field static final bl:F = 1.0f

.field static final bm:F = 2.0f

.field static final bn:F


# instance fields
.field L:Landroid/os/Handler;

.field private bc:Landroid/widget/EditText;

.field private bd:Landroid/widget/TextView;

.field private be:Landroid/view/View;

.field private bf:Landroid/view/View;

.field private bg:Lcom/android/internal/telephony/cat/Input;

.field private mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    .line 53
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bd:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->be:Landroid/view/View;

    .line 55
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bf:Landroid/view/View;

    .line 56
    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    .line 73
    new-instance v0, Lcom/yulong/android/cp_utk/w;

    invoke-direct {v0, p0}, Lcom/yulong/android/cp_utk/w;-><init>(Lcom/yulong/android/cp_utk/UtkInputActivity;)V

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->L:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/android/internal/telephony/cat/FontSize;)F
    .locals 2
    .parameter

    .prologue
    .line 346
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 349
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 346
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->L:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 198
    const-string v0, "sendResponse"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(ILjava/lang/String;Z)V

    .line 200
    return-void
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    const-string v1, "input"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
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

    .line 211
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/yulong/android/cp_utk/UtkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/yulong/android/cp_utk/UtkInputActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(I)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a()V

    .line 276
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->L:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 278
    return-void
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget v1, v1, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-ge v0, v1, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private x()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 281
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 284
    const v2, 0x7f06000e

    .line 287
    iget-object v3, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bd:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v3, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    if-eqz v3, :cond_0

    .line 291
    iget-object v2, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    invoke-static {}, Lcom/yulong/android/cp_utk/p;->v()Lcom/yulong/android/cp_utk/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 292
    const v2, 0x7f06000f

    .line 294
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 296
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 297
    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_1
    iget v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 343
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget v2, v1, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 305
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget v3, v1, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 314
    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 318
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    if-eq v2, v3, :cond_2

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    if-nez v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->be:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bf:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*******\u8f93\u5165\u7684\u5185\u5bb9\u662f\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(ILjava/lang/String;Z)V

    .line 113
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->t()V

    .line 114
    :cond_0
    return-void

    .line 97
    :pswitch_1
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_2
    const-string v0, "YES"

    goto :goto_0

    .line 107
    :pswitch_3
    const-string v0, "NO"

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x7f080006
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    .line 122
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 123
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 126
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    .line 127
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bd:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 132
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 134
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->be:Landroid/view/View;

    .line 139
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bf:Landroid/view/View;

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    const-string v1, "INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Input;

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    .line 146
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->t()V

    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->mContext:Landroid/content/Context;

    .line 156
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->mState:I

    .line 150
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->x()V

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->t()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 218
    const v0, 0x7f060005

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 220
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060006

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 222
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a()V

    .line 183
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/yulong/android/cp_utk/q;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 190
    :pswitch_0
    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(ILjava/lang/String;Z)V

    .line 191
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->t()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 246
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 238
    :pswitch_1
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(I)V

    .line 239
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->t()V

    goto :goto_0

    .line 242
    :pswitch_2
    const/16 v1, 0xc

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->a(ILjava/lang/String;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->t()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 177
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bc:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 228
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 229
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/cp_utk/UtkInputActivity;->bg:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    return v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->b()V

    .line 170
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/yulong/android/cp_utk/UtkInputActivity;->b()V

    .line 256
    return-void
.end method

.method t()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yulong/android/cp_utk/UtkMenuActivity;->aU:Z

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 355
    return-void
.end method
