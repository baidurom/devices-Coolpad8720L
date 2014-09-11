.class public Lcom/marvell/fmradio/a/k;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static bo:Lcom/marvell/fmradio/a/k;


# instance fields
.field private bn:Lcom/marvell/fmradio/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/marvell/fmradio/a/k;->bo:Lcom/marvell/fmradio/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marvell/fmradio/a/k;->bn:Lcom/marvell/fmradio/a/i;

    .line 74
    return-void
.end method

.method public static F()Lcom/marvell/fmradio/a/k;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/marvell/fmradio/a/k;->bo:Lcom/marvell/fmradio/a/k;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/marvell/fmradio/a/k;

    invoke-direct {v0}, Lcom/marvell/fmradio/a/k;-><init>()V

    sput-object v0, Lcom/marvell/fmradio/a/k;->bo:Lcom/marvell/fmradio/a/k;

    .line 67
    :cond_0
    sget-object v0, Lcom/marvell/fmradio/a/k;->bo:Lcom/marvell/fmradio/a/k;

    return-object v0
.end method

.method static synthetic a(Lcom/marvell/fmradio/a/k;)Lcom/marvell/fmradio/a/i;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/marvell/fmradio/a/k;->bn:Lcom/marvell/fmradio/a/i;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    :try_start_0
    check-cast p1, Lcom/marvell/fmradio/a/i;

    iput-object p1, p0, Lcom/marvell/fmradio/a/k;->bn:Lcom/marvell/fmradio/a/i;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050062

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050064

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050066

    new-instance v2, Lcom/marvell/fmradio/a/a;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/a/a;-><init>(Lcom/marvell/fmradio/a/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
