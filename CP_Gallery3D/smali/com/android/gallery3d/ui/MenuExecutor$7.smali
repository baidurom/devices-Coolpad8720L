.class Lcom/android/gallery3d/ui/MenuExecutor$7;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$action:I

.field final synthetic val$listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->val$action:I

    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->val$listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->val$action:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->val$listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1000(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 852
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$7;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 853
    :cond_0
    return-void
.end method
