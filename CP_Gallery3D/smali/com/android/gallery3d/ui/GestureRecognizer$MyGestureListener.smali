.class Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GestureRecognizer;Lcom/android/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    move v0, v2

    .line 109
    .local v0, negativeX:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    move v1, v2

    .line 111
    .local v1, negativeY:Z
    :goto_1
    if-eqz v0, :cond_0

    cmpl-float v2, p3, v6

    if-gtz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    cmpg-float v2, p3, v6

    if-gez v2, :cond_2

    .line 112
    :cond_1
    neg-float p3, p3

    .line 115
    :cond_2
    if-eqz v1, :cond_3

    cmpl-float v2, p4, v6

    if-gtz v2, :cond_4

    :cond_3
    if-nez v1, :cond_5

    cmpg-float v2, p4, v6

    if-gez v2, :cond_5

    .line 116
    :cond_4
    neg-float p4, p4

    .line 120
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v2

    invoke-interface {v2, p3, p4}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onFling(FF)Z

    move-result v2

    return v2

    .end local v0           #negativeX:Z
    .end local v1           #negativeY:Z
    :cond_6
    move v0, v3

    .line 108
    goto :goto_0

    .restart local v0       #negativeX:Z
    :cond_7
    move v1, v3

    .line 109
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    return v0
.end method
