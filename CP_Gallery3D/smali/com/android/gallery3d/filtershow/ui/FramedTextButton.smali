.class public Lcom/android/gallery3d/filtershow/ui/FramedTextButton;
.super Landroid/widget/ImageButton;
.source "FramedTextButton.java"


# static fields
.field private static gPaint:Landroid/graphics/Paint;

.field private static mTextPadding:I

.field private static mTextSize:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextSize:I

    .line 33
    const/16 v0, 0x14

    sput v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/R$styleable;->ImageButtonTitle:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 42
    sput p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    .line 43
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    sput p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextSize:I

    .line 39
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x4000

    const/16 v10, 0xff

    .line 87
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 88
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    sget v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    int-to-float v1, v0

    sget v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sget v3, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sget v4, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 94
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 95
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 97
    .local v7, textWidth:F
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v6, bounds:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v7

    div-float/2addr v0, v11

    float-to-int v8, v0

    .line 100
    .local v8, x:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 102
    .local v9, y:I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    int-to-float v1, v8

    int-to-float v2, v9

    sget-object v3, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #textWidth:F
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 48
    return-void
.end method

.method public setTextFrom(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0e002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x7f100172
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
