.class Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;
.super Ljava/lang/Object;
.source "BasicSettingGridView.java"

# interfaces
.implements Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    #calls: Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->cleanFocusedState()V
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->access$200(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;)V

    .line 348
    const-string v2, "onClick"

    const-string v3, ">>>>clean items focusedstate"

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    check-cast p1, Lcom/android/camera/ui/FaceEffectImageView;

    .end local p1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 350
    .local v1, position:I
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->access$300(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;)Lcom/android/camera/IconListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 358
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1$1;-><init>(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$400(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 370
    .local v0, isShow:Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mSettingShowListener:Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$400(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/ui/BasicSettingGridView$SettingShowListener;->onShow(Z)V

    .line 373
    .end local v0           #isShow:Z
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->access$300(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;)Lcom/android/camera/IconListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->isIntroductionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v3, v3, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->orientationComposation:I
    invoke-static {v3}, Lcom/android/camera/ui/BasicSettingGridView;->access$500(Lcom/android/camera/ui/BasicSettingGridView;)I

    move-result v3

    #calls: Lcom/android/camera/ui/BasicSettingGridView;->createDialogMessageByIndex(II)V
    invoke-static {v2, v1, v3}, Lcom/android/camera/ui/BasicSettingGridView;->access$600(Lcom/android/camera/ui/BasicSettingGridView;II)V

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$100(Lcom/android/camera/ui/BasicSettingGridView;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 378
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #setter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v2, v1}, Lcom/android/camera/ui/BasicSettingGridView;->access$102(Lcom/android/camera/ui/BasicSettingGridView;I)I

    .line 380
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v3, v3, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->sharedPrefChanger:Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;
    invoke-static {v3}, Lcom/android/camera/ui/BasicSettingGridView;->access$700(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v2, v2, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;->this$1:Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;

    iget-object v3, v3, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->sharedPrefChanger:Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;
    invoke-static {v3}, Lcom/android/camera/ui/BasicSettingGridView;->access$700(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/BasicSettingGridView$SharedPreferenceChanger;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    return-void

    .line 368
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
