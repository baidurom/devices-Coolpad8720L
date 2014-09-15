.class Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapSize:I

.field mTinyPlanetButton:Landroid/view/View;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "button"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 442
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mTinyPlanetButton:Landroid/view/View;

    .line 443
    #calls: Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    .line 444
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    aget-object v1, p1, v3

    iget v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadBitmap(Landroid/net/Uri;I)V

    .line 449
    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->queryLightCycle360()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mTinyPlanetButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$202(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 472
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 437
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 437
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v3, 0x7f10006a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 458
    .local v0, filters:Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v3, 0x7f100069

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 459
    .local v1, loading:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
