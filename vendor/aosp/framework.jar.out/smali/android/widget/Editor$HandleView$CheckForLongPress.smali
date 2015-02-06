.class final Landroid/widget/Editor$HandleView$CheckForLongPress;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .parameter

    .prologue
    .line 3636
    iput-object p1, p0, Landroid/widget/Editor$HandleView$CheckForLongPress;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$HandleView;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3636
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView$CheckForLongPress;-><init>(Landroid/widget/Editor$HandleView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3638
    iget-object v0, p0, Landroid/widget/Editor$HandleView$CheckForLongPress;->this$1:Landroid/widget/Editor$HandleView;

    #getter for: Landroid/widget/Editor$HandleView;->mTouchMode:I
    invoke-static {v0}, Landroid/widget/Editor$HandleView;->access$2700(Landroid/widget/Editor$HandleView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$CheckForLongPress;->this$1:Landroid/widget/Editor$HandleView;

    #getter for: Landroid/widget/Editor$HandleView;->mTouchMode:I
    invoke-static {v0}, Landroid/widget/Editor$HandleView;->access$2700(Landroid/widget/Editor$HandleView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3639
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$CheckForLongPress;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x1

    #setter for: Landroid/widget/Editor$HandleView;->mTouchMode:I
    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->access$2702(Landroid/widget/Editor$HandleView;I)I

    .line 3641
    :cond_1
    return-void
.end method
