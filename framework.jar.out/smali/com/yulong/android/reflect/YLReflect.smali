.class public Lcom/yulong/android/reflect/YLReflect;
.super Ljava/lang/Object;
.source "YLReflect.java"


# static fields
.field static BugReportService:Ljava/lang/Class;

.field static BugReportTrigger:Ljava/lang/Class;

.field static CPTelephoneyManager:Ljava/lang/Class;

.field static CloudSecurity:Ljava/lang/Class;

.field static DualPhoneConstants:Ljava/lang/Class;

.field static GlobalKeys:Ljava/lang/Class;

.field static ITelephony:Ljava/lang/Class;

.field static IoControlConstants:Ljava/lang/Class;

.field static OneKeyMuteObserver:Ljava/lang/Class;

.field static OsystemManager:Ljava/lang/Object;

.field static PhoneModeManager:Ljava/lang/Class;

.field static SystemManager:Ljava/lang/Class;

.field static SystemUtil:Ljava/lang/Class;

.field static TAG:Ljava/lang/String;

.field static TelephonyManager:Ljava/lang/Class;

.field static mGlobalKeySceneMode:Ljava/lang/Class;

.field static systemInterfaceImpl:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "YLReflect"

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->OsystemManager:Ljava/lang/Object;

    .line 36
    const-string v0, "com.yulong.android.server.systeminterface.util.SystemUtil"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    .line 37
    const-string v0, "com.yulong.android.server.systeminterface.GlobalKeys"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->GlobalKeys:Ljava/lang/Class;

    .line 38
    const-string v0, "com.yulong.android.server.systeminterface.SystemManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    .line 39
    const-string v0, "com.yulong.android.server.systeminterface.SystemInterfaceImpl"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    .line 40
    const-string v0, "com.yulong.android.server.OneKeyMuteObserver"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->OneKeyMuteObserver:Ljava/lang/Class;

    .line 41
    const-string v0, "com.yulong.android.server.BugReportService"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->BugReportService:Ljava/lang/Class;

    .line 42
    const-string v0, "com.yulong.android.server.BugReportTrigger"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    .line 43
    const-string v0, "com.yulong.android.telephony.CPTelephonyManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->CPTelephoneyManager:Ljava/lang/Class;

    .line 44
    const-string v0, "com.yulong.android.internal.telephony.DualPhoneConstants"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    .line 45
    const-string v0, "com.yulong.android.telephony.IoControlConstants"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    .line 46
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    .line 47
    const-string v0, "com.yulong.android.internal.telephony.PhoneModeManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    .line 48
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    .line 49
    const-string v0, "com.yulong.android.server.systeminterface.GlobalKeys$SceneMode"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->mGlobalKeySceneMode:Ljava/lang/Class;

    .line 50
    const-string v0, "com.yulong.android.cloudsecurity.server.CloudSecurity"

    invoke-static {v0}, Lcom/yulong/android/reflect/YLReflect;->Load_class(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/yulong/android/reflect/YLReflect;->CloudSecurity:Ljava/lang/Class;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BugReportService_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .parameter "mContext"

    .prologue
    .line 383
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportService:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 385
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportService:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 386
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 387
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 405
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v2

    .line 388
    :catch_0
    move-exception v1

    .line 390
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 391
    :catch_1
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 394
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 397
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 399
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 400
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 402
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static BugReportTrigger_LaunchBugReportSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 8
    .parameter "bugType"
    .parameter "processName"
    .parameter "shortComponentName"
    .parameter "crashInfo"

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger_init()Ljava/lang/Object;

    move-result-object v2

    .line 497
    .local v2, pthis:Ljava/lang/Object;
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 498
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    const-string v4, "LaunchBugReportSystem"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/app/ApplicationErrorReport$CrashInfo;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 499
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 500
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 501
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v2           #pthis:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 506
    const-string v3, "TAG"

    const-string v4, "BugReportTrigger_LaunchBugReportSystem error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static BugReportTrigger_init()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 466
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 468
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->BugReportTrigger:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 469
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 470
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 488
    :goto_0
    return-object v2

    .line 471
    :catch_0
    move-exception v1

    .line 473
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 488
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 474
    :catch_1
    move-exception v1

    .line 476
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 477
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 479
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 480
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 482
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 483
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static CloudSecurity_csCheckProvider(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 837
    const/4 v1, 0x0

    .line 838
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->CloudSecurity:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 839
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->CloudSecurity:Ljava/lang/Class;

    const-string v4, "csCheckProvider"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 841
    :cond_0
    if-eqz v1, :cond_1

    .line 842
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 843
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 848
    :goto_0
    return v2

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 848
    goto :goto_0
.end method

.method public static DualPhoneConstants_PHONEID_ONE()I
    .locals 4

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 625
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    const-string v3, "PHONEID_ONE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 626
    :cond_0
    if-eqz v1, :cond_1

    .line 627
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 628
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 633
    :goto_0
    return v2

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 633
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static DualPhoneConstants_PHONEID_TWO()I
    .locals 4

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 639
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->DualPhoneConstants:Ljava/lang/Class;

    const-string v3, "PHONEID_TWO"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 640
    :cond_0
    if-eqz v1, :cond_1

    .line 641
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 642
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 647
    :goto_0
    return v2

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 647
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static GlobalKeys_SYS_SERVICE()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->GlobalKeys:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->GlobalKeys:Ljava/lang/Class;

    const-string v4, "SYS_SERVICE"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 113
    :cond_0
    if-eqz v1, :cond_1

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object v2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 120
    goto :goto_0
.end method

.method public static ITelephony_isDualIdle(Ljava/lang/Object;I)Z
    .locals 8
    .parameter "pthis"
    .parameter "phoneNum"

    .prologue
    const/4 v3, 0x0

    .line 813
    const/4 v1, 0x0

    .line 814
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 815
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v4, "isDualIdle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 817
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 818
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 832
    :goto_0
    return v2

    .line 819
    :catch_0
    move-exception v0

    .line 821
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 832
    goto :goto_0

    .line 822
    :catch_1
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 825
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 828
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 830
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_isRadioOn(Ljava/lang/Object;)Z
    .locals 5
    .parameter "pthis"

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 789
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 790
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v3, "isRadioOn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 792
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 793
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 807
    :goto_0
    return v2

    .line 794
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 807
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 797
    :catch_1
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 800
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 803
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_isRadioOnOnSubscription(Ljava/lang/Object;I)Z
    .locals 8
    .parameter "pthis"
    .parameter "phoneNum"

    .prologue
    const/4 v3, 0x0

    .line 712
    const/4 v1, 0x0

    .line 713
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 714
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string v4, "isRadioOnOnSubscription"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 716
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 717
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 731
    :goto_0
    return v2

    .line 718
    :catch_0
    move-exception v0

    .line 720
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 731
    goto :goto_0

    .line 721
    :catch_1
    move-exception v0

    .line 723
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 724
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 726
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 727
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 729
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_setRadioOnSubscription(Ljava/lang/Object;ZI)Z
    .locals 8
    .parameter "pthis"
    .parameter "booleanNum"
    .parameter "phoneNum"

    .prologue
    const/4 v3, 0x0

    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 739
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string/jumbo v4, "setRadioOnSubscription"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 741
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 742
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 756
    :goto_0
    return v2

    .line 743
    :catch_0
    move-exception v0

    .line 745
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 756
    goto :goto_0

    .line 746
    :catch_1
    move-exception v0

    .line 748
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 749
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 751
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 752
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 754
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static ITelephony_telephonyDualIoControl(Ljava/lang/Object;ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .locals 8
    .parameter "pthis"
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v3, 0x0

    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 764
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->ITelephony:Ljava/lang/Class;

    const-string/jumbo v4, "telephonyDualIoControl"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 766
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 767
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 781
    :goto_0
    return v2

    .line 768
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 781
    goto :goto_0

    .line 771
    :catch_1
    move-exception v0

    .line 773
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 776
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 777
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static IoControlConstants_IOCTRL_QUEREY_POWERCONTROL()I
    .locals 4

    .prologue
    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 667
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    const-string v3, "IOCTRL_QUEREY_POWERCONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 668
    :cond_0
    if-eqz v1, :cond_1

    .line 669
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 674
    :goto_0
    return v2

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 674
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static IoControlConstants_IOCTRL_QUEREY_POWERCONTROL_KEY_STATE()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 652
    const/4 v1, 0x0

    .line 653
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 654
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->IoControlConstants:Ljava/lang/Class;

    const-string v4, "IOCTRL_QUEREY_POWERCONTROL_KEY_STATE"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 655
    :cond_0
    if-eqz v1, :cond_1

    .line 656
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-object v2

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 661
    goto :goto_0
.end method

.method public static Load_class(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "classPath"

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static OneKeyMuteObserver_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .parameter "mContext"

    .prologue
    .line 410
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->OneKeyMuteObserver:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 412
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->OneKeyMuteObserver:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 413
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 414
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 432
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v2

    .line 415
    :catch_0
    move-exception v1

    .line 417
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 432
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 418
    :catch_1
    move-exception v1

    .line 420
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 421
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 423
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 424
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 426
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 427
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 429
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static PhoneModeManager_getIccLockEnabled(Ljava/lang/Object;I)I
    .locals 7
    .parameter "pthis"
    .parameter "phoneNum"

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 584
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    const-string v3, "getIccLockEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 586
    :cond_0
    if-eqz v1, :cond_1

    .line 587
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 602
    :goto_0
    return v2

    .line 589
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 602
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 592
    :catch_1
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 595
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 598
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static PhoneModeManager_init()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 560
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 561
    if-eqz v1, :cond_0

    .line 562
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 577
    :cond_0
    :goto_0
    return-object v2

    .line 564
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 567
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 570
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 573
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 575
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_fangdaoValidated(Ljava/lang/Object;)Z
    .locals 6
    .parameter "OsystemManager"

    .prologue
    const/4 v3, 0x1

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 341
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v4, "fangdaoValidated"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 343
    :cond_0
    if-eqz v1, :cond_1

    .line 344
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 345
    if-eqz p0, :cond_1

    .line 346
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 351
    :goto_0
    return v2

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 351
    goto :goto_0
.end method

.method public static SystemManager_getCurrentModel(Ljava/lang/Object;)I
    .locals 5
    .parameter "OsystemManager"

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 258
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "getCurrentModel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 261
    :cond_0
    if-eqz v1, :cond_1

    .line 262
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 263
    if-eqz p0, :cond_1

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 269
    :goto_0
    return v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SystemManager_getSecurityManagerPassword(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "OsystemManager"

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 131
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "getSecurityManagerPassword"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    :cond_0
    if-eqz v1, :cond_1

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 134
    if-eqz p0, :cond_1

    .line 135
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SystemManager_getShowKeyguardType(Ljava/lang/Object;)I
    .locals 5
    .parameter "OsystemManager"

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 193
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v3, "getShowKeyguardType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 195
    :cond_0
    if-eqz v1, :cond_1

    .line 196
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 197
    if-eqz p0, :cond_1

    .line 198
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 203
    :goto_0
    return v2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static SystemManager_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .parameter "mContext"

    .prologue
    const/4 v3, 0x0

    .line 355
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 357
    :try_start_0
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 358
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 359
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 379
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    return-object v3

    .line 361
    :catch_0
    move-exception v2

    .line 363
    .local v2, e2:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v2           #e2:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 366
    .local v2, e2:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v2           #e2:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_isRebootPassEnable(Ljava/lang/Object;)Z
    .locals 6
    .parameter "OsystemManager"

    .prologue
    const/4 v3, 0x0

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 151
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string v4, "isRebootPassEnable"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 153
    :cond_0
    if-eqz v1, :cond_1

    .line 154
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 155
    if-eqz p0, :cond_1

    .line 156
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 162
    :goto_0
    return v2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 162
    goto :goto_0
.end method

.method public static SystemManager_requestCpuFreqMax(Ljava/lang/Object;IJJ)V
    .locals 7
    .parameter "OsystemManager"
    .parameter "numCpus"
    .parameter "timeoutNs"
    .parameter "nowNanoTime"

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 226
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string/jumbo v3, "requestCpuFreqMax"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 228
    :cond_0
    if-eqz v1, :cond_1

    .line 229
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 230
    if-eqz p0, :cond_1

    .line 231
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_requestMaxOnlineCpuCount(Ljava/lang/Object;IJJ)V
    .locals 7
    .parameter "OsystemManager"
    .parameter "numCpus"
    .parameter "timeoutNs"
    .parameter "nowNanoTime"

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 209
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string/jumbo v3, "requestMaxOnlineCpuCount"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 211
    :cond_0
    if-eqz v1, :cond_1

    .line 212
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 213
    if-eqz p0, :cond_1

    .line 214
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static SystemManager_setMode(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .parameter "OsystemManager"
    .parameter "isPrivateMode"

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 295
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string/jumbo v3, "setMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 298
    :cond_0
    if-eqz v1, :cond_1

    .line 299
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 300
    if-eqz p0, :cond_1

    .line 301
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 307
    :goto_0
    return-object v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SystemManager_validateKeyguardSecurityPass(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 7
    .parameter "OsystemManager"
    .parameter "key"

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 173
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    const-string/jumbo v3, "validateKeyguardSecurityPass"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 175
    :cond_0
    if-eqz v1, :cond_1

    .line 176
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 177
    if-eqz p0, :cond_1

    .line 178
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 183
    :goto_0
    return v2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static SystemUtil_getLockLevel()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    const-string v4, "getLockLevel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    :cond_0
    if-eqz v1, :cond_1

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 99
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 104
    goto :goto_0
.end method

.method public static SystemUtil_getRPValue()I
    .locals 5

    .prologue
    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 319
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    const-string v3, "getRPValue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 321
    :cond_0
    if-eqz v1, :cond_1

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 323
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 329
    :goto_0
    return v2

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    const-string v4, "getYLParam"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    :cond_0
    if-eqz v1, :cond_1

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 70
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 75
    goto :goto_0
.end method

.method public static SystemUtil_setYLParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 81
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->SystemUtil:Ljava/lang/Class;

    const-string/jumbo v3, "setYLParam"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    :cond_0
    if-eqz v1, :cond_1

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static TelephonyManager_getPhoneCount()I
    .locals 5

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 609
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 610
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    const-string v3, "getPhoneCount"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 612
    :cond_0
    if-eqz v1, :cond_1

    .line 613
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 618
    :goto_0
    return v2

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 618
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static TelephonyManager_init()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 536
    sget-object v3, Lcom/yulong/android/reflect/YLReflect;->TelephonyManager:Ljava/lang/Class;

    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_0

    .line 538
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 553
    :cond_0
    :goto_0
    return-object v2

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 543
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCloudSecurityService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .parameter "context"

    .prologue
    .line 904
    :try_start_0
    const-string v4, "com.yulong.android.cloudsecurity.server.CloudSecurityService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 906
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 907
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 909
    .local v2, ctor1:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 910
    .local v1, cludeObject:Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, ":getCloudSecurityService YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #cludeObject:Ljava/lang/Object;
    .end local v2           #ctor1:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v1

    .line 913
    :catch_0
    move-exception v3

    .line 914
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "getCloudSecurityService-reflect"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSceneModeType(Ljava/lang/String;)I
    .locals 5
    .parameter "modeFeild"

    .prologue
    .line 272
    const/4 v3, 0x0

    .line 274
    .local v3, sceneModeType:I
    :try_start_0
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->mGlobalKeySceneMode:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 275
    .local v1, mScenModeType:Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 276
    .local v2, sceneModeTemp:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 287
    .end local v1           #mScenModeType:Ljava/lang/reflect/Field;
    .end local v2           #sceneModeTemp:Ljava/lang/Integer;
    :goto_0
    return v3

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUitechnoService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .parameter "context"

    .prologue
    .line 869
    :try_start_0
    const-string v4, "com.yulong.android.uitechno.service.UitechnoService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 871
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 872
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 874
    .local v1, ctor1:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 875
    .local v3, uitechnoService:Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, ":getUitechnoService YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #ctor1:Ljava/lang/reflect/Constructor;
    .end local v3           #uitechnoService:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 879
    :catch_0
    move-exception v2

    .line 880
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "getUitechnoService-reflect"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static get_TelePhoneService()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 680
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 683
    .local v4, service:Landroid/os/IBinder;
    :try_start_0
    const-string v5, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 684
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 685
    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 686
    .local v0, asInterface:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 687
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 707
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 691
    :catch_0
    move-exception v2

    .line 693
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 694
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 696
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 697
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 699
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 700
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 702
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 703
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 705
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static mSystemInterface_setMode(Ljava/lang/Object;Z)Z
    .locals 8
    .parameter "pthis"
    .parameter "isPrivateMode"

    .prologue
    const/4 v3, 0x0

    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 516
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    const-string/jumbo v4, "setMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 518
    :cond_0
    if-eqz v1, :cond_1

    .line 519
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 520
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 526
    :goto_0
    return v2

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 524
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v4, "SystemManager_requestCpuFreqMax int YLReflect error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 526
    goto :goto_0
.end method

.method public static startHallSensor(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 853
    :try_start_0
    const-string v4, "com.yulong.android.hallsensor.HallSensorObserver"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 855
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 856
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 858
    .local v1, ctor1:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 859
    .local v3, hallsensor:Ljava/lang/Object;
    sget-object v4, Lcom/yulong/android/reflect/YLReflect;->TAG:Ljava/lang/String;

    const-string v5, ":HallSensorObserver YLReflect reflect success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #ctor1:Ljava/lang/reflect/Constructor;
    .end local v3           #hallsensor:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v2

    .line 862
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "HallSensorObserver-reflect"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static systemInterfaceImpl_init(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .parameter "mContext"

    .prologue
    .line 436
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 438
    :try_start_0
    sget-object v2, Lcom/yulong/android/reflect/YLReflect;->systemInterfaceImpl:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 439
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 440
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 458
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v2

    .line 441
    :catch_0
    move-exception v1

    .line 443
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 458
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 444
    :catch_1
    move-exception v1

    .line 446
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 447
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 449
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 450
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 452
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 453
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 455
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static uitechonoSystemReady(Ljava/lang/Object;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 887
    :try_start_0
    const-string v3, "com.yulong.android.uitechno.service.UitechnoService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 889
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 890
    const-string/jumbo v3, "systemReady"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 891
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 892
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 894
    :catch_0
    move-exception v1

    .line 896
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
