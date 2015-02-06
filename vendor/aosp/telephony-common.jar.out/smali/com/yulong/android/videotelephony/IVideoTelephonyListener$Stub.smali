.class public abstract Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;
.super Landroid/os/Binder;
.source "IVideoTelephonyListener.java"

# interfaces
.implements Lcom/yulong/android/videotelephony/IVideoTelephonyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/videotelephony/IVideoTelephonyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.videotelephony.IVideoTelephonyListener"

.field static final TRANSACTION_onAskForData:I = 0x6

.field static final TRANSACTION_onDisconnected:I = 0x3

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onNewRingingConnection:I = 0x1

.field static final TRANSACTION_onNewRingingVoiceConnection:I = 0x9

.field static final TRANSACTION_onOperationComplete:I = 0x8

.field static final TRANSACTION_onPhoneStateChanged:I = 0x2

.field static final TRANSACTION_onReceiveCodec:I = 0x5

.field static final TRANSACTION_onReceiveStrFromRemote:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/videotelephony/IVideoTelephonyListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/yulong/android/videotelephony/IVideoTelephonyListener;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onNewRingingConnection(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onPhoneStateChanged(I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    sget-object v3, Lcom/yulong/android/videotelephony/VTConnectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/videotelephony/VTConnectionData;

    .line 80
    .local v1, _arg1:Lcom/yulong/android/videotelephony/VTConnectionData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onDisconnected(ILcom/yulong/android/videotelephony/VTConnectionData;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v1           #_arg1:Lcom/yulong/android/videotelephony/VTConnectionData;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/yulong/android/videotelephony/VTConnectionData;
    goto :goto_1

    .line 86
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/yulong/android/videotelephony/VTConnectionData;
    :sswitch_4
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onError(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onReceiveCodec(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onAskForData(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onReceiveStrFromRemote(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onOperationComplete(I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v3, "com.yulong.android.videotelephony.IVideoTelephonyListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/yulong/android/videotelephony/IVideoTelephonyListener$Stub;->onNewRingingVoiceConnection(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
