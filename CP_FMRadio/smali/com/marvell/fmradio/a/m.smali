.class public Lcom/marvell/fmradio/a/m;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final be:Ljava/lang/String; = "station_name"

.field private static final bp:I = 0x0

.field private static final bq:I = 0x1

.field private static final br:I = 0x2

.field private static bt:Lcom/marvell/fmradio/a/m;


# instance fields
.field private bs:Lcom/marvell/fmradio/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/marvell/fmradio/a/m;->bt:Lcom/marvell/fmradio/a/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marvell/fmradio/a/m;->bs:Lcom/marvell/fmradio/a/d;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/a/m;)Lcom/marvell/fmradio/a/d;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/marvell/fmradio/a/m;->bs:Lcom/marvell/fmradio/a/d;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/marvell/fmradio/a/m;
    .locals 2
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/marvell/fmradio/a/m;->bt:Lcom/marvell/fmradio/a/m;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/marvell/fmradio/a/m;

    invoke-direct {v0}, Lcom/marvell/fmradio/a/m;-><init>()V

    sput-object v0, Lcom/marvell/fmradio/a/m;->bt:Lcom/marvell/fmradio/a/m;

    .line 73
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 74
    const-string v1, "station_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/marvell/fmradio/a/m;->bt:Lcom/marvell/fmradio/a/m;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    sget-object v0, Lcom/marvell/fmradio/a/m;->bt:Lcom/marvell/fmradio/a/m;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    :try_start_0
    check-cast p1, Lcom/marvell/fmradio/a/d;

    iput-object p1, p0, Lcom/marvell/fmradio/a/m;->bs:Lcom/marvell/fmradio/a/d;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "station_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    new-instance v0, Lcom/marvell/fmradio/a/c;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/a/c;-><init>(Lcom/marvell/fmradio/a/m;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
