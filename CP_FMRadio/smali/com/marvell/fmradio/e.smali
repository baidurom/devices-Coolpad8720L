.class Lcom/marvell/fmradio/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/marvell/fmradio/ListTestdeleteableActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/marvell/fmradio/e;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-static {p3}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->b(I)I

    .line 323
    new-instance v0, Lcom/yulong/android/view/PopupMenu;

    iget-object v1, p0, Lcom/marvell/fmradio/e;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-direct {v0, v1}, Lcom/yulong/android/view/PopupMenu;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v0, v3}, Lcom/yulong/android/view/PopupMenu;->setAutoPopup(Z)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/yulong/android/view/PopupMenu;->setView(Landroid/view/View;)V

    .line 326
    new-instance v1, Lcom/marvell/fmradio/n;

    invoke-direct {v1, p0}, Lcom/marvell/fmradio/n;-><init>(Lcom/marvell/fmradio/e;)V

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/PopupMenu;->setPopupMenuListener(Lcom/yulong/android/view/PopupMenu$PopupMenuListener;)V

    .line 339
    sget-object v1, Lcom/yulong/android/view/MenuHelper$ArrowOrientation;->Right_Down:Lcom/yulong/android/view/MenuHelper$ArrowOrientation;

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/PopupMenu;->setArrowOrientation(Lcom/yulong/android/view/MenuHelper$ArrowOrientation;)V

    .line 340
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/marvell/fmradio/e;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/PopupMenu;->showAsDialog(Ljava/lang/String;)V

    .line 343
    :cond_0
    return v3
.end method
