.class Lcom/marvell/fmradio/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/marvell/fmradio/f;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/marvell/fmradio/f;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/DialPane;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/marvell/fmradio/DialPane;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 594
    const/4 v0, 0x1

    return v0
.end method
