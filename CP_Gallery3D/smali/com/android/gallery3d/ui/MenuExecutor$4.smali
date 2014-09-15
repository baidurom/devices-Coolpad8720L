.class Lcom/android/gallery3d/ui/MenuExecutor$4;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;->rename()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$ids:Ljava/util/ArrayList;

.field final synthetic val$isRenameAlbum:Z

.field final synthetic val$oldTitle:Ljava/lang/String;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$oldTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$ids:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$isRenameAlbum:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, renameTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$oldTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->dismissRenameDlg()V
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->checkFileNameContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 547
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e02eb

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 549
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$text:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$oldTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$ids:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$ids:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$ids:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->val$isRenameAlbum:Z

    invoke-direct {v3, v4, v1, v0, v5}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    .line 556
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$4;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->dismissRenameDlg()V
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;)V

    goto :goto_0
.end method
