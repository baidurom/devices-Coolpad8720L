.class Lcom/android/gallery3d/ui/ActionModeHandler$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 12
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$100(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v9

    .line 487
    .local v9, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    if-nez v9, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-object v11

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Ljava/util/ArrayList;)I
    invoke-static {v0, v9}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$200(Lcom/android/gallery3d/ui/ActionModeHandler;Ljava/util/ArrayList;)I

    move-result v3

    .line 491
    .local v3, operation:I
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    new-instance v4, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;

    invoke-direct {v4, v9, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;-><init>(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    .line 498
    .local v4, supportCallback:Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeUris(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$300(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/List;

    move-result-object v8

    .line 499
    .local v8, paths:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/Path;>;"
    const/4 v7, 0x0

    .line 500
    .local v7, isSecureBoxPic:Z
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 501
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/local/image/secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    const/4 v7, 0x1

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computePanoramaSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;
    invoke-static {v0, p1, v8, v7}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$400(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v5

    .line 506
    .local v5, share_panorama_intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;
    invoke-static {v0, p1, v8, v7}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$500(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v6

    .line 507
    .local v6, share_intent:Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->waitForPanoramaSupport()V

    .line 508
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1300(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$2;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
