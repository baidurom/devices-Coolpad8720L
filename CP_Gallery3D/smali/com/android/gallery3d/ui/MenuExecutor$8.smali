.class Lcom/android/gallery3d/ui/MenuExecutor$8;
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


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$8;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$8;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$8;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->dlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$700(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 859
    :cond_0
    return-void
.end method
