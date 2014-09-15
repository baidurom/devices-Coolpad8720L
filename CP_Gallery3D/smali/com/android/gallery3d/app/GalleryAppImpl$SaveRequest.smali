.class Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
.super Ljava/lang/Object;
.source "GalleryAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GalleryAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field data:[B

.field height:I

.field loc:Landroid/location/Location;

.field mbAbandom:Z

.field orientation:I

.field thumbnailWidth:I

.field title:Ljava/lang/String;

.field uri:Landroid/net/Uri;

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/GalleryAppImpl$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;-><init>()V

    return-void
.end method
