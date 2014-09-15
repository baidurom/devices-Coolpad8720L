.class Lcom/android/camera/ui/RotateToastView$1;
.super Ljava/lang/Object;
.source "RotateToastView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RotateToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RotateToastView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RotateToastView;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/ui/RotateToastView$1;->this$0:Lcom/android/camera/ui/RotateToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/RotateToastView$1;->this$0:Lcom/android/camera/ui/RotateToastView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method
