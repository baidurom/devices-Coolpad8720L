.class Lcom/android/camera/PhotoModule$17;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 7535
    iput-object p1, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 8
    .parameter "button"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7543
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIndicatorBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7544
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 7545
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow()Z

    .line 7546
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIndicatorBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7595
    :cond_0
    :goto_0
    return-void

    .line 7552
    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 7553
    .local v0, globalPos:[I
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 7554
    .local v4, width:I
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 7557
    .local v1, height:I
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIndicatorBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7559
    const/4 v2, 0x0

    .local v2, left:I
    const/4 v3, 0x0

    .line 7571
    .local v3, top:I
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mOrientation:I
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 7589
    :goto_1
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 7590
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 7591
    iget-object v5, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSettingGridView:Lcom/android/camera/ui/BasicSettingGridView;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$11700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/BasicSettingGridView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/BasicSettingGridView;->showPopupWindow()V

    goto :goto_0

    .line 7573
    :sswitch_0
    aget v5, v0, v6

    sub-int/2addr v5, v4

    add-int/lit8 v2, v5, 0x32

    .line 7574
    aget v5, v0, v7

    sub-int v3, v5, v1

    .line 7575
    goto :goto_1

    .line 7577
    :sswitch_1
    aget v5, v0, v6

    add-int/lit8 v2, v5, 0x14

    .line 7578
    aget v5, v0, v7

    sub-int v3, v5, v1

    .line 7579
    goto :goto_0

    .line 7581
    :sswitch_2
    aget v2, v0, v6

    .line 7582
    aget v3, v0, v7

    .line 7583
    goto :goto_0

    .line 7585
    :sswitch_3
    aget v5, v0, v6

    sub-int/2addr v5, v4

    add-int/lit8 v2, v5, -0x14

    .line 7586
    aget v3, v0, v7

    goto :goto_1

    .line 7571
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 7539
    return-void
.end method
