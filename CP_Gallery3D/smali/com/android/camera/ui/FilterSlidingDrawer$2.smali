.class Lcom/android/camera/ui/FilterSlidingDrawer$2;
.super Ljava/lang/Object;
.source "FilterSlidingDrawer.java"

# interfaces
.implements Lcom/android/camera/ui/DirectionsSlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FilterSlidingDrawer;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilterSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FilterSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/ui/FilterSlidingDrawer$2;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$2;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->isLandScape:Z
    invoke-static {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$000(Lcom/android/camera/ui/FilterSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$2;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mHandle:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$100(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$2;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mListener:Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;
    invoke-static {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$200(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$2;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mListener:Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;
    invoke-static {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$200(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilterSlidingDrawer$2;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mDrawer:Lcom/android/camera/ui/DirectionsSlidingDrawer;
    invoke-static {v1}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$300(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/DirectionsSlidingDrawer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/FilterSlidingDrawer$DrawerOpenListener;->isDrawerShown(ZLandroid/view/View;)V

    .line 156
    :cond_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FilterSlidingDrawer$2;->this$0:Lcom/android/camera/ui/FilterSlidingDrawer;

    #getter for: Lcom/android/camera/ui/FilterSlidingDrawer;->mHandle:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/ui/FilterSlidingDrawer;->access$100(Lcom/android/camera/ui/FilterSlidingDrawer;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_0
.end method
