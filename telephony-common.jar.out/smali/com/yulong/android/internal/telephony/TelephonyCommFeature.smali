.class public Lcom/yulong/android/internal/telephony/TelephonyCommFeature;
.super Ljava/lang/Object;
.source "TelephonyCommFeature.java"


# static fields
.field public static final BR_COMM_BT_CONNECT_EX:Ljava/lang/String; = "bt_connect_exception"

.field public static final BR_COMM_BT_TRANSLATE_EX:Ljava/lang/String; = "bt_translate_exception"

.field public static final BR_COMM_CC_ANSWER_EX:Ljava/lang/String; = "cc_answer_exception"

.field public static final BR_COMM_CC_DIAL_EX:Ljava/lang/String; = "cc_dial_exception"

.field public static final BR_COMM_DATA_DEV_OPEN_EX:Ljava/lang/String; = "data_dev_open_exception"

.field public static final BR_COMM_DATA_DIAL_EX:Ljava/lang/String; = "data_dial_exception"

.field public static final BR_COMM_DATA_ROUTE_EX:Ljava/lang/String; = "data_route_exception"

.field public static final BR_COMM_MODEM_AT_TIMEOUT_EX:Ljava/lang/String; = "modem_at_timeout_exception"

.field public static final BR_COMM_MODEM_CALLLINK_EX:Ljava/lang/String; = "modem_calllink_exception"

.field public static final BR_COMM_MODEM_NETWORK_REGISTE_EX:Ljava/lang/String; = "modem_network_registe_exception"

.field public static final BR_COMM_MODEM_RESET_EX:Ljava/lang/String; = "modem_reset_exception"

.field public static final BR_COMM_MODEM_RILD_EX:Ljava/lang/String; = "modem_rild_exception"

.field public static final BR_COMM_SMS_CODE_DECODE_EX:Ljava/lang/String; = "sms_code_decode_exception"

.field public static final BR_COMM_UICC_CONTACTS_EX:Ljava/lang/String; = "uicc_contacts_exception"

.field public static final BR_COMM_UICC_DROP_CARD_RE_FAIL_EX:Ljava/lang/String; = "uicc_drop_card_re_fail_exception"

.field public static final BR_COMM_UICC_DROP_CARD_RE_SUCC_EX:Ljava/lang/String; = "uicc_drop_card_re_succ_exception"

.field public static final BR_COMM_UICC_PARAM_EX:Ljava/lang/String; = "uicc_param_exception"

.field public static final BR_COMM_UICC_SMS_EX:Ljava/lang/String; = "uicc_sms_exception"

.field public static final BR_COMM_WIFI_CONNECT_EX:Ljava/lang/String; = "wifi_connect_exception"

.field public static final BR_COMM_WIFI_TRANSLATE_EX:Ljava/lang/String; = "wifi_translate_exception"

.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "TelephonyCommFeature"

    sput-object v0, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 11
    .parameter "reason"
    .parameter "privateFilePath"
    .parameter "crashinfo"

    .prologue
    const/4 v10, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, myClassBugReportTrigger:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " bugreport start trigger ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_0
    const-string v7, "com.yulong.android.server.BugReportTrigger"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 62
    :goto_0
    if-eqz v5, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, MyClass_Constructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    :try_start_1
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 73
    :goto_1
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 77
    const/4 v7, 0x0

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 79
    .local v6, myObjectBugReportTrigger:Ljava/lang/Object;
    const-string v7, "LaunchBugReportSystem"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/app/ApplicationErrorReport$CrashInfo;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    .local v1, MyMethod_LaunchBugReportSystem:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 83
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "communication_critical"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    const/4 v8, 0x3

    aput-object p2, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8

    .line 104
    .end local v0           #MyClass_Constructor:Ljava/lang/reflect/Constructor;
    .end local v1           #MyMethod_LaunchBugReportSystem:Ljava/lang/reflect/Method;
    .end local v6           #myObjectBugReportTrigger:Ljava/lang/Object;
    :cond_0
    :goto_2
    return-void

    .line 58
    :catch_0
    move-exception v3

    .line 60
    .local v3, e1:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v3           #e1:Ljava/lang/ClassNotFoundException;
    .restart local v0       #MyClass_Constructor:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v4

    .line 68
    .local v4, e2:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v4           #e2:Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 70
    .local v4, e2:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v4           #e2:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 90
    .local v2, e:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 91
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 95
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_6
    move-exception v2

    .line 96
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 97
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v2

    .line 98
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 99
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
