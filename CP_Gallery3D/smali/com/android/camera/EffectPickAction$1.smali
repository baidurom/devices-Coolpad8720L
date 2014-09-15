.class Lcom/android/camera/EffectPickAction$1;
.super Ljava/lang/Object;
.source "EffectPickAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectPickAction;->showMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectPickAction;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/EffectPickAction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/EffectPickAction$1;->this$0:Lcom/android/camera/EffectPickAction;

    iput-object p2, p0, Lcom/android/camera/EffectPickAction$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/EffectPickAction$1;->this$0:Lcom/android/camera/EffectPickAction;

    iget-object v1, p0, Lcom/android/camera/EffectPickAction$1;->val$text:Ljava/lang/String;

    const-wide/16 v2, 0x320

    iget-object v4, p0, Lcom/android/camera/EffectPickAction$1;->this$0:Lcom/android/camera/EffectPickAction;

    #getter for: Lcom/android/camera/EffectPickAction;->mRotateOrientation:I
    invoke-static {v4}, Lcom/android/camera/EffectPickAction;->access$000(Lcom/android/camera/EffectPickAction;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/EffectPickAction$1;->this$0:Lcom/android/camera/EffectPickAction;

    #getter for: Lcom/android/camera/EffectPickAction;->mPassOrientation:I
    invoke-static {v5}, Lcom/android/camera/EffectPickAction;->access$100(Lcom/android/camera/EffectPickAction;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraEffectBase;->showToastMessage(Ljava/lang/String;JII)V

    .line 135
    return-void
.end method
