.class public Landroid/net/wifi/p2p/WifiP2pService$DhcpLease;
.super Ljava/lang/Object;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DhcpLease"
.end annotation


# instance fields
.field public mIp:Ljava/lang/String;

.field public mMac:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$DhcpLease;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
