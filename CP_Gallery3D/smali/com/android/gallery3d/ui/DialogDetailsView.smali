.class public Lcom/android/gallery3d/ui/DialogDetailsView;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

.field private mDetails:Lcom/android/gallery3d/data/MediaDetails;

.field private mDialog:Landroid/app/Dialog;

.field private mIndex:I

.field private mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

.field private final mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 0
    .parameter "activity"
    .parameter "source"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 59
    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/data/MediaDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    return-object v0
.end method

.method private setDetails(Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 10
    .parameter "details"

    .prologue
    .line 87
    new-instance v6, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-direct {v6, p0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;Lcom/android/gallery3d/data/MediaDetails;)V

    iput-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    .line 88
    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e009b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, title:Ljava/lang/String;
    new-instance v6, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f003f

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    .line 93
    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 94
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040019

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, custom:Landroid/view/View;
    const v6, 0x7f10004f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 97
    .local v5, title1:Landroid/widget/TextView;
    const v6, 0x7f100050

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 98
    .local v2, detailList:Landroid/widget/ListView;
    const v6, 0x7f100051

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    .local v0, cancelBtn:Landroid/widget/Button;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 104
    new-instance v6, Lcom/android/gallery3d/ui/DialogDetailsView$1;

    invoke-direct {v6, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$1;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v6, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    new-instance v7, Lcom/android/gallery3d/ui/DialogDetailsView$2;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$2;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 71
    return-void
.end method

.method public reloadDetails()V
    .locals 3

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->setIndex()I

    move-result v1

    .line 76
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 78
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    if-eqz v0, :cond_0

    .line 79
    iget v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 80
    :cond_2
    iput v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    .line 81
    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    .line 82
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/android/gallery3d/data/MediaDetails;)V

    goto :goto_0
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    .line 251
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DialogDetailsView;->reloadDetails()V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 66
    return-void
.end method
