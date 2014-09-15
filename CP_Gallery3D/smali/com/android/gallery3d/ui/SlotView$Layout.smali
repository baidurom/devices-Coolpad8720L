.class public Lcom/android/gallery3d/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mRows:I

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 580
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    .line 602
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 580
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 580
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 580
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 580
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 580
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 8
    .parameter "majorLength"
    .parameter "minorLength"
    .parameter "majorUnitSize"
    .parameter "minorUnitSize"
    .parameter "padding"

    .prologue
    const/4 v7, 0x0

    .line 742
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 743
    .local v2, unitCount:I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 744
    :cond_0
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    .line 747
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 748
    .local v0, availableUnits:I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 751
    .local v3, usedMinorLength:I
    aput v7, p5, v7

    .line 754
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, v4, v5

    .line 756
    .local v1, count:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v4}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 757
    add-int/lit8 v1, v1, 0x1

    .line 758
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mRows:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 759
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x2

    .line 763
    :cond_1
    mul-int v4, v1, p3

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    .line 768
    const/4 v4, 0x1

    aput v7, p5, v4

    .line 769
    return-void
.end method

.method private initLayoutParameters(Z)V
    .locals 8
    .parameter "add"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 773
    if-eqz p1, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getAlbumSets()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->access$902(Lcom/android/gallery3d/ui/SlotView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 777
    iput v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    .line 778
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 779
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    .line 792
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 796
    :cond_2
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 802
    .local v5, padding:[I
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters(IIII[I)V

    .line 803
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 804
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 806
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    .line 807
    return-void

    .line 786
    .end local v5           #padding:[I
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mRows:I

    .line 787
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    .line 788
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mRows:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mRows:I

    div-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 789
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightAdditional:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    goto :goto_0

    .line 786
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    goto :goto_1
.end method

.method private setVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 842
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    if-ge p1, p2, :cond_2

    .line 844
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    .line 845
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    .line 849
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 847
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 816
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 826
    .local v2, position:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v5, v2, v5

    add-int/lit8 v4, v5, -0x2

    .line 827
    .local v4, startRow:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 828
    .local v3, start:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 830
    .local v1, endRow:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 831
    .local v0, end:I
    invoke-direct {p0, v3, v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->setVisibleRange(II)V

    .line 833
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2
    .parameter "animTime"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public computerSlotIndexByPosition(FFI)I
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "moveIndex"

    .prologue
    .line 664
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 665
    .local v2, absoluteX:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 667
    .local v3, absoluteY:I
    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v13

    sub-int/2addr v2, v13

    .line 668
    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v13

    sub-int/2addr v3, v13

    .line 670
    if-ltz v2, :cond_0

    if-gez v3, :cond_2

    .line 671
    :cond_0
    const/16 p3, -0x1

    .line 710
    .end local p3
    :cond_1
    :goto_0
    return p3

    .line 674
    .restart local p3
    :cond_2
    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v13, v14

    div-int v6, v2, v13

    .line 675
    .local v6, columnIdx:I
    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v13, v14

    div-int v12, v3, v13

    .line 677
    .local v12, rowIdx:I
    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    mul-int/lit8 v13, v13, 0x3

    iget v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    if-ge v2, v13, :cond_3

    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    mul-int/lit8 v13, v13, 0x2

    if-ge v3, v13, :cond_3

    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v13}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 680
    const/16 p3, 0x0

    goto :goto_0

    .line 683
    :cond_3
    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v13, v12

    add-int v11, v13, v6

    .line 686
    .local v11, index:I
    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v13}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 687
    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    if-le v13, v14, :cond_5

    if-nez v12, :cond_5

    .line 688
    add-int/lit8 v11, v11, -0x2

    .line 694
    :cond_4
    :goto_1
    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v13}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_6

    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    add-int/lit8 v13, v13, -0x1

    if-lt v11, v13, :cond_6

    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/gallery3d/ui/SlotView;->access$900(Lcom/android/gallery3d/ui/SlotView;)Ljava/util/ArrayList;

    move-result-object v13

    iget v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v13}, Lcom/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v13

    if-nez v13, :cond_6

    .line 696
    const/16 p3, 0x0

    goto :goto_0

    .line 690
    :cond_5
    add-int/lit8 v11, v11, -0x5

    goto :goto_1

    .line 699
    :cond_6
    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-lt v11, v13, :cond_7

    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    add-int/lit8 v11, v13, -0x1

    .line 700
    :cond_7
    move/from16 v0, p3

    if-eq v11, v0, :cond_8

    .line 701
    iget-object v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v13}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v13

    iget-object v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/gallery3d/ui/SlotView;->access$1000(Lcom/android/gallery3d/ui/SlotView;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v11, v14}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 702
    .local v1, ToRect:Landroid/graphics/Rect;
    iget v13, v1, Landroid/graphics/Rect;->right:I

    iget v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v4, v13

    .line 703
    .local v4, centerX:F
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    iget v14, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v5, v13

    .line 704
    .local v5, centerY:F
    sub-float v9, v4, p1

    .line 705
    .local v9, dx:F
    sub-float v10, v5, p2

    .line 706
    .local v10, dy:F
    mul-float v13, v9, v9

    mul-float v14, v10, v10

    add-float v8, v13, v14

    .line 707
    .local v8, dd:F
    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 708
    .local v7, d:F
    iget v13, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpl-float v13, v7, v13

    if-gtz v13, :cond_1

    .end local v1           #ToRect:Landroid/graphics/Rect;
    .end local v4           #centerX:F
    .end local v5           #centerY:F
    .end local v7           #d:F
    .end local v8           #dd:F
    .end local v9           #dx:F
    .end local v10           #dy:F
    :cond_8
    move/from16 p3, v11

    .line 710
    goto/16 :goto_0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 916
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    sub-int v0, v1, v2

    .line 917
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #limit:I
    :cond_0
    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 864
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    .line 865
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    add-int v1, v6, v7

    .line 867
    .local v1, absoluteY:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v0, v6

    .line 868
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v1, v6

    .line 870
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return v5

    .line 874
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    .line 875
    .local v2, columnIdx:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    .line 877
    .local v4, rowIdx:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    mul-int/lit8 v6, v6, 0x3

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-ge v0, v6, :cond_2

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v6}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 880
    const/4 v5, 0x0

    goto :goto_0

    .line 883
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    if-ge v2, v6, :cond_0

    .line 891
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    if-ge v6, v7, :cond_0

    .line 895
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    if-ge v6, v7, :cond_0

    .line 899
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    .line 902
    .local v3, index:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v6}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 903
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    if-le v6, v7, :cond_6

    if-nez v4, :cond_6

    .line 904
    add-int/lit8 v3, v3, -0x2

    .line 909
    :cond_3
    :goto_1
    if-gez v3, :cond_4

    const/4 v3, -0x1

    .line 910
    :cond_4
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-lt v3, v6, :cond_5

    move v3, v5

    .end local v3           #index:I
    :cond_5
    move v5, v3

    goto :goto_0

    .line 906
    .restart local v3       #index:I
    :cond_6
    add-int/lit8 v3, v3, -0x5

    goto :goto_1
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "index"
    .parameter "rect"

    .prologue
    .line 625
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 626
    .local v4, slotWidth:I
    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    .line 627
    .local v3, slotHeight:I
    move v1, p1

    .line 628
    .local v1, location:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsHomeAlbums:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 629
    if-nez p1, :cond_1

    .line 630
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    mul-int/lit8 v7, v7, 0x3

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    .line 631
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int v3, v7, v8

    .line 644
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v2, v1, v7

    .line 645
    .local v2, row:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v7, v2

    sub-int v0, v1, v7

    .line 648
    .local v0, col:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v8, v4

    mul-int/2addr v8, v0

    add-int v5, v7, v8

    .line 649
    .local v5, x:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v8, v3

    mul-int/2addr v8, v2

    add-int v6, v7, v8

    .line 650
    .local v6, y:I
    add-int v7, v5, v4

    add-int v8, v6, v3

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 651
    return-object p2

    .line 632
    .end local v0           #col:I
    .end local v2           #row:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_1
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mRows:I

    add-int/lit8 v7, v7, -0x2

    if-ge p1, v7, :cond_2

    .line 633
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 635
    :cond_2
    add-int/lit8 v1, v1, 0x5

    goto :goto_0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 836
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 838
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 810
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    .line 811
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    .line 812
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters(Z)V

    .line 813
    return-void
.end method

.method public setSlotCount(IZ)Z
    .locals 5
    .parameter "slotCount"
    .parameter "add"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 609
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v2

    .line 610
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-eqz v4, :cond_2

    .line 611
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 612
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 614
    :cond_2
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    .line 615
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 616
    .local v0, hPadding:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 617
    .local v1, vPadding:I
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters(Z)V

    .line 618
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-eq v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public setSlotRect(IFFLandroid/graphics/Rect;)V
    .locals 5
    .parameter "index"
    .parameter "dx"
    .parameter "dy"
    .parameter "rect"

    .prologue
    .line 658
    iget v2, p4, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int v0, v2

    .line 659
    .local v0, x:I
    iget v2, p4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    float-to-int v1, v2

    .line 660
    .local v1, y:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mMoveRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 661
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 606
    return-void
.end method
