.class Lcom/marvell/fmradio/o;
.super Lcom/yulong/android/controller/ButtonGroupProcessor;
.source "SourceFile"


# instance fields
.field final synthetic B:Lcom/marvell/fmradio/MultipleListTestActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MultipleListTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-direct {p0}, Lcom/yulong/android/controller/ButtonGroupProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public initButtonsTitleByString()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onFirstButtonClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->checkAll()V

    .line 190
    iget-object v0, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v1, v0}, Lcom/yulong/android/base/BaseActivity;->setHintBubbleText(I)V

    .line 192
    return-void
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->cancelAll()V

    .line 198
    iget-object v0, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yulong/android/base/BaseActivity;->setHintBubbleText(I)V

    .line 199
    return-void
.end method

.method public onThirdButtonClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/yulong/android/view/dialog/AlertDialog$Builder;

    iget-object v1, p0, Lcom/marvell/fmradio/o;->B:Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MultipleListTestActivity;->c(Lcom/marvell/fmradio/MultipleListTestActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulong/android/view/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    const v1, 0x7f050049

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/AlertDialog$Builder;->setTitle(I)Lcom/yulong/android/view/dialog/AlertDialog$Builder;

    .line 215
    const v1, 0x7f05004a

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/dialog/AlertDialog$Builder;->setMessage(I)Lcom/yulong/android/view/dialog/AlertDialog$Builder;

    .line 216
    const v1, 0x7f05003d

    new-instance v2, Lcom/marvell/fmradio/ax;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/ax;-><init>(Lcom/marvell/fmradio/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/view/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yulong/android/view/dialog/AlertDialog$Builder;

    .line 262
    const v1, 0x7f05003e

    new-instance v2, Lcom/marvell/fmradio/ay;

    invoke-direct {v2, p0}, Lcom/marvell/fmradio/ay;-><init>(Lcom/marvell/fmradio/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/view/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/yulong/android/view/dialog/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/view/dialog/AlertDialog$Builder;->create()Lcom/yulong/android/view/dialog/AlertDialog;

    .line 268
    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AlertDialog$Builder;->show()Lcom/yulong/android/view/dialog/AlertDialog;

    goto :goto_0
.end method
