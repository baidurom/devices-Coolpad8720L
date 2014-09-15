.class Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$1;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$1;->this$2:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$1;->this$2:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->submitMoveTask()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->access$900(Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;)V

    .line 721
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2$1;->this$2:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask$2;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor$RenameTask;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 722
    return-void
.end method
