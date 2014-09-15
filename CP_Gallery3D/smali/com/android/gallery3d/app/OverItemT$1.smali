.class Lcom/android/gallery3d/app/OverItemT$1;
.super Ljava/lang/Object;
.source "PhotoDisplayMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/OverItemT;->displayPhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/OverItemT;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/OverItemT;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/gallery3d/app/OverItemT$1;->this$0:Lcom/android/gallery3d/app/OverItemT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/OverItemT$1;->this$0:Lcom/android/gallery3d/app/OverItemT;

    iget-object v1, v1, Lcom/android/gallery3d/app/OverItemT;->mediaPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v1, "gpspic_path"

    iget-object v2, p0, Lcom/android/gallery3d/app/OverItemT$1;->this$0:Lcom/android/gallery3d/app/OverItemT;

    iget-object v2, v2, Lcom/android/gallery3d/app/OverItemT;->mediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "gpspic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/android/gallery3d/app/OverItemT$1;->this$0:Lcom/android/gallery3d/app/OverItemT;

    #getter for: Lcom/android/gallery3d/app/OverItemT;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/app/OverItemT;->access$000(Lcom/android/gallery3d/app/OverItemT;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method
