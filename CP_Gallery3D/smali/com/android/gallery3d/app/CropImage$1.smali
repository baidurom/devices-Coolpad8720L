.class Lcom/android/gallery3d/app/CropImage$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 227
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$000(Lcom/android/gallery3d/app/CropImage;)V

    .line 230
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    #calls: Lcom/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/CropImage;->access$100(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$000(Lcom/android/gallery3d/app/CropImage;)V

    .line 235
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    #calls: Lcom/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/CropImage;->access$200(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$000(Lcom/android/gallery3d/app/CropImage;)V

    .line 240
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    const v3, 0x7f0e0083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 244
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 247
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$000(Lcom/android/gallery3d/app/CropImage;)V

    .line 248
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v3, -0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 249
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 253
    :pswitch_4
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 254
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 258
    :pswitch_5
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutFreeZoom:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutPropZoom:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, type:Ljava/lang/String;
    const-string v1, "PROPORTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutFreeZoom:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutPropZoom:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setCropParameters(Z)V
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;Z)V

    .line 269
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->initializeData()V
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;)V

    goto/16 :goto_0

    .line 264
    :cond_2
    const-string v1, "FREE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutFreeZoom:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mLayoutPropZoom:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setCropParameters(Z)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;Z)V

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
