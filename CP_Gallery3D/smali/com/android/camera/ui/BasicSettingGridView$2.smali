.class Lcom/android/camera/ui/BasicSettingGridView$2;
.super Ljava/lang/Object;
.source "BasicSettingGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BasicSettingGridView;->createDialogMessageByIndex(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BasicSettingGridView;

.field final synthetic val$index:I

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BasicSettingGridView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    iput p2, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->val$index:I

    iput p3, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v0, v0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    iget v1, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->val$index:I

    iget v2, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->val$orientation:I

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mbLandscape:Z
    invoke-static {v3}, Lcom/android/camera/ui/BasicSettingGridView;->access$900(Lcom/android/camera/ui/BasicSettingGridView;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateDialog;->createMessage(IIZ)V

    .line 833
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$2;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v0, v0, Lcom/android/camera/ui/BasicSettingGridView;->dialog:Lcom/android/camera/ui/RotateDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 835
    return-void
.end method
