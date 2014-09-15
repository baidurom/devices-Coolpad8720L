.class public Lcom/android/camera/ui/StrangerPickClearContainer;
.super Landroid/widget/FrameLayout;
.source "StrangerPickClearContainer.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/StrangerPickClearView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;
    }
.end annotation


# instance fields
.field mCancelButton:Lcom/android/camera/ShutterButton;

.field mContext:Landroid/content/Context;

.field private mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

.field mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

.field mSaveButton:Lcom/android/camera/ShutterButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StrangerPickClearContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    invoke-virtual {v0}, Lcom/android/camera/ui/StrangerPickClearView;->clear()V

    .line 110
    iput-object v1, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    if-eqz v0, :cond_1

    .line 113
    iput-object v1, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    .line 115
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 51
    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StrangerPickClearView;

    iput-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    .line 52
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    .line 53
    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/StrangerPickClearView;->setListener(Lcom/android/camera/ui/StrangerPickClearView$Listener;)V

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 118
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    invoke-interface {v0}, Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;->onCancelClick()V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPositionTouch(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;->onPositionTouch(FF)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    invoke-interface {v0}, Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;->onSaveClick()V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    invoke-interface {v0}, Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;->onCancelClick()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7f1000f6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 73
    return-void
.end method

.method public previewImage()V
    .locals 4

    .prologue
    .line 98
    iget-object v3, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    invoke-virtual {v3}, Lcom/android/camera/ui/StrangerPickClearView;->getJpegData()[B

    move-result-object v0

    .line 100
    .local v0, data:[B
    iget-object v3, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    invoke-virtual {v3}, Lcom/android/camera/ui/StrangerPickClearView;->getJpegWidth()I

    move-result v2

    .line 101
    .local v2, width:I
    iget-object v3, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    invoke-virtual {v3}, Lcom/android/camera/ui/StrangerPickClearView;->getJpegHeight()I

    move-result v1

    .line 102
    .local v1, height:I
    iget-object v3, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;->onPreviewImage([BII)V

    .line 106
    .end local v0           #data:[B
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_0
    return-void
.end method

.method public setImageData([III)V
    .locals 2
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/StrangerPickClearView;->setPickClearBitmap([III)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "rotateOrientation"

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mSaveButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mCancelButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 61
    return-void
.end method

.method public setPickClearListener(Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mListener:Lcom/android/camera/ui/StrangerPickClearContainer$PickClearListener;

    .line 40
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/StrangerPickClearContainer;->mPickClearView:Lcom/android/camera/ui/StrangerPickClearView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StrangerPickClearView;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 69
    return-void
.end method
