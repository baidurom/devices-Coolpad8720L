.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method OnrefreshDoubleTime(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "localCityName"
    .parameter "localCityTime"
    .parameter "localCityDate"
    .parameter "appointCityName"
    .parameter "appointCityTime"
    .parameter "appointCityDate"

    .prologue
    .line 131
    return-void
.end method

.method onBootCompleted()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method onDualStateChanged(Z)V
    .locals 0
    .parameter "isdualNetWork"

    .prologue
    .line 129
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 69
    return-void
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 0
    .parameter "clientGeneration"
    .parameter "clearing"
    .parameter "intent"

    .prologue
    .line 141
    return-void
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 0
    .parameter "playbackState"
    .parameter "eventTime"

    .prologue
    .line 148
    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 63
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 34
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 48
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 165
    return-void
.end method

.method onRefreshCoolShowData()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method onResetDefaultWidget(Z)V
    .locals 0
    .parameter "isResetWidget"

    .prologue
    .line 123
    return-void
.end method

.method onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 55
    return-void
.end method

.method onShowCalendarNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 128
    return-void
.end method

.method onShowEmailNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 127
    return-void
.end method

.method onShowPhoneNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 126
    return-void
.end method

.method onShowSmsNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 125
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 102
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 155
    return-void
.end method

.method onTimeChanged()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method onUserInfoChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 112
    return-void
.end method

.method onUserRemoved(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 107
    return-void
.end method

.method onUserSwitchComplete(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 96
    return-void
.end method

.method onUserSwitching(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 91
    return-void
.end method
