.class Lcom/android/camera/VideoModule$SaveRequest;
.super Ljava/lang/Object;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field data:[B

.field height:I

.field loc:Landroid/location/Location;

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/camera/VideoModule$SaveRequest;-><init>()V

    return-void
.end method
