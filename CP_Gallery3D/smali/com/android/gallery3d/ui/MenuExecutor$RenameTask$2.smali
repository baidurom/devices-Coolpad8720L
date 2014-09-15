.class Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->dealDestDirExist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

.field final synthetic val$mHasImageNum:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->val$mHasImageNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 697
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v8, Landroid/app/Dialog;

    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v9, v9, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f003f

    invoke-direct {v8, v9, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$702(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 698
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 699
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040018

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 701
    .local v2, custom:Landroid/view/View;
    const v7, 0x7f10004b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 702
    .local v4, dlgTitle:Landroid/widget/TextView;
    const v7, 0x7f0e02ea

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 703
    const v7, 0x7f10004c

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 704
    .local v1, content:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->renameNewtitle:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->access$800(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 705
    .local v3, dlgText:Ljava/lang/String;
    iget v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->val$mHasImageNum:I

    if-nez v7, :cond_1

    .line 706
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e02ee

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    const v7, 0x7f10004e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 714
    .local v6, okBtn:Landroid/widget/Button;
    const v7, 0x7f10004d

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 715
    .local v0, cancelBtn:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 716
    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v7, v7, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 717
    new-instance v7, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$1;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    new-instance v7, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$2;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    return-void

    .line 709
    .end local v0           #cancelBtn:Landroid/widget/Button;
    .end local v6           #okBtn:Landroid/widget/Button;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v8, v8, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e02ef

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->val$mHasImageNum:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
