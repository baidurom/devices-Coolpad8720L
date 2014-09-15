.class Lcom/android/camera/PhotoModule$UriRequest;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriRequest"
.end annotation


# instance fields
.field Height:I

.field Width:I

.field dateTaken:J

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2180
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$UriRequest;-><init>()V

    return-void
.end method
