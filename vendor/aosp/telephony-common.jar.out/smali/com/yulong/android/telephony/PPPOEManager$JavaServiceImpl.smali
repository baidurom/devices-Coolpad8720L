.class Lcom/yulong/android/telephony/PPPOEManager$JavaServiceImpl;
.super Lcom/yulong/android/uwservice/IUWJavaService$Stub;
.source "PPPOEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/PPPOEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JavaServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/PPPOEManager;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/PPPOEManager;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yulong/android/telephony/PPPOEManager$JavaServiceImpl;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    invoke-direct {p0}, Lcom/yulong/android/uwservice/IUWJavaService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRasCallback(III)V
    .locals 2
    .parameter "msg"
    .parameter "rasConnStats"
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    const-string v0, "CP_COMM:PPPOEManager"

    const-string v1, "onRasCallback1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/yulong/android/telephony/PPPOEManager$JavaServiceImpl;->this$0:Lcom/yulong/android/telephony/PPPOEManager;

    invoke-virtual {v0, p2, p3}, Lcom/yulong/android/telephony/PPPOEManager;->dispatchLinkStateMsg(II)V

    .line 183
    const-string v0, "CP_COMM:PPPOEManager"

    const-string v1, "onRasCallback"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method
