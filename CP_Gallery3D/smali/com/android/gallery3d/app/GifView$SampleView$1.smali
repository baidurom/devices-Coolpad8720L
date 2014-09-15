.class Lcom/android/gallery3d/app/GifView$SampleView$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/GifView$SampleView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GifView$SampleView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GifView$SampleView;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/gallery3d/app/GifView$SampleView$1;->this$0:Lcom/android/gallery3d/app/GifView$SampleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/GifView$SampleView$1;->this$0:Lcom/android/gallery3d/app/GifView$SampleView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 185
    return-void
.end method
