.class Lcom/marvell/fmradio/u;
.super Lcom/yulong/android/view/list/MultipleChoiceListView$MultiListItemProcessor;
.source "SourceFile"


# instance fields
.field final synthetic B:Lcom/marvell/fmradio/MultipleListTestActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MultipleListTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/marvell/fmradio/u;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-direct {p0}, Lcom/yulong/android/view/list/MultipleChoiceListView$MultiListItemProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method protected onCheckedChange(ZLandroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/marvell/fmradio/u;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/marvell/fmradio/u;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v1, v0}, Lcom/yulong/android/base/BaseActivity;->setHintBubbleText(I)V

    .line 95
    return-void
.end method

.method protected onCreateItemView(ZILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/marvell/fmradio/u;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->b(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v0, "MultipleListTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateItemView position==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const v0, 0x7f07000a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/marvell/fmradio/u;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MultipleListTestActivity;->b(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/marvell/fmradio/ae;

    invoke-virtual {v1}, Lcom/marvell/fmradio/ae;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    :goto_1
    const v0, 0x7f070008

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/marvell/fmradio/u;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MultipleListTestActivity;->b(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/marvell/fmradio/ae;

    invoke-virtual {v1}, Lcom/marvell/fmradio/ae;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v0, 0x7f070009

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/marvell/fmradio/u;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MultipleListTestActivity;->b(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/marvell/fmradio/ae;

    invoke-virtual {v1}, Lcom/marvell/fmradio/ae;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/marvell/fmradio/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 115
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onListItemClick(Lcom/yulong/android/view/CooldroidCheckedImageView;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method protected toggleCheckOnItemClick(I)Z
    .locals 1
    .parameter

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method
