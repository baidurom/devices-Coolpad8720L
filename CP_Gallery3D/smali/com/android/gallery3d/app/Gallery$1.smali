.class Lcom/android/gallery3d/app/Gallery$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/Gallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/Gallery;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/gallery3d/app/Gallery$1;->this$0:Lcom/android/gallery3d/app/Gallery;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery$1;->this$0:Lcom/android/gallery3d/app/Gallery;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/Gallery;->pickSefeBox()V

    .line 159
    :goto_0
    return-void

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery$1;->this$0:Lcom/android/gallery3d/app/Gallery;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/Gallery;->pickSafeAlbum()V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
