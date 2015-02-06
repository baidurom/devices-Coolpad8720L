.class final Lcom/android/server/power/PowerManagerService$ShutDownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutDownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2811
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2811
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 2814
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ShutDownReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/power/PowerManagerService;->shutdown(ZZ)V

    .line 2815
    const-string v0, "PowerManagerService"

    const-string v1, "ShutDownReceiver/shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    return-void
.end method
