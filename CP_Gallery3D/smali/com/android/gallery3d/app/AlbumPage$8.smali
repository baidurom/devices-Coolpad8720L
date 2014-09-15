.class Lcom/android/gallery3d/app/AlbumPage$8;
.super Landroid/content/BroadcastReceiver;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$8;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$8;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$2300(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 989
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 990
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 991
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 992
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$8;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$2300(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 994
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
