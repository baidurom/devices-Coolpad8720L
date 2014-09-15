.class Lcom/android/gallery3d/app/CropImage$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->initSetWallpaperType(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 306
    const-string v0, "CropImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$4;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutZoom:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
