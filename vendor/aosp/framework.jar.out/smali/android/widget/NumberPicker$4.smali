.class Landroid/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;->dispatchAddCancelMotionEvent(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    iput p2, p0, Landroid/widget/NumberPicker$4;->val$x:F

    iput p3, p0, Landroid/widget/NumberPicker$4;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 811
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 812
    .local v0, now:J
    const/4 v4, 0x3

    iget v5, p0, Landroid/widget/NumberPicker$4;->val$x:F

    iget v6, p0, Landroid/widget/NumberPicker$4;->val$y:F

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 814
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 815
    iget-object v2, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 816
    return-void
.end method
