.class Lcom/android/gallery3d/app/AlbumSetPage$8;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->mvOrCpToNewFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;

.field final synthetic val$temp:Ljava/lang/String;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$temp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const v6, 0x7f0e003e

    .line 1101
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1102
    .local v1, input:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1103
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1111
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$temp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, targetFolder:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1113
    .local v0, data1:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "copy-picture"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1114
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "move-picture"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1115
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pic-path-list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1116
    const-string v3, "pic-path-list"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1117
    new-instance v3, Lcom/android/gallery3d/ui/MoveCopyExecutor;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, v0, v2}, Lcom/android/gallery3d/ui/MoveCopyExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/MoveCopyExecutor;->startMvOrCopyTask()V

    .line 1118
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->dismissNewAlbumDlg()V
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1700(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1119
    .end local v0           #data1:Landroid/os/Bundle;
    .end local v2           #targetFolder:Ljava/lang/String;
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->checkFileNameContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1105
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e003f

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1106
    const-string v3, "AlbumSetPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid folder name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1108
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
