.class Lcom/android/gallery3d/app/PhotoPage$14;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->initBottomMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 2505
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const v1, 0x7f100180

    #calls: Lcom/android/gallery3d/app/PhotoPage;->menuItemResponse(I)Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$4000(Lcom/android/gallery3d/app/PhotoPage;I)Z

    .line 2509
    return-void
.end method
