.class Lcom/marvell/fmradio/c;
.super Lcom/yulong/android/controller/ButtonGroupProcessor;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/marvell/fmradio/ListTestdeleteableActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-direct {p0}, Lcom/yulong/android/controller/ButtonGroupProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public initButtonsTitleByString()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onFirstButtonClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    const-class v2, Lcom/marvell/fmradio/MultipleListTestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    iget-object v1, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    iget-object v2, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->b(Lcom/marvell/fmradio/ListTestdeleteableActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v2, v0, v1}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->a(Lcom/marvell/fmradio/ListTestdeleteableActivity;J)J

    .line 185
    iget-object v0, p0, Lcom/marvell/fmradio/c;->a:Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/ListTestdeleteableActivity;->c(Lcom/marvell/fmradio/ListTestdeleteableActivity;)V

    goto :goto_0
.end method
