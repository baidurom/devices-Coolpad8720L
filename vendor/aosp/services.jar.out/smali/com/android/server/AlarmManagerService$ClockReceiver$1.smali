.class Lcom/android/server/AlarmManagerService$ClockReceiver$1;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$ClockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$ClockReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$ClockReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1627
    return-void
.end method
