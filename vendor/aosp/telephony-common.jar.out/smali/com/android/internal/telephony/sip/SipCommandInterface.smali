.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 128
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "ackPdu"
    .parameter "response"

    .prologue
    .line 931
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 241
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 237
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 314
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 68
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 61
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 64
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 437
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 432
    return-void
.end method

.method public clearMru(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1035
    return-void
.end method

.method public clearPrlOrPlmn(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1029
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 115
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 698
    return-void
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 227
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 200
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 187
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 184
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 83
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 87
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 992
    return-void
.end method

.method public execRuimEsnOp(ZLandroid/os/Message;)V
    .locals 0
    .parameter "op"
    .parameter "result"

    .prologue
    .line 442
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 412
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 134
    return-void
.end method

.method public getATR(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1060
    return-void
.end method

.method public getAllG2NeighborCellInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 906
    return-void
.end method

.method public getAllG3NeighborCellInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 916
    return-void
.end method

.method public getAllLteNeighborCellInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 925
    return-void
.end method

.method public getAudioRevision(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 448
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 274
    return-void
.end method

.method public getBand(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1083
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 288
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 379
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 251
    return-void
.end method

.method public getCardAdnParam1(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 454
    return-void
.end method

.method public getCardAdnParam2(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 460
    return-void
.end method

.method public getCardSmsInfo(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "result"

    .prologue
    .line 466
    return-void
.end method

.method public getCardSmsParam(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 471
    return-void
.end method

.method public getCardType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 476
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 403
    return-void
.end method

.method public getCdmaLineNumber(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 688
    return-void
.end method

.method public getCdmaPrlVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 481
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 703
    return-void
.end method

.method public getCellID(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 657
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1048
    return-void
.end method

.method public getComCfg(ILandroid/os/Message;)V
    .locals 0
    .parameter "bitmap"
    .parameter "response"

    .prologue
    .line 1074
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 74
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 80
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 708
    return-void
.end method

.method public getDataTransStats(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 486
    return-void
.end method

.method public getDefaultNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 662
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 376
    return-void
.end method

.method public getEmergencyNumberList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 713
    return-void
.end method

.method public getG2ServiceCellInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 901
    return-void
.end method

.method public getG3ServiceCellInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 911
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 159
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 366
    return-void
.end method

.method public getGsmLineNumber(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 491
    return-void
.end method

.method public getGsmRFCalibration(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 496
    return-void
.end method

.method public getICCID(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 501
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 96
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 99
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 90
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 93
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 46
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 137
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 144
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 141
    return-void
.end method

.method public getLteServiceCellInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 920
    return-void
.end method

.method public getModemStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 506
    return-void
.end method

.method public getModemVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 975
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 150
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 348
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 271
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 162
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public getPhoneSlot()I
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 345
    return-void
.end method

.method public getPreferredPLMNList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 718
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 122
    return-void
.end method

.method public getPrlOrPlmnCapacity(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1017
    return-void
.end method

.method public getPrlOrPlmnVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1011
    return-void
.end method

.method public getQosStatus(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 224
    return-void
.end method

.method public getRFCalibration(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 511
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 156
    return-void
.end method

.method public getSMSCAddr(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 516
    return-void
.end method

.method public getSN(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 880
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 153
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 354
    return-void
.end method

.method public getUimIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 723
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 728
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 733
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 339
    return-void
.end method

.method public hangupAll(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 980
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 103
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 109
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 106
    return-void
.end method

.method public hold(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 521
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 969
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 957
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 245
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 248
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 963
    return-void
.end method

.method public invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "type"
    .parameter "response"

    .prologue
    .line 738
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .parameter "data"
    .parameter "response"

    .prologue
    .line 320
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 323
    return-void
.end method

.method public modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, qosFlows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public notifyBindSlots()V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public notifySmsMemFull(ILandroid/os/Message;)V
    .locals 0
    .parameter "notifyType"
    .parameter "response"

    .prologue
    .line 682
    return-void
.end method

.method public notifySocketConnectedInternal()V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public notifySwitchSlots()V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public operateFactoryNumber(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "key"
    .parameter "operate"
    .parameter "value"
    .parameter "obtainMessage"

    .prologue
    .line 951
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 329
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 285
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 282
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 257
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 385
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 293
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 298
    return-void
.end method

.method public queryPINPUKValidCount(ILandroid/os/Message;)V
    .locals 0
    .parameter "reqType"
    .parameter "result"

    .prologue
    .line 526
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 394
    return-void
.end method

.method public registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 875
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 131
    return-void
.end method

.method public releaseQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 212
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 360
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 363
    return-void
.end method

.method public requestEnterCmdMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 531
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 758
    return-void
.end method

.method public requestSecrecyConnecting(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 536
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 317
    return-void
.end method

.method public resumeQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 221
    return-void
.end method

.method public rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ioCode"
    .parameter "inStr1"
    .parameter "inStr2"
    .parameter "response"

    .prologue
    .line 542
    return-void
.end method

.method public selectBand(IIIIILandroid/os/Message;)V
    .locals 0
    .parameter "networkMode"
    .parameter "gsmBand"
    .parameter "umtsBand"
    .parameter "lteBandH"
    .parameter "lteBandL"
    .parameter "response"

    .prologue
    .line 1079
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 175
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 400
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 181
    return-void
.end method

.method public sendCodecBack(Landroid/os/Message;I)V
    .locals 0
    .parameter "obtain"
    .parameter "codec"

    .prologue
    .line 833
    return-void
.end method

.method public sendCommandFromEngmode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strcmd"
    .parameter "response"

    .prologue
    .line 841
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 165
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 335
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 937
    return-void
.end method

.method public sendGpsOneCommand(ILandroid/os/Message;)V
    .locals 0
    .parameter "icmd"
    .parameter "response"

    .prologue
    .line 667
    return-void
.end method

.method public sendImsCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 763
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 768
    return-void
.end method

.method public sendPowerState(ILandroid/os/Message;)V
    .locals 0
    .parameter "state"
    .parameter "response"

    .prologue
    .line 547
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 178
    return-void
.end method

.method public sendSMSMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "bytesToHexString"
    .parameter "bytesToHexString2"
    .parameter "reply"

    .prologue
    .line 986
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 332
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 311
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 125
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 326
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 254
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 278
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 261
    return-void
.end method

.method public setCardPbInfo(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "tel"
    .parameter "type"
    .parameter "name"
    .parameter "result"

    .prologue
    .line 553
    return-void
.end method

.method public setCardPowerState(ILandroid/os/Message;)V
    .locals 0
    .parameter "state"
    .parameter "onComplete"

    .prologue
    .line 1005
    return-void
.end method

.method public setCardProfileDownload(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 558
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 409
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 406
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "configs"
    .parameter "response"

    .prologue
    .line 1042
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 388
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 391
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 774
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 0
    .parameter "rateInMillis"
    .parameter "response"

    .prologue
    .line 1054
    return-void
.end method

.method public setCnmiMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 563
    return-void
.end method

.method public setComCfg(ZZIILandroid/os/Message;)V
    .locals 0
    .parameter "umtswbamr"
    .parameter "gsmwbamr"
    .parameter "vendor"
    .parameter "manufacture"
    .parameter "response"

    .prologue
    .line 1070
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 568
    return-void
.end method

.method public setDefaultNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 672
    return-void
.end method

.method public setExtendFromVIA(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "extend"
    .parameter "response"

    .prologue
    .line 886
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 303
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 308
    return-void
.end method

.method public setFdy(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "interval"
    .parameter "response"

    .prologue
    .line 1065
    return-void
.end method

.method public setGpsLocNotify(ILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "response"

    .prologue
    .line 573
    return-void
.end method

.method public setGpsNotifyResp(ILandroid/os/Message;)V
    .locals 0
    .parameter "result"
    .parameter "response"

    .prologue
    .line 578
    return-void
.end method

.method public setGpsPPPDialResult(ILandroid/os/Message;)V
    .locals 0
    .parameter "result"
    .parameter "response"

    .prologue
    .line 583
    return-void
.end method

.method public setGpsPPPDiscResult(ILandroid/os/Message;)V
    .locals 0
    .parameter "result"
    .parameter "response"

    .prologue
    .line 588
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 372
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 369
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 351
    return-void
.end method

.method public setLteImei(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "lteimei"
    .parameter "response"

    .prologue
    .line 869
    return-void
.end method

.method public setMBBMSAuthenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "inRand"
    .parameter "inAutn"
    .parameter "response"

    .prologue
    .line 678
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 147
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 264
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 268
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 43
    return-void
.end method

.method public setPhoneSlot(I)V
    .locals 0
    .parameter "phoneSlot"

    .prologue
    .line 593
    return-void
.end method

.method public setPhoneSub(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;I)V
    .locals 0
    .parameter "cardstate"
    .parameter "index"

    .prologue
    .line 598
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 382
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 342
    return-void
.end method

.method public setPreferredPLMNList(IILjava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "format"
    .parameter "oper"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "e_utranAct"
    .parameter "response"

    .prologue
    .line 780
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 119
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "result"

    .prologue
    .line 230
    return-void
.end method

.method public setRasConnectFunction(ILandroid/os/Message;)V
    .locals 0
    .parameter "func"
    .parameter "result"

    .prologue
    .line 603
    return-void
.end method

.method public setRemoteMute(ZLandroid/os/Message;)V
    .locals 0
    .parameter "muted"
    .parameter "result"

    .prologue
    .line 846
    return-void
.end method

.method public setRilPowerOff(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 785
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 357
    return-void
.end method

.method public setSounddevice(ILandroid/os/Message;)V
    .locals 0
    .parameter "sndDevice"
    .parameter "response"

    .prologue
    .line 609
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "subscriptionMode"
    .parameter "result"

    .prologue
    .line 614
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 233
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 397
    return-void
.end method

.method public setThreeWayCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "number"
    .parameter "response"

    .prologue
    .line 851
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "response"

    .prologue
    .line 618
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "result"

    .prologue
    .line 205
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "dialNumber"
    .parameter "result"

    .prologue
    .line 625
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "dialNumber"
    .parameter "mru"
    .parameter "result"

    .prologue
    .line 634
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 197
    return-void
.end method

.method public setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .parameter "callId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, qosFlows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public sleepDataFirewall(ILandroid/os/Message;)V
    .locals 0
    .parameter "i"
    .parameter "result"

    .prologue
    .line 693
    return-void
.end method

.method public spcpaSendCmd(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cmdstring"
    .parameter "result"

    .prologue
    .line 837
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 168
    return-void
.end method

.method public startModemCellTest(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 891
    return-void
.end method

.method public startRecording(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 857
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 171
    return-void
.end method

.method public stopModemCellTest(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 896
    return-void
.end method

.method public stopRecording(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 863
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 49
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 55
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 424
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 416
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 52
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 58
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 428
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 420
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 71
    return-void
.end method

.method public suspendQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 218
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 112
    return-void
.end method

.method public testUARTchannel(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "subpkg"
    .parameter "index"
    .parameter "portNo"
    .parameter "obtainMessage"

    .prologue
    .line 999
    return-void
.end method

.method public updatePrlOrPlmn([BLandroid/os/Message;)V
    .locals 0
    .parameter "baItemData"
    .parameter "response"

    .prologue
    .line 1023
    return-void
.end method

.method public vpAnswer(Landroid/os/Message;)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public vpAnswerForVoice(Landroid/os/Message;)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public vpCancel(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 802
    return-void
.end method

.method public vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .parameter "strTelphoneCode"
    .parameter "anyonePath"
    .parameter "remotPath"
    .parameter "displayType"
    .parameter "result"

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public vpReject(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 815
    return-void
.end method

.method public vpSendUserNum(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cDigit"
    .parameter "result"

    .prologue
    .line 821
    return-void
.end method

.method public vpSetMicorphone(SLandroid/os/Message;)Z
    .locals 1
    .parameter "iCommand"
    .parameter "result"

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 193
    return-void
.end method

.method public writeSmsToRuim(I[BLandroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 640
    return-void
.end method

.method public writeSmsToRuimEx(IILjava/lang/String;[BLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "encoding"
    .parameter "destAddr"
    .parameter "content"
    .parameter "dateTime"
    .parameter "response"

    .prologue
    .line 646
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 190
    return-void
.end method

.method public writeSmsToSimEx(II[B[BLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "encoding"
    .parameter "telNumber"
    .parameter "content"
    .parameter "dateTime"
    .parameter "response"

    .prologue
    .line 652
    return-void
.end method
