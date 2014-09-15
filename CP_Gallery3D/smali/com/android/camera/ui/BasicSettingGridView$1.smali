.class Lcom/android/camera/ui/BasicSettingGridView$1;
.super Ljava/lang/Object;
.source "BasicSettingGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BasicSettingGridView;->setPreference(Lcom/android/camera/IconListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BasicSettingGridView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BasicSettingGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$1;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$1;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 497
    return-void
.end method
