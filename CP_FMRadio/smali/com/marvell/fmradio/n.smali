.class Lcom/marvell/fmradio/n;
.super Lcom/yulong/android/view/PopupMenu$PopupMenuListener;
.source "SourceFile"


# instance fields
.field final synthetic A:Lcom/marvell/fmradio/e;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/e;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/marvell/fmradio/n;->A:Lcom/marvell/fmradio/e;

    invoke-direct {p0}, Lcom/yulong/android/view/PopupMenu$PopupMenuListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/view/MenuItem;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/marvell/fmradio/n;->A:Lcom/marvell/fmradio/e;

    iget-object v0, v0, Lcom/marvell/fmradio/e;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0, p1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;Landroid/view/MenuItem;)V

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public registerMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 328
    const v0, 0x7f050051

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 330
    const/4 v0, 0x2

    const v1, 0x7f050052

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 331
    return-void
.end method
