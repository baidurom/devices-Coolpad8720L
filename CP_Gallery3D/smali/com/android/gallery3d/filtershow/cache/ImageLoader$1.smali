.class Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadBitmap(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    #getter for: Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->access$000(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->cannotLoadImage()V

    .line 117
    return-void
.end method
