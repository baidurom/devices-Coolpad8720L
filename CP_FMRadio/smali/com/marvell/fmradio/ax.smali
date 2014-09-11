.class Lcom/marvell/fmradio/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic by:Lcom/marvell/fmradio/o;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/o;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 221
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 223
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    const-string v2, "MultipleListTestActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThirdButtonClick i ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v2, v2, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MultipleListTestActivity;->b(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/ae;

    invoke-virtual {v0}, Lcom/marvell/fmradio/ae;->z()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v2, "MultipleListTestActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThirdButtonClick selectFrequency=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v2, v2, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MultipleListTestActivity;->d(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/marvell/fmradio/c/e;->getIndex(Ljava/lang/String;)I

    move-result v2

    .line 235
    const-string v3, "MultipleListTestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<onThirdButtonClick>index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eq v2, v6, :cond_0

    .line 239
    iget-object v3, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v3, v3, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MultipleListTestActivity;->d(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v2, v2, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MultipleListTestActivity;->d(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/marvell/fmradio/c/e;->l(Ljava/lang/String;)I

    move-result v0

    .line 243
    const-string v2, "MultipleListTestActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onThirdButtonClick>fIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-eq v0, v6, :cond_1

    .line 247
    iget-object v2, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v2, v2, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MultipleListTestActivity;->d(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/marvell/fmradio/c/e;->m(I)V

    .line 223
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->cancelAll()V

    .line 252
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulong/android/base/BaseActivity;->setHintBubbleText(I)V

    .line 253
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/BaseListView;->refresh()V

    .line 255
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->e(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;

    .line 257
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/marvell/fmradio/ax;->by:Lcom/marvell/fmradio/o;

    iget-object v0, v0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 260
    :cond_3
    return-void
.end method
