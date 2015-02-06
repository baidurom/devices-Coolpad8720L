.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 2068
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2069
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2070
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 2074
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2076
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_1
    #calls: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2080
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x104059f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2083
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_google:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_google:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2084
    const-string v0, "LocationManagerService"

    const-string v1, "handleMessage MSG_LOAD_OUTCHINA_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2092
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2094
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #calls: Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2097
    :cond_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_google:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    #setter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2102(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    .line 2099
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_google:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #setter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1702(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy;

    .line 2106
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2108
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #calls: Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2110
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)V

    goto/16 :goto_0

    .line 2114
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_baidu:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_amap:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2115
    :cond_3
    const-string v0, "LocationManagerService"

    const-string v1, "handleMessage MSG_LOAD_INDOOR_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2123
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2125
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #calls: Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2128
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_baidu:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2129
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_baidu:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    #setter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2102(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    .line 2144
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_baidu:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2145
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_baidu:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #setter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1702(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy;

    .line 2146
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #calls: Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 2155
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;)V

    goto/16 :goto_0

    .line 2135
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_amap:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2136
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider_amap:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    #setter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2102(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    goto :goto_2

    .line 2149
    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_amap:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2150
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider_amap:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #setter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1702(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy;

    .line 2151
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->networkProvider:Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    #calls: Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    goto :goto_3

    .line 2074
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x62 -> :sswitch_3
        0x63 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
