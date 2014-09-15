.class public Lcom/android/camera/ui/TrackPickerContainer;
.super Landroid/widget/FrameLayout;
.source "TrackPickerContainer.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;
    }
.end annotation


# instance fields
.field mBtnLayout:Landroid/widget/LinearLayout;

.field mCancelBtn:Lcom/android/camera/ShutterButton;

.field mContext:Landroid/content/Context;

.field private mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

.field mRecordBtn:Lcom/android/camera/ShutterButton;

.field mSaveBtn:Lcom/android/camera/ShutterButton;

.field mStopBtn:Lcom/android/camera/ShutterButton;

.field mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TrackPickerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TrackPickerContainer;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/ui/TrackPickerContainer;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private parse(Ljava/lang/String;)V
    .locals 14
    .parameter "trackInfo"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, info:[Ljava/lang/String;
    array-length v7, v2

    new-array v0, v7, [I

    .line 122
    .local v0, data:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v2

    if-ge v1, v7, :cond_2

    .line 123
    aget-object v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_2
    aget v3, v0, v12

    .line 126
    .local v3, numRect:I
    if-eqz v3, :cond_0

    .line 127
    new-array v6, v3, [Landroid/graphics/Rect;

    .line 128
    .local v6, swapRects:[Landroid/graphics/Rect;
    new-array v4, v13, [I

    .line 129
    .local v4, rectData:[I
    const/4 v5, 0x1

    .line 130
    .local v5, step:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    .line 131
    invoke-static {v0, v5, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    new-instance v7, Landroid/graphics/Rect;

    aget v8, v4, v12

    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x2

    aget v10, v4, v10

    const/4 v11, 0x3

    aget v11, v4, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v7, v6, v1

    .line 134
    add-int/lit8 v5, v5, 0x4

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    :cond_3
    iget-object v7, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/TrackPickerView;->setTrackRect([Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 78
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TrackPickerView;

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    .line 79
    const v0, 0x7f10014a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mBtnLayout:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f100149

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mSaveBtn:Lcom/android/camera/ShutterButton;

    .line 81
    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mStopBtn:Lcom/android/camera/ShutterButton;

    .line 82
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mCancelBtn:Lcom/android/camera/ShutterButton;

    .line 83
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mRecordBtn:Lcom/android/camera/ShutterButton;

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mSaveBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mStopBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mCancelBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mStopBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mStopBtn:Lcom/android/camera/ShutterButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mStopBtn:Lcom/android/camera/ShutterButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mRecordBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mRecordBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 4
    .parameter "b"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v3}, Lcom/android/camera/ui/TrackPickerView;->getJpegData()[B

    move-result-object v0

    .line 161
    .local v0, data:[B
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v3}, Lcom/android/camera/ui/TrackPickerView;->getJpegWidth()I

    move-result v2

    .line 162
    .local v2, width:I
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v3}, Lcom/android/camera/ui/TrackPickerView;->getJpegHeight()I

    move-result v1

    .line 163
    .local v1, height:I
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;->onSaveImage([BII)V

    goto :goto_0

    .line 167
    .end local v0           #data:[B
    .end local v1           #height:I
    .end local v2           #width:I
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    invoke-interface {v3}, Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;->onStopClick()V

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    invoke-interface {v3}, Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;->onCancelClick()V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f100149
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 154
    return-void
.end method

.method public previewImage()V
    .locals 4

    .prologue
    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v3}, Lcom/android/camera/ui/TrackPickerView;->getJpegData()[B

    move-result-object v0

    .line 145
    .local v0, data:[B
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v3}, Lcom/android/camera/ui/TrackPickerView;->getJpegWidth()I

    move-result v2

    .line 146
    .local v2, width:I
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v3}, Lcom/android/camera/ui/TrackPickerView;->getJpegHeight()I

    move-result v1

    .line 147
    .local v1, height:I
    iget-object v3, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;->onPreviewImage([BII)V

    .line 149
    .end local v0           #data:[B
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_0
    return-void
.end method

.method public setImageData([III)V
    .locals 3
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/TrackPickerView;->setTrackBitmap([III)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mStopBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mRecordBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mSaveBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mCancelBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "rotateOrientation"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mSaveBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mCancelBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mStopBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mRecordBtn:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 117
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/TrackPickerContainer;->mTrackPickerView:Lcom/android/camera/ui/TrackPickerView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TrackPickerView;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 108
    return-void
.end method

.method public setTrackInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "trackInfo"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TrackPickerContainer;->parse(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setTrackPickerListener(Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/ui/TrackPickerContainer;->mListener:Lcom/android/camera/ui/TrackPickerContainer$TrackPickerListener;

    .line 55
    return-void
.end method
