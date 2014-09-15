.class public Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
.super Ljava/lang/Object;
.source "SwitchFaceDataHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/SwitchFaceDataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceInfo"
.end annotation


# instance fields
.field public faceIndex:I

.field public faceNum:I

.field public faceRects:[Landroid/graphics/Rect;

.field public rotateOrientation:I

.field public selected:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
