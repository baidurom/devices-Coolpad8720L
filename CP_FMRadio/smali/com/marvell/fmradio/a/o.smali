.class public Lcom/marvell/fmradio/a/o;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static bA:Ljava/lang/String; = null

.field private static bB:Lcom/marvell/fmradio/a/o; = null

.field private static final be:Ljava/lang/String; = "station_name"


# instance fields
.field private bz:Lcom/marvell/fmradio/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/marvell/fmradio/a/o;->bA:Ljava/lang/String;

    .line 63
    sput-object v0, Lcom/marvell/fmradio/a/o;->bB:Lcom/marvell/fmradio/a/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marvell/fmradio/a/o;->bz:Lcom/marvell/fmradio/a/n;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/a/o;)Lcom/marvell/fmradio/a/n;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/marvell/fmradio/a/o;->bz:Lcom/marvell/fmradio/a/n;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/marvell/fmradio/a/o;
    .locals 2
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/marvell/fmradio/a/o;->bB:Lcom/marvell/fmradio/a/o;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/marvell/fmradio/a/o;

    invoke-direct {v0}, Lcom/marvell/fmradio/a/o;-><init>()V

    sput-object v0, Lcom/marvell/fmradio/a/o;->bB:Lcom/marvell/fmradio/a/o;

    .line 77
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 78
    const-string v1, "station_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/marvell/fmradio/a/o;->bB:Lcom/marvell/fmradio/a/o;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    sget-object v0, Lcom/marvell/fmradio/a/o;->bB:Lcom/marvell/fmradio/a/o;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 103
    :try_start_0
    check-cast p1, Lcom/marvell/fmradio/a/n;

    iput-object p1, p0, Lcom/marvell/fmradio/a/o;->bz:Lcom/marvell/fmradio/a/n;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "station_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marvell/fmradio/a/o;->bA:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    const v0, 0x7f070002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/view/edittext/EditTextEx;

    .line 120
    sget-object v2, Lcom/marvell/fmradio/a/o;->bA:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    sget-object v3, Lcom/marvell/fmradio/a/o;->bA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    const v2, 0x7f050061

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 125
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 128
    sget-object v2, Lcom/marvell/fmradio/a/o;->bA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0}, Lcom/yulong/android/view/edittext/RichEdit;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 130
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 134
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05003c

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05003d

    new-instance v2, Lcom/marvell/fmradio/a/f;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/a/f;-><init>(Lcom/marvell/fmradio/a/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05003e

    new-instance v2, Lcom/marvell/fmradio/a/g;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/a/g;-><init>(Lcom/marvell/fmradio/a/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    sget-object v2, Lcom/marvell/fmradio/a/o;->bA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
