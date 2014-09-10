.class public Landroid/widget/TextImage;
.super Landroid/view/View;
.source "TextImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextImage$1;
    }
.end annotation


# static fields
.field public static final ICON_POSITION_BOTTOM:I = 0x4

.field public static final ICON_POSITION_LEFT:I = 0x1

.field public static final ICON_POSITION_RIGHT:I = 0x3

.field public static final ICON_POSITION_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextImage"


# instance fields
.field private mAlign:Landroid/graphics/Paint$Align;

.field private mCharHeightToShow:I

.field private mCharWidthToShow:I

.field private mContext:Landroid/content/Context;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mGravity:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconPosition:I

.field private mIconWidth:I

.field private mPaintNormal:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mTextString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    .line 37
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 39
    const/high16 v14, 0x4170

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mTextSize:F

    .line 45
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconPosition:I

    .line 47
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 51
    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    .line 53
    const/16 v14, 0x11

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mGravity:I

    .line 55
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconWidth:I

    .line 57
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconHeight:I

    .line 59
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 61
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 63
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    .line 77
    .local v13, theme:Landroid/content/res/Resources$Theme;
    sget-object v14, Lcom/android/internal/R$styleable;->TextView:[I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v1, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 80
    .local v2, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .line 82
    .local v11, text:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 83
    .local v10, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 84
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 86
    .local v3, attr:I
    sparse-switch v3, :sswitch_data_0

    .line 83
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 88
    :sswitch_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 89
    goto :goto_1

    .line 91
    :sswitch_1
    const/4 v8, 0x3

    .line 92
    .local v8, ellipsize:I
    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 93
    packed-switch v8, :pswitch_data_0

    .line 104
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 95
    :pswitch_0
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 98
    :pswitch_1
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 101
    :pswitch_2
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 110
    .end local v8           #ellipsize:I
    :sswitch_2
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 113
    :sswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextImage;->mTextSize:F

    float-to-int v12, v14

    .line 115
    .local v12, textsize:I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Landroid/widget/TextImage;->complexToDimensionPixelSize(Landroid/content/res/TypedArray;II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mTextSize:F

    goto :goto_1

    .line 119
    .end local v12           #textsize:I
    :sswitch_4
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 120
    .local v5, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 124
    .end local v5           #drawableLeft:Landroid/graphics/drawable/Drawable;
    :sswitch_5
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 125
    .local v7, drawableTop:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 129
    .end local v7           #drawableTop:Landroid/graphics/drawable/Drawable;
    :sswitch_6
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 130
    .local v6, drawableRight:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 134
    .end local v6           #drawableRight:Landroid/graphics/drawable/Drawable;
    :sswitch_7
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 135
    .local v4, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 138
    .end local v4           #drawableBottom:Landroid/graphics/drawable/Drawable;
    :sswitch_8
    const/4 v14, -0x1

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TextImage;->setGravity(I)V

    goto :goto_1

    .line 142
    .end local v3           #attr:I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    if-eqz v11, :cond_1

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/TextImage;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/TextImage;->init(Landroid/content/Context;)V

    .line 149
    return-void

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_8
        0x12 -> :sswitch_0
        0x30 -> :sswitch_5
        0x31 -> :sswitch_7
        0x32 -> :sswitch_4
        0x33 -> :sswitch_6
    .end sparse-switch

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyDimension(IF)I
    .locals 10
    .parameter "unit"
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    .line 734
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 737
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 738
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 743
    .local v3, r:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 745
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/4 v4, 0x0

    .line 747
    .local v4, result:F
    packed-switch p1, :pswitch_data_0

    .line 774
    :goto_1
    const/high16 v7, 0x3f00

    add-float/2addr v7, v4

    float-to-int v5, v7

    .line 775
    .local v5, rtvalue:I
    if-eqz v5, :cond_2

    .line 787
    .end local v5           #rtvalue:I
    :goto_2
    return v5

    .line 740
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #result:F
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .restart local v3       #r:Landroid/content/res/Resources;
    goto :goto_0

    .line 749
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    .restart local v4       #result:F
    :pswitch_0
    move v4, p2

    .line 750
    goto :goto_1

    .line 752
    :pswitch_1
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, p2, v7

    .line 753
    goto :goto_1

    .line 755
    :pswitch_2
    iget v6, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 756
    .local v6, usedScaledDensity:F
    const/high16 v7, 0x3fc0

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v7, v8

    .line 758
    .local v1, maxScaledDensity:F
    cmpl-float v7, v6, v1

    if-lez v7, :cond_1

    .line 759
    move v6, v1

    .line 761
    :cond_1
    mul-float v4, p2, v6

    .line 762
    goto :goto_1

    .line 764
    .end local v1           #maxScaledDensity:F
    .end local v6           #usedScaledDensity:F
    :pswitch_3
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v7, p2

    const v8, 0x3c638e39

    mul-float v4, v7, v8

    .line 765
    goto :goto_1

    .line 767
    :pswitch_4
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float v4, p2, v7

    .line 768
    goto :goto_1

    .line 770
    :pswitch_5
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v7, p2

    const v8, 0x3d214285

    mul-float v4, v7, v8

    goto :goto_1

    .line 779
    .restart local v5       #rtvalue:I
    :cond_2
    cmpl-float v7, p2, v9

    if-nez v7, :cond_3

    .line 780
    const/4 v5, 0x0

    goto :goto_2

    .line 783
    :cond_3
    cmpl-float v7, p2, v9

    if-lez v7, :cond_4

    .line 784
    const/4 v5, 0x1

    goto :goto_2

    .line 787
    :cond_4
    const/4 v5, -0x1

    goto :goto_2

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private complexToDimensionPixelSize(Landroid/content/res/TypedArray;II)I
    .locals 4
    .parameter "a"
    .parameter "index"
    .parameter "defaultvalue"

    .prologue
    .line 712
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 714
    .local v0, textSizeInXml:Landroid/util/TypedValue;
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 723
    .end local p3
    :goto_0
    return p3

    .line 718
    .restart local p3
    :cond_0
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .line 720
    .local v2, userSetTextSizeValue:F
    iget v3, v0, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v1, v3, 0xf

    .line 723
    .local v1, userSetTextSizeType:I
    invoke-direct {p0, v1, v2}, Landroid/widget/TextImage;->applyDimension(IF)I

    move-result p3

    goto :goto_0
.end method

.method private getEllipsizePosition(I)I
    .locals 9
    .parameter "maxWidth"

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, ellipsizeStringWidth:I
    iget-object v4, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const-string v5, "..."

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 565
    iget-object v4, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 566
    if-lt v0, p1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v3

    .line 569
    :cond_1
    sub-int/2addr p1, v0

    .line 571
    sget-object v4, Landroid/widget/TextImage$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    iget-object v5, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 596
    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 598
    .local v2, length:I
    const/4 v1, 0x0

    .line 599
    .local v1, index:I
    :goto_1
    if-gt v1, v2, :cond_2

    .line 600
    iget-object v4, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v1, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 601
    iget-object v4, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, p1, :cond_6

    .line 607
    :cond_2
    if-eqz v1, :cond_0

    .line 611
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 614
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 574
    .end local v1           #index:I
    .end local v2           #length:I
    :pswitch_0
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 575
    .restart local v2       #length:I
    add-int/lit8 v1, v2, -0x1

    .line 576
    .restart local v1       #index:I
    :goto_2
    if-lez v1, :cond_3

    .line 577
    iget-object v3, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 578
    iget-object v3, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, p1, :cond_5

    .line 585
    :cond_3
    if-gez v1, :cond_4

    .line 586
    const/4 v1, 0x0

    .line 589
    :cond_4
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 592
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_0

    .line 582
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 604
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    iput-object p1, p0, Landroid/widget/TextImage;->mContext:Landroid/content/Context;

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 154
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 303
    .local v8, viewHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 305
    .local v9, viewWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 306
    .local v7, paddingleft:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 307
    .local v5, paddingRight:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 308
    .local v6, paddingTop:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 310
    .local v4, paddingBottom:I
    const/4 v0, 0x0

    .line 311
    .local v0, charStartX:I
    const/4 v1, 0x0

    .line 312
    .local v1, charStartY:I
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 314
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    .line 315
    iget v10, p0, Landroid/widget/TextImage;->mIconPosition:I

    packed-switch v10, :pswitch_data_0

    .line 454
    :goto_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_0

    .line 455
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 456
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 459
    :cond_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_1

    .line 460
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 461
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 464
    :cond_1
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 465
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 466
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 496
    :goto_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v10, :cond_2

    .line 497
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    if-eqz v10, :cond_2

    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    if-nez v10, :cond_4

    .line 512
    :cond_2
    :goto_2
    return-void

    .line 318
    :pswitch_0
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_1

    .line 329
    :goto_3
    :pswitch_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 331
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 345
    :goto_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 346
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->right:I

    .line 347
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 323
    :pswitch_3
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 326
    :pswitch_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v11, v9, v11

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 333
    :sswitch_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 334
    move v1, v6

    .line 335
    goto :goto_4

    .line 337
    :sswitch_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 338
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 339
    goto :goto_4

    .line 341
    :sswitch_2
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int v11, v8, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 342
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto :goto_4

    .line 350
    :pswitch_5
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_2

    .line 361
    :goto_5
    :pswitch_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 363
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_1

    .line 377
    :goto_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 379
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 380
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto/16 :goto_0

    .line 352
    :pswitch_7
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    add-int/2addr v11, v7

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 355
    :pswitch_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 358
    :pswitch_9
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    iget v12, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v12, v9, v12

    iget v13, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 365
    :sswitch_3
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 366
    move v1, v6

    .line 367
    goto :goto_6

    .line 369
    :sswitch_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 370
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 371
    goto :goto_6

    .line 373
    :sswitch_5
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int v11, v8, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 374
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto :goto_6

    .line 385
    :pswitch_a
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_3

    .line 402
    :goto_7
    :pswitch_b
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 404
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_2

    .line 415
    :goto_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 416
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    .line 417
    goto/16 :goto_0

    .line 387
    :pswitch_c
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    .line 388
    move v0, v7

    .line 389
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 392
    :pswitch_d
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 393
    sub-int v0, v9, v5

    .line 394
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 397
    :pswitch_e
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 398
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 399
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 406
    :sswitch_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 409
    :sswitch_7
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 412
    :sswitch_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v11, v8, v11

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 419
    :pswitch_f
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_4

    .line 436
    :goto_9
    :pswitch_10
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 438
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_3

    .line 449
    :goto_a
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 450
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    goto/16 :goto_0

    .line 421
    :pswitch_11
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    .line 422
    move v0, v7

    .line 423
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 426
    :pswitch_12
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 427
    sub-int v0, v9, v5

    .line 428
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 431
    :pswitch_13
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 432
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 433
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 440
    :sswitch_9
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 443
    :sswitch_a
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 446
    :sswitch_b
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    iget v12, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v12, v8, v12

    iget v13, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 468
    :cond_3
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_5

    .line 483
    :goto_b
    :pswitch_14
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_4

    goto/16 :goto_1

    .line 491
    :sswitch_c
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto/16 :goto_1

    .line 470
    :pswitch_15
    move v0, v7

    .line 471
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 474
    :pswitch_16
    sub-int v0, v9, v5

    .line 475
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 478
    :pswitch_17
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 479
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 485
    :sswitch_d
    move v1, v6

    .line 486
    goto/16 :goto_1

    .line 488
    :sswitch_e
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 489
    goto/16 :goto_1

    .line 501
    :cond_4
    const/high16 v2, -0x100

    .line 502
    .local v2, color:I
    iget-object v10, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 503
    iget-object v10, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 505
    :cond_5
    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v11, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 508
    int-to-float v10, v1

    iget-object v11, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v11

    float-to-int v3, v10

    .line 510
    .local v3, iYpos:I
    iget-object v10, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    int-to-float v11, v0

    int-to-float v12, v3

    iget-object v13, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_f
    .end packed-switch

    .line 318
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 350
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 363
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x30 -> :sswitch_3
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 385
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 404
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_8
        0x30 -> :sswitch_6
        0x50 -> :sswitch_7
    .end sparse-switch

    .line 419
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 438
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch

    .line 468
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 483
    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_c
        0x30 -> :sswitch_d
        0x50 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 516
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 517
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 518
    .local v4, viewWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 519
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 521
    .local v2, paddingRight:I
    sub-int v5, v4, v1

    sub-int v3, v5, v2

    .line 523
    .local v3, usefulWidth:I
    iget-object v5, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 524
    const/4 v5, 0x1

    iget v6, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x3

    iget v6, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-ne v5, v6, :cond_1

    .line 526
    :cond_0
    iget v5, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v3, v5

    .line 530
    :cond_1
    if-gtz v3, :cond_2

    .line 531
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 559
    :goto_0
    return-void

    .line 535
    :cond_2
    iput v3, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 536
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 538
    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v5, :cond_5

    .line 539
    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 540
    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 541
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 543
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 545
    .local v0, needwidth:I
    if-le v0, v3, :cond_4

    .line 546
    invoke-direct {p0, v3}, Landroid/widget/TextImage;->getEllipsizePosition(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 547
    iget-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 550
    :cond_3
    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 551
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0

    .line 553
    :cond_4
    iput v0, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0

    .line 556
    .end local v0           #needwidth:I
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 557
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 621
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 623
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 624
    .local v14, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 625
    .local v5, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 626
    .local v15, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 628
    .local v6, heightSize:I
    const/4 v13, 0x0

    .line 629
    .local v13, width:I
    const/4 v4, 0x0

    .line 631
    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->setEmpty()V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 634
    .local v12, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 637
    .end local v12           #text:Ljava/lang/String;
    :cond_0
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 638
    move v13, v15

    .line 667
    :cond_1
    :goto_0
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 669
    move v4, v6

    .line 699
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 700
    return-void

    .line 639
    :cond_3
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    if-nez v14, :cond_1

    .line 641
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    add-int v16, v17, v18

    .line 642
    .local v16, widthneed:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconPosition:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 654
    :goto_2
    if-nez v14, :cond_6

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 656
    move/from16 v13, v16

    goto :goto_0

    .line 645
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconWidth:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 646
    goto :goto_2

    .line 649
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconWidth:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    add-int v9, v17, v18

    .line 650
    .local v9, iconwidthneed:I
    move/from16 v0, v16

    if-le v9, v0, :cond_5

    move/from16 v16, v9

    :cond_5
    goto :goto_2

    .line 658
    .end local v9           #iconwidthneed:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v11

    .line 659
    .local v11, minWidth:I
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 660
    move v13, v15

    goto :goto_0

    .line 662
    :cond_7
    move/from16 v0, v16

    if-le v0, v11, :cond_8

    move/from16 v13, v16

    :goto_3
    goto :goto_0

    :cond_8
    move v13, v11

    goto :goto_3

    .line 670
    .end local v11           #minWidth:I
    .end local v16           #widthneed:I
    :cond_9
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-eq v5, v0, :cond_a

    if-nez v5, :cond_2

    .line 672
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    add-int v7, v17, v18

    .line 674
    .local v7, heightneed:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconPosition:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 686
    :goto_4
    if-nez v5, :cond_c

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 688
    move v4, v7

    goto/16 :goto_1

    .line 677
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconHeight:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    add-int v8, v17, v18

    .line 678
    .local v8, iconheightneed:I
    if-le v8, v7, :cond_b

    move v7, v8

    .line 679
    :cond_b
    goto :goto_4

    .line 682
    .end local v8           #iconheightneed:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconHeight:I

    move/from16 v17, v0

    add-int v7, v7, v17

    goto :goto_4

    .line 690
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v10

    .line 691
    .local v10, minHeight:I
    if-le v7, v6, :cond_d

    .line 692
    move v4, v6

    goto/16 :goto_1

    .line 694
    :cond_d
    if-le v7, v10, :cond_e

    move v4, v7

    :goto_5
    goto/16 :goto_1

    :cond_e
    move v4, v10

    goto :goto_5

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 674
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 290
    iget-object v0, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 291
    iput-object p1, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 296
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 281
    iget v0, p0, Landroid/widget/TextImage;->mGravity:I

    if-ne v0, p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iput p1, p0, Landroid/widget/TextImage;->mGravity:I

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "icon"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-ne v0, p2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 264
    :cond_2
    iput-object p1, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 267
    iput v1, p0, Landroid/widget/TextImage;->mIconWidth:I

    .line 268
    iput v1, p0, Landroid/widget/TextImage;->mIconHeight:I

    .line 274
    :goto_1
    iput p2, p0, Landroid/widget/TextImage;->mIconPosition:I

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/TextImage;->mIconWidth:I

    .line 271
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/TextImage;->mIconHeight:I

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 157
    iput-object p1, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    .line 158
    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 159
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    .line 163
    :cond_0
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 167
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 175
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 235
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    .line 236
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iput-object p1, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    .line 245
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .parameter "size"

    .prologue
    .line 182
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iput p1, p0, Landroid/widget/TextImage;->mTextSize:F

    .line 187
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setTextSize(IF)V
    .locals 3
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Landroid/widget/TextImage;->applyDimension(IF)I

    move-result v1

    int-to-float v0, v1

    .line 203
    .local v0, pxSize:F
    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput v0, p0, Landroid/widget/TextImage;->mTextSize:F

    .line 208
    iget-object v1, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setTextSizeResource(I)V
    .locals 5
    .parameter "resid"

    .prologue
    .line 222
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 223
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 224
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    .line 225
    .local v1, textSize:F
    iget v3, v0, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v2, v3, 0xf

    .line 227
    .local v2, textSizeUnit:I
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextImage;->setTextSize(IF)V

    .line 228
    return-void
.end method
