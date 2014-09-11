.class public Lcom/marvell/fmradio/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/marvell/fmmanager/FMRadioListener;


# static fields
.field private static final U:I = 0x1

.field private static final V:I = 0x2

.field private static bC:Lcom/marvell/fmradio/az; = null

.field private static bD:I = 0x0

.field private static bE:I = 0x0

.field private static final bF:I = 0xd

.field private static final bG:I = 0x10

.field private static final bH:I = 0x18

.field private static final bI:I = 0x19

.field private static final bJ:I = 0x1a

.field private static mName:Ljava/lang/String;

.field private static mValue:I


# instance fields
.field private flag:Z

.field private mHandler:Landroid/os/Handler;

.field private v:Lcom/marvell/fmradio/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/marvell/fmradio/az;->bC:Lcom/marvell/fmradio/az;

    .line 36
    sput v1, Lcom/marvell/fmradio/az;->bD:I

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/marvell/fmradio/az;->mName:Ljava/lang/String;

    .line 38
    sput v1, Lcom/marvell/fmradio/az;->bE:I

    .line 39
    sput v1, Lcom/marvell/fmradio/az;->mValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/marvell/fmradio/c/e;->I()Lcom/marvell/fmradio/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/marvell/fmradio/az;->flag:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static H()Lcom/marvell/fmradio/az;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/marvell/fmradio/az;->bC:Lcom/marvell/fmradio/az;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/marvell/fmradio/az;

    invoke-direct {v0}, Lcom/marvell/fmradio/az;-><init>()V

    sput-object v0, Lcom/marvell/fmradio/az;->bC:Lcom/marvell/fmradio/az;

    .line 55
    :cond_0
    sget-object v0, Lcom/marvell/fmradio/az;->bC:Lcom/marvell/fmradio/az;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method public onFoundChannel(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/marvell/fmradio/az;->flag:Z

    .line 60
    sput p1, Lcom/marvell/fmradio/az;->bD:I

    .line 62
    iget-object v2, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v2}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v3, v2}, Lcom/marvell/fmradio/c/e;->o(I)Lcom/marvell/fmradio/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    sget v4, Lcom/marvell/fmradio/az;->bD:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 69
    :cond_0
    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v2, v3, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    :cond_1
    return-void

    .line 62
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public onGetRdsPs([B)V
    .locals 5
    .parameter

    .prologue
    .line 78
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 80
    sput-object v0, Lcom/marvell/fmradio/az;->mName:Ljava/lang/String;

    .line 81
    iget-boolean v0, p0, Lcom/marvell/fmradio/az;->flag:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1}, Lcom/marvell/fmradio/c/e;->L()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/marvell/fmradio/az;->bD:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/e;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/marvell/fmradio/c/c;

    sget v3, Lcom/marvell/fmradio/az;->bD:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/marvell/fmradio/az;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/marvell/fmradio/c/e;->a(ILcom/marvell/fmradio/c/c;)I

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1}, Lcom/marvell/fmradio/c/e;->L()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    iget v2, v2, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/e;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/marvell/fmradio/c/c;

    iget-object v3, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    iget v3, v3, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/marvell/fmradio/az;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/marvell/fmradio/c/e;->a(ILcom/marvell/fmradio/c/c;)I

    .line 90
    iget-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGetRssi(I)V
    .locals 2
    .parameter

    .prologue
    .line 96
    sput p1, Lcom/marvell/fmradio/az;->bE:I

    .line 97
    iget-object v0, p0, Lcom/marvell/fmradio/az;->v:Lcom/marvell/fmradio/c/e;

    sget v1, Lcom/marvell/fmradio/az;->bE:I

    iput v1, v0, Lcom/marvell/fmradio/c/e;->rssi:I

    .line 99
    return-void
.end method

.method public onMonoStereoChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method public onRecordingStop(I)V
    .locals 3
    .parameter

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScanFinished()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/marvell/fmradio/az;->flag:Z

    .line 107
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/az;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method
