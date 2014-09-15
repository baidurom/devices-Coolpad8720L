.class public Lcom/android/gallery3d/util/LocalBehaviorReport;
.super Ljava/lang/Object;
.source "LocalBehaviorReport.java"


# static fields
.field private static behaviorBeanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static behaviorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static keyvalueBeanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static keyvalueConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static reportMethod:Ljava/lang/reflect/Method;

.field private static reportSwitchOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 35
    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorBeanClass:Ljava/lang/Class;

    .line 38
    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->keyvalueBeanClass:Ljava/lang/Class;

    .line 41
    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorConstructor:Ljava/lang/reflect/Constructor;

    .line 44
    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->keyvalueConstructor:Ljava/lang/reflect/Constructor;

    .line 47
    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->reportMethod:Ljava/lang/reflect/Method;

    .line 50
    sput-boolean v2, Lcom/android/gallery3d/util/LocalBehaviorReport;->reportSwitchOn:Z

    .line 54
    :try_start_0
    const-string v1, "com.yulong.android.server.BehaviorInfoBean"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorBeanClass:Ljava/lang/Class;

    .line 55
    const-string v1, "com.yulong.android.server.BehaviorInfoBean$KeyValueBean"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->keyvalueBeanClass:Ljava/lang/Class;

    .line 56
    sget-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorBeanClass:Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorConstructor:Ljava/lang/reflect/Constructor;

    .line 57
    sget-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->keyvalueBeanClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->keyvalueConstructor:Ljava/lang/reflect/Constructor;

    .line 58
    sget-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorBeanClass:Ljava/lang/Class;

    const-string v2, "reportBehaviorInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorBeanClass:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/LocalBehaviorReport;->reportMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sput-boolean v6, Lcom/android/gallery3d/util/LocalBehaviorReport;->reportSwitchOn:Z

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sput-boolean v6, Lcom/android/gallery3d/util/LocalBehaviorReport;->reportSwitchOn:Z

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static behaviorReport_1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "target"
    .parameter "action"

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, result:Z
    sget-boolean v5, Lcom/android/gallery3d/util/LocalBehaviorReport;->reportSwitchOn:Z

    if-eqz v5, :cond_0

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, keyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    sget-object v5, Lcom/android/gallery3d/util/LocalBehaviorReport;->keyvalueConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Target"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v5, Lcom/android/gallery3d/util/LocalBehaviorReport;->keyvalueConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Action"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v5, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "com.android.gallery3d"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "V2.1"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, behaviorObject:Ljava/lang/Object;
    sget-object v5, Lcom/android/gallery3d/util/LocalBehaviorReport;->reportMethod:Ljava/lang/reflect/Method;

    sget-object v6, Lcom/android/gallery3d/util/LocalBehaviorReport;->behaviorBeanClass:Ljava/lang/Class;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    move v4, v3

    .line 90
    .end local v0           #behaviorObject:Ljava/lang/Object;
    .end local v2           #keyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 79
    .end local v4           #result:I
    .restart local v2       #keyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v3       #result:Z
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/InstantiationException;
    .end local v2           #keyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    move v4, v3

    .line 90
    .restart local v4       #result:I
    goto :goto_0

    .line 82
    .end local v4           #result:I
    .restart local v2       #keyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :catch_1
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
