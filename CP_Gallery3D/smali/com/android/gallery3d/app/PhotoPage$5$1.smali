.class Lcom/android/gallery3d/app/PhotoPage$5$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/PhotoPage$5;

.field final synthetic val$moreMenuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage$5;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$5$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$5;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$5$1;->val$moreMenuItems:Ljava/util/ArrayList;

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
    .line 706
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$5$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$5;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMoreMenuView:Lcom/android/gallery3d/ui/MoreMenuListView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MoreMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MoreMenuListView;->dismissPopupWindow()V

    .line 707
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$5$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$5;

    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$5$1;->val$moreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x2

    aget v0, v0, v2

    #calls: Lcom/android/gallery3d/app/PhotoPage;->menuItemResponse(I)Z
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4000(Lcom/android/gallery3d/app/PhotoPage;I)Z

    .line 708
    return-void
.end method
