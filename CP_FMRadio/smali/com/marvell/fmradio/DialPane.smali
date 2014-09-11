.class public Lcom/marvell/fmradio/DialPane;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DialPane"

.field private static dL:I


# instance fields
.field private dF:F

.field private dG:F

.field private dH:I

.field private dI:Lcom/marvell/fmradio/av;

.field private dJ:I

.field private dK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x28

    sput v0, Lcom/marvell/fmradio/DialPane;->dL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lcom/marvell/fmradio/DialPane;->dF:F

    .line 40
    iput v0, p0, Lcom/marvell/fmradio/DialPane;->dG:F

    .line 42
    iput v1, p0, Lcom/marvell/fmradio/DialPane;->dH:I

    .line 46
    iput v1, p0, Lcom/marvell/fmradio/DialPane;->dJ:I

    .line 62
    const/16 v0, 0x100

    iput v0, p0, Lcom/marvell/fmradio/DialPane;->dH:I

    .line 63
    return-void
.end method

.method private ag()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/marvell/fmradio/DialPane;->dI:Lcom/marvell/fmradio/av;

    if-eqz v0, :cond_3

    .line 99
    iget v0, p0, Lcom/marvell/fmradio/DialPane;->dG:F

    iget v1, p0, Lcom/marvell/fmradio/DialPane;->dF:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    .line 100
    const-string v0, "DialPane"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_Radio: onDraw xTran :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  getLeft() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    sget v1, Lcom/marvell/fmradio/DialPane;->dL:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    sget v1, Lcom/marvell/fmradio/DialPane;->dL:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    .line 103
    :cond_0
    iget v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    sget v1, Lcom/marvell/fmradio/DialPane;->dL:I

    if-le v0, v1, :cond_1

    .line 104
    sget v0, Lcom/marvell/fmradio/DialPane;->dL:I

    iput v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    .line 105
    const-string v0, "DialPane"

    const-string v1, "xTran > mMaxMove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iget v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    sget v1, Lcom/marvell/fmradio/DialPane;->dL:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    .line 108
    sget v0, Lcom/marvell/fmradio/DialPane;->dL:I

    neg-int v0, v0

    iput v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    .line 109
    const-string v0, "DialPane"

    const-string v1, "xTran < -mMaxMove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    iget v0, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/DialPane;->setCurrentValue(I)V

    .line 115
    iget-object v0, p0, Lcom/marvell/fmradio/DialPane;->dI:Lcom/marvell/fmradio/av;

    iget v1, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    invoke-interface {v0, v1}, Lcom/marvell/fmradio/av;->onProgressChanged(I)V

    .line 118
    :cond_3
    return-void
.end method

.method private setCurrentValue(I)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/marvell/fmradio/DialPane;->dJ:I

    .line 83
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    return-void
.end method

.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    return-void
.end method

.method public getCurrentValue()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/marvell/fmradio/DialPane;->dJ:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 191
    const-string v2, "DialPane"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_Radio: onDraw xTran=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v2, "DialPane"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_Radio: onDraw xLocation=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/marvell/fmradio/DialPane;->dH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v2, "DialPane"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_Radio: onDraw position=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v2, "DialPane"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_Radio: onDraw Height=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v2, "DialPane"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_Radio: onDraw Width=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/marvell/fmradio/DialPane;->dH:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    .line 207
    iget v2, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    sget v3, Lcom/marvell/fmradio/DialPane;->dL:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    sget v3, Lcom/marvell/fmradio/DialPane;->dL:I

    neg-int v3, v3

    if-ge v2, v3, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 212
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 215
    return-void

    .line 210
    :cond_1
    iget v2, p0, Lcom/marvell/fmradio/DialPane;->dK:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p2}, Lcom/marvell/fmradio/DialPane;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 145
    const-string v2, "DialPane"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_Radio: onTouchEvent x=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 178
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :pswitch_0
    const-string v0, "DialPane"

    const-string v2, "CP_Radio: ACTION_DOWN"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput v1, p0, Lcom/marvell/fmradio/DialPane;->dF:F

    .line 150
    iput v1, p0, Lcom/marvell/fmradio/DialPane;->dG:F

    .line 151
    invoke-direct {p0}, Lcom/marvell/fmradio/DialPane;->ag()V

    .line 152
    const-string v0, "DialPane"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_Radio: ACTION_DOWN mTouchStartX=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/marvell/fmradio/DialPane;->dF:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    :pswitch_1
    const-string v0, "DialPane"

    const-string v2, "ACTION_MOVE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput v1, p0, Lcom/marvell/fmradio/DialPane;->dG:F

    .line 158
    invoke-direct {p0}, Lcom/marvell/fmradio/DialPane;->ag()V

    .line 159
    const-string v0, "DialPane"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_Radio: ACTION_MOVE mTouchCurrX=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/marvell/fmradio/DialPane;->dG:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    :pswitch_2
    const-string v2, "DialPane"

    const-string v3, "ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput v1, p0, Lcom/marvell/fmradio/DialPane;->dG:F

    .line 165
    const-string v1, "DialPane"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_Radio: ACTION_MOVE mTouchCurrX=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/marvell/fmradio/DialPane;->dG:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/marvell/fmradio/DialPane;->ag()V

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 171
    :pswitch_3
    const-string v1, "DialPane"

    const-string v2, "CP_Radio: ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setMax(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method public setOnDialPaneChangeListener(Lcom/marvell/fmradio/av;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/marvell/fmradio/DialPane;->dI:Lcom/marvell/fmradio/av;

    .line 128
    return-void
.end method
