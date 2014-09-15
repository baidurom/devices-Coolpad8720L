.class Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1$1;
.super Ljava/lang/Object;
.source "BasicSettingGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1$1;->this$2:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1$1;->this$2:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;

    iget-object v0, v0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v0, v0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicSettingGridView;->hidePupupWindow(Z)Z

    .line 364
    return-void
.end method
