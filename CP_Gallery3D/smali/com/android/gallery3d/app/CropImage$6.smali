.class Lcom/android/gallery3d/app/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$6;->this$0:Lcom/android/gallery3d/app/CropImage;

    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$6;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$6;->val$text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    return-void
.end method
