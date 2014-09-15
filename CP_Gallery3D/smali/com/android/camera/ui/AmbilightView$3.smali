.class Lcom/android/camera/ui/AmbilightView$3;
.super Landroid/os/Handler;
.source "AmbilightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AmbilightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AmbilightView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AmbilightView;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/AmbilightView$3;->this$0:Lcom/android/camera/ui/AmbilightView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/AmbilightView$3;->this$0:Lcom/android/camera/ui/AmbilightView;

    #calls: Lcom/android/camera/ui/AmbilightView;->showAmbilightView()V
    invoke-static {v0}, Lcom/android/camera/ui/AmbilightView;->access$000(Lcom/android/camera/ui/AmbilightView;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
