.class final Lcom/android/server/power/YlShutdown$2;
.super Ljava/lang/Thread;
.source "YlShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/YlShutdown;->shutRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(J[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/android/server/power/YlShutdown$2;->val$endTime:J

    iput-object p3, p0, Lcom/android/server/power/YlShutdown$2;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 130
    const/4 v8, 0x0

    .line 131
    .local v8, gsm_radioOff:Z
    const/4 v6, 0x0

    .line 134
    .local v6, cdma_radioOff:Z
    const-string v17, "nfc"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v12

    .line 136
    .local v12, nfc:Landroid/nfc/INfcAdapter;
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->get_TelePhoneService()Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, ITelephony:Ljava/lang/Object;
    const-string v17, "bluetooth_manager"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 143
    .local v4, bluetooth:Landroid/bluetooth/IBluetoothManager;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    :cond_0
    const/4 v13, 0x1

    .line 145
    .local v13, nfcOff:Z
    :goto_0
    if-nez v13, :cond_1

    .line 146
    const-string v17, "ShutdownThread"

    const-string v18, "Turning off NFC..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_6

    :cond_2
    const/4 v5, 0x1

    .line 156
    .local v5, bluetoothOff:Z
    :goto_2
    if-nez v5, :cond_3

    .line 157
    const-string v17, "ShutdownThread"

    const-string v18, "Disabling Bluetooth..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :cond_3
    :goto_3
    const/16 v16, 0x1

    .line 169
    .local v16, radioOff:Z
    if-eqz v2, :cond_8

    .line 170
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager_getPhoneCount()I

    move-result v3

    .line 171
    .local v3, PhoneCount:I
    const-string v17, "ShutdownThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TelephonyManager_getPhoneCount :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    if-ge v9, v3, :cond_8

    .line 175
    if-eqz v16, :cond_7

    invoke-static {v2, v9}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_isRadioOnOnSubscription(Ljava/lang/Object;I)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v16, 0x1

    .line 176
    :goto_5
    invoke-static {v2, v9}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_isRadioOnOnSubscription(Ljava/lang/Object;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 177
    const-string v17, "ShutdownThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Turning off radio on Subscription :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v2, v0, v9}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_setRadioOnSubscription(Ljava/lang/Object;ZI)Z

    .line 174
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 143
    .end local v3           #PhoneCount:I
    .end local v5           #bluetoothOff:Z
    .end local v9           #i:I
    .end local v13           #nfcOff:Z
    .end local v16           #radioOff:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v7

    .line 150
    .local v7, ex:Landroid/os/RemoteException;
    const-string v17, "ShutdownThread"

    const-string v18, "RemoteException during NFC shutdown"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v13, 0x1

    .restart local v13       #nfcOff:Z
    goto/16 :goto_1

    .line 155
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 160
    :catch_1
    move-exception v7

    .line 161
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v17, "ShutdownThread"

    const-string v18, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v5, 0x1

    .restart local v5       #bluetoothOff:Z
    goto :goto_3

    .line 175
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v3       #PhoneCount:I
    .restart local v9       #i:I
    .restart local v16       #radioOff:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_5

    .line 183
    .end local v3           #PhoneCount:I
    .end local v9           #i:I
    :cond_8
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v10, inData:Landroid/os/Bundle;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v14, outData:Landroid/os/Bundle;
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants_IOCTRL_QUEREY_POWERCONTROL_KEY_STATE()Ljava/lang/String;

    move-result-object v11

    .line 186
    .local v11, key_state:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants_IOCTRL_QUEREY_POWERCONTROL()I

    move-result v15

    .line 187
    .local v15, powercontrol:I
    const-string v17, "ShutdownThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "key_state :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "powercontrol :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v2, :cond_b

    .line 190
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    if-nez v6, :cond_9

    .line 192
    const-string v17, "ShutdownThread"

    const-string v18, "come to shutdown cdma !"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v2, v15, v10, v14, v0}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_telephonyDualIoControl(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v6

    .line 195
    :cond_9
    if-eqz v6, :cond_10

    .line 196
    const-string v17, "ShutdownThread"

    const-string v18, "Turning off cdma modem successful!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_6
    if-nez v8, :cond_a

    .line 203
    const-string v17, "ShutdownThread"

    const-string v18, "come to shutdown gsm !"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-static {v2, v15, v10, v14, v0}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_telephonyDualIoControl(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v8

    .line 206
    :cond_a
    if-eqz v8, :cond_11

    .line 207
    const-string v17, "ShutdownThread"

    const-string v18, "Turning off gsm modem successful!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_b
    :goto_7
    const-string v17, "sys.radio.shutdown"

    const-string v18, "true"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v17, "ShutdownThread"

    const-string v18, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/YlShutdown$2;->val$endTime:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-gez v17, :cond_f

    .line 219
    if-nez v5, :cond_c

    .line 221
    :try_start_2
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    if-nez v17, :cond_12

    const/4 v5, 0x1

    .line 226
    :goto_9
    if-eqz v5, :cond_c

    .line 227
    const-string v17, "ShutdownThread"

    const-string v18, "Bluetooth turned off."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_c
    if-nez v16, :cond_d

    .line 233
    invoke-static {v2}, Lcom/yulong/android/reflect/YLReflect;->ITelephony_isRadioOn(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v16, 0x1

    .line 234
    :goto_a
    if-eqz v16, :cond_d

    .line 235
    const-string v17, "ShutdownThread"

    const-string v18, "Radio turned off."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_d
    if-nez v13, :cond_e

    .line 240
    :try_start_3
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    const/4 v13, 0x1

    .line 245
    :goto_b
    if-eqz v16, :cond_e

    .line 246
    const-string v17, "ShutdownThread"

    const-string v18, "NFC turned off."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_e
    if-eqz v16, :cond_15

    if-eqz v5, :cond_15

    if-eqz v13, :cond_15

    .line 251
    const-string v17, "ShutdownThread"

    const-string v18, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/YlShutdown$2;->val$done:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput-boolean v19, v17, v18

    .line 258
    :cond_f
    return-void

    .line 198
    :cond_10
    const-string v17, "ShutdownThread"

    const-string v18, "Turning off cdma modem fail!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 209
    :cond_11
    const-string v17, "ShutdownThread"

    const-string v18, "Turning off gsm modem fail!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 221
    :cond_12
    const/4 v5, 0x0

    goto :goto_9

    .line 222
    :catch_2
    move-exception v7

    .line 223
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v17, "ShutdownThread"

    const-string v18, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v5, 0x1

    goto :goto_9

    .line 233
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_13
    const/16 v16, 0x0

    goto :goto_a

    .line 240
    :cond_14
    const/4 v13, 0x0

    goto :goto_b

    .line 241
    :catch_3
    move-exception v7

    .line 242
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v17, "ShutdownThread"

    const-string v18, "RemoteException during NFC shutdown"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v13, 0x1

    goto :goto_b

    .line 256
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_15
    const-wide/16 v17, 0x1f4

    invoke-static/range {v17 .. v18}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_8
.end method
