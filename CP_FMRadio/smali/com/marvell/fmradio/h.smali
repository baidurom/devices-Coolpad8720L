.class Lcom/marvell/fmradio/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 779
    check-cast p1, Landroid/widget/Button;

    .line 781
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;)[Landroid/widget/Button;

    move-result-object v2

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 785
    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->access$302(I)I

    .line 781
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;)[Landroid/widget/Button;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 791
    :cond_1
    if-eqz v0, :cond_2

    .line 792
    iget-object v1, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v2, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/marvell/fmradio/MainActivity;->b(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 793
    iget-object v1, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<mPresetButtonOnLongClickListener>: mDlgStationFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->e(Lcom/marvell/fmradio/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDlgStationName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->f(Lcom/marvell/fmradio/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v1, p0, Lcom/marvell/fmradio/h;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->f(Lcom/marvell/fmradio/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/MainActivity;->o(Ljava/lang/String;)V

    .line 801
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
