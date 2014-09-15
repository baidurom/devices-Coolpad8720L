.class Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "DirectionsSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/DirectionsSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/DirectionsSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/DirectionsSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/DirectionsSlidingDrawer;Lcom/android/camera/ui/DirectionsSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1131
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;-><init>(Lcom/android/camera/ui/DirectionsSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    #getter for: Lcom/android/camera/ui/DirectionsSlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->access$200(Lcom/android/camera/ui/DirectionsSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    #getter for: Lcom/android/camera/ui/DirectionsSlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->access$300(Lcom/android/camera/ui/DirectionsSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DirectionsSlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/ui/DirectionsSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/ui/DirectionsSlidingDrawer;->toggle()V

    goto :goto_0
.end method
