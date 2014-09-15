.class Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->toastRenameResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iput-boolean p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 614
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;->val$result:Z

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v1, v1, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, toastText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v1, v1, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 623
    return-void

    .line 618
    .end local v0           #toastText:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$1;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v1, v1, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #toastText:Ljava/lang/String;
    goto :goto_0
.end method
