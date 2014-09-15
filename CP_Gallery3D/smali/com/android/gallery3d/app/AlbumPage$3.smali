.class Lcom/android/gallery3d/app/AlbumPage$3;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 472
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 482
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 474
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$1000(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 484
    :goto_0
    return-void

    .line 478
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 479
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->handleIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1100(Lcom/android/gallery3d/app/AlbumPage;Landroid/content/Intent;)V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
