.class Lcom/marvell/fmradio/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 735
    check-cast p1, Landroid/widget/Button;

    .line 737
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 738
    iget-object v2, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;)[Landroid/widget/Button;

    move-result-object v2

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 739
    iget-object v2, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;)[Landroid/widget/Button;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->access$302(I)I

    .line 737
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_0
    iget-object v2, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;)[Landroid/widget/Button;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 748
    :cond_1
    if-eqz v0, :cond_3

    .line 750
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 751
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPresetButtonClickListener:stationFreg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    if-eq v0, v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    iput v0, v1, Lcom/marvell/fmradio/c/e;->ci:I

    .line 757
    iget-object v0, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SETCHANNEL"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 766
    :cond_2
    :goto_2
    return-void

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->d(Lcom/marvell/fmradio/MainActivity;)V

    .line 764
    iget-object v0, p0, Lcom/marvell/fmradio/g;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-virtual {v0}, Lcom/marvell/fmradio/MainActivity;->S()V

    goto :goto_2
.end method
