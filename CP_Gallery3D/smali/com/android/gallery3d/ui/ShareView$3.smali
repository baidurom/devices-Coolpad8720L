.class Lcom/android/gallery3d/ui/ShareView$3;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ShareView;->show(Landroid/widget/LinearLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ShareView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ShareView;->dismissPopupWindow()V

    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    #getter for: Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ShareView;->access$000(Lcom/android/gallery3d/ui/ShareView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->targetActivity:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/ui/ShareView;->writePreference(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/ShareView;->access$100(Lcom/android/gallery3d/ui/ShareView;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    #getter for: Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ShareView;->access$000(Lcom/android/gallery3d/ui/ShareView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget v1, v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    iget-object v1, v0, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    #getter for: Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ShareView;->access$000(Lcom/android/gallery3d/ui/ShareView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget-object v2, v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    #getter for: Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ShareView;->access$000(Lcom/android/gallery3d/ui/ShareView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ShareView$3;->this$0:Lcom/android/gallery3d/ui/ShareView;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method
