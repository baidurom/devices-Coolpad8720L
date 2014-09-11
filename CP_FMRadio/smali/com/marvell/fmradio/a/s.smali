.class public Lcom/marvell/fmradio/a/s;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final cn:Ljava/lang/String; = "station_count"

.field private static cq:Lcom/marvell/fmradio/r;

.field private static cr:Lcom/marvell/fmradio/a/s;


# instance fields
.field private co:Lcom/marvell/fmradio/a/h;

.field private cp:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/marvell/fmradio/a/s;->cq:Lcom/marvell/fmradio/r;

    .line 63
    sput-object v0, Lcom/marvell/fmradio/a/s;->cr:Lcom/marvell/fmradio/a/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/marvell/fmradio/a/s;->co:Lcom/marvell/fmradio/a/h;

    .line 61
    iput-object v0, p0, Lcom/marvell/fmradio/a/s;->cp:Landroid/widget/ListView;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/a/s;)Lcom/marvell/fmradio/a/h;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/marvell/fmradio/a/s;->co:Lcom/marvell/fmradio/a/h;

    return-object v0
.end method

.method public static a(Lcom/marvell/fmradio/r;I)Lcom/marvell/fmradio/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/marvell/fmradio/a/s;->cr:Lcom/marvell/fmradio/a/s;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/marvell/fmradio/a/s;

    invoke-direct {v0}, Lcom/marvell/fmradio/a/s;-><init>()V

    sput-object v0, Lcom/marvell/fmradio/a/s;->cr:Lcom/marvell/fmradio/a/s;

    .line 76
    :cond_0
    sput-object p0, Lcom/marvell/fmradio/a/s;->cq:Lcom/marvell/fmradio/r;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 78
    const-string v1, "station_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    sget-object v1, Lcom/marvell/fmradio/a/s;->cr:Lcom/marvell/fmradio/a/s;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    sget-object v0, Lcom/marvell/fmradio/a/s;->cr:Lcom/marvell/fmradio/a/s;

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
    check-cast p1, Lcom/marvell/fmradio/a/h;

    iput-object p1, p0, Lcom/marvell/fmradio/a/s;->co:Lcom/marvell/fmradio/a/h;
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
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "station_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 115
    const v0, 0x7f070005

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/marvell/fmradio/a/s;->cp:Landroid/widget/ListView;

    .line 116
    const v0, 0x7f070006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    iget-object v3, p0, Lcom/marvell/fmradio/a/s;->cp:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/marvell/fmradio/a/s;->cp:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 119
    iget-object v0, p0, Lcom/marvell/fmradio/a/s;->cp:Landroid/widget/ListView;

    sget-object v3, Lcom/marvell/fmradio/a/s;->cq:Lcom/marvell/fmradio/r;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05005a

    new-instance v2, Lcom/marvell/fmradio/a/l;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/a/l;-><init>(Lcom/marvell/fmradio/a/s;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050067

    new-instance v2, Lcom/marvell/fmradio/a/e;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/a/e;-><init>(Lcom/marvell/fmradio/a/s;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
