.class Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;
.super Ljava/lang/Object;
.source "BasicSettingGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BasicSettingGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationArguments"
.end annotation


# instance fields
.field public mGridViewHeight:I

.field public mGridViewWidth:I

.field public mItemHorizontalSpace:I

.field public mItemPadding:I

.field public mItemVerticalSpace:I

.field public mItemWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/BasicSettingGridView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/BasicSettingGridView;Z)V
    .locals 2
    .parameter
    .parameter "isLandScape"

    .prologue
    const/4 v0, 0x0

    .line 696
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewHeight:I

    .line 684
    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewWidth:I

    .line 685
    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemWidth:I

    .line 686
    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemPadding:I

    .line 687
    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemVerticalSpace:I

    .line 688
    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemHorizontalSpace:I

    .line 697
    if-eqz p2, :cond_0

    .line 698
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewHeight:I

    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewWidth:I

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemWidth:I

    .line 707
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemPadding:I

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemVerticalSpace:I

    .line 713
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemHorizontalSpace:I

    .line 736
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewHeight:I

    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mGridViewWidth:I

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemWidth:I

    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemPadding:I

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemVerticalSpace:I

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$OrientationArguments;->mItemHorizontalSpace:I

    goto :goto_0
.end method
