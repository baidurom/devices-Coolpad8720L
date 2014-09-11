.class public Lcom/marvell/fmradio/a/j;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final be:Ljava/lang/String; = "station_name"

.field private static final bf:Ljava/lang/String; = "station_freq"

.field private static bi:Lcom/marvell/fmradio/a/j;


# instance fields
.field private bh:Lcom/marvell/fmradio/a/b;

.field private bj:Lcom/yulong/android/view/edittext/EditTextEx;

.field bk:Landroid/text/InputFilter;

.field private bl:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/marvell/fmradio/a/j;->bi:Lcom/marvell/fmradio/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/marvell/fmradio/a/j;->bh:Lcom/marvell/fmradio/a/b;

    .line 71
    iput-object v0, p0, Lcom/marvell/fmradio/a/j;->bj:Lcom/yulong/android/view/edittext/EditTextEx;

    .line 170
    new-instance v0, Lcom/marvell/fmradio/a/p;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/a/p;-><init>(Lcom/marvell/fmradio/a/j;)V

    iput-object v0, p0, Lcom/marvell/fmradio/a/j;->bk:Landroid/text/InputFilter;

    .line 201
    new-instance v0, Lcom/marvell/fmradio/a/r;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/a/r;-><init>(Lcom/marvell/fmradio/a/j;)V

    iput-object v0, p0, Lcom/marvell/fmradio/a/j;->bl:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/a/j;)Lcom/marvell/fmradio/a/b;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/marvell/fmradio/a/j;->bh:Lcom/marvell/fmradio/a/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/marvell/fmradio/a/j;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/marvell/fmradio/a/j;->bi:Lcom/marvell/fmradio/a/j;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/marvell/fmradio/a/j;

    invoke-direct {v0}, Lcom/marvell/fmradio/a/j;-><init>()V

    sput-object v0, Lcom/marvell/fmradio/a/j;->bi:Lcom/marvell/fmradio/a/j;

    .line 86
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 87
    const-string v1, "station_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "station_freq"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/marvell/fmradio/a/j;->bi:Lcom/marvell/fmradio/a/j;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    sget-object v0, Lcom/marvell/fmradio/a/j;->bi:Lcom/marvell/fmradio/a/j;

    return-object v0
.end method

.method static synthetic b(Lcom/marvell/fmradio/a/j;)Lcom/yulong/android/view/edittext/EditTextEx;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/marvell/fmradio/a/j;->bj:Lcom/yulong/android/view/edittext/EditTextEx;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 108
    :try_start_0
    check-cast p1, Lcom/marvell/fmradio/a/b;

    iput-object p1, p0, Lcom/marvell/fmradio/a/j;->bh:Lcom/marvell/fmradio/a/b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "station_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "station_freq"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 122
    const/high16 v0, 0x7f07

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/view/edittext/EditTextEx;

    .line 124
    const v1, 0x7f070001

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/view/edittext/EditTextEx;

    iput-object v1, p0, Lcom/marvell/fmradio/a/j;->bj:Lcom/yulong/android/view/edittext/EditTextEx;

    .line 130
    iget-object v1, p0, Lcom/marvell/fmradio/a/j;->bj:Lcom/yulong/android/view/edittext/EditTextEx;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    iget-object v6, p0, Lcom/marvell/fmradio/a/j;->bk:Landroid/text/InputFilter;

    aput-object v6, v5, v8

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 133
    iget-object v1, p0, Lcom/marvell/fmradio/a/j;->bj:Lcom/yulong/android/view/edittext/EditTextEx;

    iget-object v5, p0, Lcom/marvell/fmradio/a/j;->bl:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object v1, p0, Lcom/marvell/fmradio/a/j;->bj:Lcom/yulong/android/view/edittext/EditTextEx;

    invoke-static {v3}, Lcom/marvell/fmradio/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    const v1, 0x7f050061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 141
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 144
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0}, Lcom/yulong/android/view/edittext/RichEdit;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 150
    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050060

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050066

    new-instance v2, Lcom/marvell/fmradio/a/q;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/a/q;-><init>(Lcom/marvell/fmradio/a/j;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050067

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
