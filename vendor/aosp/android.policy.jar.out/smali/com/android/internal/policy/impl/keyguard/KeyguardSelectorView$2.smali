.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 236
    return-void
.end method

.method onShowCalendarNum(I)V
    .locals 3
    .parameter "shownum"

    .prologue
    .line 270
    const-string v0, "KeyguardSelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------onShowCalendarNum mUnreadCalendar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadCalendar:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadCalendar:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1202(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;I)I

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 273
    return-void
.end method

.method onShowEmailNum(I)V
    .locals 3
    .parameter "shownum"

    .prologue
    .line 262
    const-string v0, "KeyguardSelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------onShowEmailNum mUnreadEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadEmail:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadEmail:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;I)I

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 265
    return-void
.end method

.method onShowPhoneNum(I)V
    .locals 3
    .parameter "shownum"

    .prologue
    .line 254
    const-string v0, "KeyguardSelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------onShowPhoneNum mUnreadPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadPhone:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadPhone:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;I)I

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 257
    return-void
.end method

.method onShowSmsNum(I)V
    .locals 3
    .parameter "shownum"

    .prologue
    .line 246
    const-string v0, "KeyguardSelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------onShowSmsNum mUnreadSms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadSms:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mUnreadSms:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;I)I

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 249
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    .line 241
    return-void
.end method
