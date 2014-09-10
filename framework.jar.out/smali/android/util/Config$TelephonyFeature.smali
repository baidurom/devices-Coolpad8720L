.class public final Landroid/util/Config$TelephonyFeature;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TelephonyFeature"
.end annotation


# static fields
.field public static final CONFIG_NETWORK_SELECTION_MANUAL_MRVL_FEATURE:Z = true

.field public static final CONFIG_OPERATOR_DISPLAY_MRVL_FEATURE:Z = true

.field public static final CONFIG_STK_MRVL_FEATURE:Z = true


# instance fields
.field final synthetic this$0:Landroid/util/Config;


# direct methods
.method public constructor <init>(Landroid/util/Config;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Landroid/util/Config$TelephonyFeature;->this$0:Landroid/util/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
