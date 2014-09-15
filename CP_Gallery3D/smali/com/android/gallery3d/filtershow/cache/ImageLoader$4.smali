.class Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field final synthetic val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->completeSaveImage(Landroid/net/Uri;)V

    .line 444
    if-eqz p1, :cond_0

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 450
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
