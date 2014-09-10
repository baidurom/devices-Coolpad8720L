.class Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccSubsParams"
.end annotation


# instance fields
.field msg:Landroid/os/Message;

.field public subId:I

.field public subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/SubscriptionManager;ILcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "sub"
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->this$0:Lcom/yulong/android/internal/telephony/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subId:I

    .line 36
    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->subStatus:Lcom/yulong/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 37
    iput-object p4, p0, Lcom/yulong/android/internal/telephony/SubscriptionManager$UiccSubsParams;->msg:Landroid/os/Message;

    .line 38
    return-void
.end method
