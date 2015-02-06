.class Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$1;
.super Landroid/os/Handler;
.source "TouchProtectScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    .line 125
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->handleInit()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->handleSetView()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
