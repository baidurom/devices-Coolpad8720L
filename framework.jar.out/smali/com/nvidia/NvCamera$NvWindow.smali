.class public Lcom/nvidia/NvCamera$NvWindow;
.super Ljava/lang/Object;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvWindow"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 168
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 169
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 170
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 171
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 172
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "w"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 176
    iput p2, p0, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 177
    iput p3, p0, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 178
    iput p4, p0, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 179
    iput p5, p0, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 180
    return-void
.end method
