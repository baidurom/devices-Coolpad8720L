.class Lcom/yulong/android/uitechno/service/BService;
.super Ljava/lang/Object;
.source "UitechnoService.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/BService;->mContext:Landroid/content/Context;

    .line 1672
    return-void
.end method


# virtual methods
.method onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1676
    const/4 v0, 0x0

    return v0
.end method

.method systemReady()V
    .locals 0

    .prologue
    .line 1674
    return-void
.end method
