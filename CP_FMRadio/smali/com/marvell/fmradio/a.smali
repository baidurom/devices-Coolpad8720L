.class Lcom/marvell/fmradio/a;
.super Lcom/yulong/android/view/list/DeleteableListView$DeleteableListItemProcessor;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/marvell/fmradio/ListTestdeleteableActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-direct {p0}, Lcom/yulong/android/view/list/DeleteableListView$DeleteableListItemProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateItemView(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    const v0, 0x7f070007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 286
    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/marvell/fmradio/an;

    invoke-virtual {v1}, Lcom/marvell/fmradio/an;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    const v0, 0x7f07000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 293
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->i(Lcom/marvell/fmradio/ListTestdeleteableActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->i(Lcom/marvell/fmradio/ListTestdeleteableActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0, p1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;I)I

    .line 298
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->i(Lcom/marvell/fmradio/ListTestdeleteableActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->i(Lcom/marvell/fmradio/ListTestdeleteableActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->g(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Lcom/yulong/android/view/list/DeleteableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->g(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Lcom/yulong/android/view/list/DeleteableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->i(Lcom/marvell/fmradio/ListTestdeleteableActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/BaseListView;->setSelectedPosition(I)V

    .line 308
    :cond_0
    :goto_1
    const v0, 0x7f070008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    const v1, 0x7f070009

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 311
    iget-object v2, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/marvell/fmradio/an;

    invoke-virtual {v2}, Lcom/marvell/fmradio/an;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marvell/fmradio/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MHz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void

    .line 289
    :cond_1
    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v0, "action_current_station_play"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 207
    const-string v0, "currentSelectFrequency"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v3, "FlagList"

    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->D()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->d(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v0

    iput v2, v0, Lcom/marvell/fmradio/c/e;->ci:I

    .line 215
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    const v0, 0x7f07000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->e(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    invoke-static {p3}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(I)I

    .line 225
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->f(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    .line 227
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->g(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Lcom/yulong/android/view/list/DeleteableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 229
    iget-object v2, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->g(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Lcom/yulong/android/view/list/DeleteableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yulong/android/view/list/BaseListView;->setCount(I)V

    .line 230
    iget-object v2, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->access$500()I

    move-result v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(III)V

    goto :goto_0
.end method

.method protected onListItemDeleted(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->D()I

    move-result v0

    .line 238
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemDeleted whichList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->h(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemDeleted stationFreg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/marvell/fmradio/c/b;->a(F)I

    move-result v0

    .line 245
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemDeleted selectFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->E()I

    move-result v0

    .line 255
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->h(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 257
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemDeleted stationFreg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/an;

    invoke-virtual {v0}, Lcom/marvell/fmradio/an;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/marvell/fmradio/c/b;->a(F)I

    move-result v0

    .line 261
    const-string v1, "ListTestdeleteableActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemDeleted selectFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/a;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 272
    const/4 v0, 0x1

    return v0
.end method
