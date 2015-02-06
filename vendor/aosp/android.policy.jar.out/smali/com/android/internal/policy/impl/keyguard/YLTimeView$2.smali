.class Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "YLTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/YLTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onRefreshCoolShowData()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "KeyguardOwnerInfo"

    const-string v1, "----onRefreshCoolShowData-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getInstance()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getOwnerText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getInstance()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getTextColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$102(I)I

    .line 224
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getInstance()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getTextType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getInstance()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->ShowOwnerInfo()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$302(Z)Z

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$400(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)Lcom/android/internal/policy/impl/keyguard/VerticalView;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->setText(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$400(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)Lcom/android/internal/policy/impl/keyguard/VerticalView;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$400(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)Lcom/android/internal/policy/impl/keyguard/VerticalView;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VerticalView;->setTextFont(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$400(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)Lcom/android/internal/policy/impl/keyguard/VerticalView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/YLTimeView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->access$400(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)Lcom/android/internal/policy/impl/keyguard/VerticalView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
