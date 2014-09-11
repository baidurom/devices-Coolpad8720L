.class public Lcom/marvell/fmradio/MainActivity;
.super Lcom/yulong/android/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/marvell/fmradio/a/d;
.implements Lcom/marvell/fmradio/a/h;
.implements Lcom/marvell/fmradio/a/n;
.implements Lcom/marvell/fmradio/av;


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioMainUI"

.field private static final U:I = 0x1

.field private static final V:I = 0x2

.field private static final W:I = 0x3

.field private static final X:I = 0x4

.field private static final Y:I = 0x5

.field private static final Z:I = 0x6

.field private static final aa:I = 0x7

.field private static final ab:I = 0x8

.field private static final ac:I = 0xb

.field private static final ad:I = 0xf

.field private static final ae:I = 0x11

.field private static final af:I = 0x12

.field private static final ag:I = 0x13

.field private static final ah:I = 0x14

.field private static final ai:I = 0x15

.field private static final aj:I = 0x16

.field private static final ak:I = 0x1c

.field private static final al:I = 0x20

.field private static final am:I = 0x21

.field private static final bF:I = 0xd

.field private static final bG:I = 0x10

.field private static final bH:I = 0x18

.field private static final bI:I = 0x19

.field private static final bJ:I = 0x1a

.field private static final cA:I = 0xc

.field private static final cB:I = 0x17

.field private static final cC:I = 0x1d

.field private static final cD:I = 0x1e

.field private static final cF:Ljava/lang/String; = "AddSearchChannels"

.field private static final cG:Ljava/lang/String; = "PresetFavorite"

.field private static cP:Landroid/widget/ImageView; = null

.field private static final cQ:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final cR:Ljava/lang/String; = "pause"

.field private static final cS:Ljava/lang/String; = "yulong.alert.start"

.field private static final cT:Ljava/lang/String; = "yulong.alert.finish"

.field public static final cs:Ljava/lang/String; = "work_index"

.field public static ct:I = 0x0

.field private static final cu:I = 0x1

.field private static final cv:I = 0x4

.field private static final cw:I = 0x6

.field private static final cx:I = 0x1f

.field private static final cy:I = 0x9

.field private static final cz:I = 0xa

.field private static de:Z = false

.field private static final dm:I = 0x6

.field private static dn:I = 0x0

.field private static final dq:Ljava/lang/String; = "/system/fonts/"

.field private static final dr:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final ds:Landroid/graphics/Typeface; = null

.field private static final dv:Ljava/lang/String; = "record_time"

.field private static final dw:Ljava/lang/String; = "fm_record_time"

.field private static final g:Ljava/lang/String; = "action_current_station_play"

.field private static final n:Ljava/lang/String; = "RenameFavorite"


# instance fields
.field private Q:Lcom/marvell/fmradio/az;

.field private aI:Landroid/content/SharedPreferences;

.field private cE:Landroid/app/ProgressDialog;

.field private cH:Z

.field private cI:Z

.field private cJ:Z

.field private cK:Z

.field private cL:Z

.field private cM:Z

.field cN:I

.field private cO:Z

.field private cU:Landroid/media/AudioManager;

.field private cV:J

.field private cW:I

.field private cX:Landroid/widget/TextView;

.field private cY:Landroid/widget/TextView;

.field private cZ:Landroid/app/FragmentManager;

.field private cq:Lcom/marvell/fmradio/r;

.field private dA:Landroid/content/BroadcastReceiver;

.field private final dB:Landroid/view/View$OnClickListener;

.field private dC:Landroid/view/View$OnClickListener;

.field private dD:Landroid/os/Handler;

.field private dE:Landroid/telephony/PhoneStateListener;

.field private da:Lcom/marvell/fmradio/a/s;

.field private db:Landroid/widget/ImageView;

.field private dc:Landroid/widget/TextView;

.field private dd:Landroid/widget/ImageView;

.field private df:Landroid/widget/ImageView;

.field private dg:Landroid/widget/TextView;

.field private dh:Landroid/widget/ImageView;

.field private di:Landroid/widget/ImageView;

.field private dj:Landroid/widget/ImageView;

.field private dk:Landroid/widget/ImageView;

.field private dl:[Landroid/widget/Button;

.field private do:Ljava/lang/String;

.field private dp:Ljava/lang/String;

.field private dt:Landroid/view/View;

.field private du:Lcom/marvell/fmradio/DialPane;

.field private dx:Landroid/view/View$OnTouchListener;

.field private dy:Landroid/view/View$OnClickListener;

.field private dz:Landroid/view/View$OnLongClickListener;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private v:Lcom/marvell/fmradio/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lcom/marvell/fmradio/MainActivity;->de:Z

    .line 202
    const/4 v0, -0x1

    sput v0, Lcom/marvell/fmradio/MainActivity;->dn:I

    .line 219
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/marvell/fmradio/MainActivity;->ds:Landroid/graphics/Typeface;

    .line 220
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lcom/yulong/android/base/BaseActivity;-><init>()V

    .line 133
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    .line 134
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    .line 135
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cJ:Z

    .line 136
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cK:Z

    .line 137
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cL:Z

    .line 138
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cM:Z

    .line 139
    iput v3, p0, Lcom/marvell/fmradio/MainActivity;->cN:I

    .line 142
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cO:Z

    .line 145
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    .line 147
    new-instance v0, Lcom/marvell/fmradio/as;

    invoke-direct {v0, p0, v2}, Lcom/marvell/fmradio/as;-><init>(Lcom/marvell/fmradio/MainActivity;Lcom/marvell/fmradio/f;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cU:Landroid/media/AudioManager;

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/marvell/fmradio/MainActivity;->cV:J

    .line 156
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->Q:Lcom/marvell/fmradio/az;

    .line 158
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cq:Lcom/marvell/fmradio/r;

    .line 160
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->mContext:Landroid/content/Context;

    .line 161
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->mToast:Landroid/widget/Toast;

    .line 163
    iput v3, p0, Lcom/marvell/fmradio/MainActivity;->cW:I

    .line 165
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cX:Landroid/widget/TextView;

    .line 168
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cY:Landroid/widget/TextView;

    .line 172
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cZ:Landroid/app/FragmentManager;

    .line 196
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/Button;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    .line 208
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->do:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    .line 229
    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->aI:Landroid/content/SharedPreferences;

    .line 590
    new-instance v0, Lcom/marvell/fmradio/f;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/f;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dx:Landroid/view/View$OnTouchListener;

    .line 729
    new-instance v0, Lcom/marvell/fmradio/g;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/g;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dy:Landroid/view/View$OnClickListener;

    .line 772
    new-instance v0, Lcom/marvell/fmradio/h;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/h;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dz:Landroid/view/View$OnLongClickListener;

    .line 875
    new-instance v0, Lcom/marvell/fmradio/i;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/i;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dA:Landroid/content/BroadcastReceiver;

    .line 1019
    new-instance v0, Lcom/marvell/fmradio/l;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/l;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    .line 1144
    new-instance v0, Lcom/marvell/fmradio/m;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/m;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dC:Landroid/view/View$OnClickListener;

    .line 1162
    new-instance v0, Lcom/marvell/fmradio/b;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/b;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    .line 1487
    new-instance v0, Lcom/marvell/fmradio/bf;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/bf;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dD:Landroid/os/Handler;

    .line 2027
    new-instance v0, Lcom/marvell/fmradio/bd;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/bd;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dE:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic A(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->ab()V

    return-void
.end method

.method static synthetic B(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cX:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/marvell/fmradio/MainActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/marvell/fmradio/MainActivity;->cV:J

    return-wide v0
.end method

.method static synthetic E(Lcom/marvell/fmradio/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->aI:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic F(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dg:Landroid/widget/TextView;

    return-object v0
.end method

.method private O()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 475
    const-string v0, "FMRadioMainUI"

    const-string v2, "<initUIComponent>"

    invoke-static {v0, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cY:Landroid/widget/TextView;

    .line 477
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cY:Landroid/widget/TextView;

    sget-object v2, Lcom/marvell/fmradio/MainActivity;->ds:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 478
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cX:Landroid/widget/TextView;

    .line 486
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dt:Landroid/view/View;

    .line 487
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dt:Landroid/view/View;

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dx:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/DialPane;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    .line 491
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v0, p0}, Lcom/marvell/fmradio/DialPane;->setOnDialPaneChangeListener(Lcom/marvell/fmradio/av;)V

    .line 494
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->db:Landroid/widget/ImageView;

    .line 497
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    .line 498
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    const v2, 0x7f050032

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 502
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dd:Landroid/widget/ImageView;

    .line 505
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->di:Landroid/widget/ImageView;

    .line 507
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dh:Landroid/widget/ImageView;

    .line 510
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dk:Landroid/widget/ImageView;

    .line 512
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dj:Landroid/widget/ImageView;

    .line 515
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    .line 517
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dg:Landroid/widget/TextView;

    .line 521
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v1

    .line 522
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    const/4 v3, 0x1

    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    .line 523
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    const/4 v3, 0x2

    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    .line 524
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    const/4 v3, 0x3

    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    .line 525
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    const/4 v3, 0x4

    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    .line 526
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    const/4 v3, 0x5

    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v2, v3

    move v0, v1

    .line 527
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dy:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dz:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_1
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->db:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dh:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->di:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dj:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dk:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    return-void
.end method

.method private Q()V
    .locals 5

    .prologue
    .line 551
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dh:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 578
    :cond_0
    return-void

    .line 556
    :cond_1
    iget-boolean v1, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    .line 558
    const-string v0, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<refreshImageButton> enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dh:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->di:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dj:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dk:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/DialPane;->setEnabled(Z)V

    .line 568
    invoke-virtual {p0, v1}, Lcom/marvell/fmradio/MainActivity;->setMenuEnabled(Z)V

    .line 570
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 572
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    :cond_2
    if-nez v1, :cond_3

    .line 574
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 570
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private R()F
    .locals 5

    .prologue
    .line 709
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 710
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 711
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 712
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getIniatialFreq> width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getIniatialFreq> heights="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    div-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    const v1, 0x40aaaab9

    div-float/2addr v0, v1

    const v1, 0x4438c000

    add-float/2addr v0, v1

    .line 722
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getIniatialFreq> iniatialFreq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return v0
.end method

.method private T()V
    .locals 2

    .prologue
    .line 858
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 859
    const-class v1, Lcom/marvell/fmradio/ListTestdeleteableActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 861
    return-void
.end method

.method private U()V
    .locals 2

    .prologue
    .line 867
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 868
    const-string v1, "action_current_station_play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dA:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/marvell/fmradio/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    return-void
.end method

.method private V()V
    .locals 5

    .prologue
    .line 893
    .line 895
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/c/e;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const v0, 0x7f05006c

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    :goto_0
    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/CharSequence;)V

    .line 919
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->K()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 901
    const v0, 0x7f05006b

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->N()Ljava/lang/String;

    move-result-object v0

    .line 905
    if-nez v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v0, v0, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v0}, Lcom/marvell/fmradio/c/b;->l(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    :cond_2
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v2, Lcom/marvell/fmradio/c/c;

    iget-object v3, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v3, v3, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->a(Lcom/marvell/fmradio/c/c;)I

    .line 911
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v2, Lcom/marvell/fmradio/c/c;

    iget-object v3, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v3, v3, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/marvell/fmradio/MainActivity;->dn:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->b(Lcom/marvell/fmradio/c/c;)I

    .line 915
    const v0, 0x7f05006d

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private W()V
    .locals 2

    .prologue
    .line 925
    new-instance v0, Lcom/marvell/fmradio/j;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/j;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    .line 943
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 944
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 945
    return-void
.end method

.method private X()V
    .locals 2

    .prologue
    .line 951
    new-instance v0, Lcom/marvell/fmradio/k;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/k;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    .line 976
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 977
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 978
    return-void
.end method

.method private Y()V
    .locals 0

    .prologue
    .line 982
    return-void
.end method

.method private Z()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1682
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1683
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1684
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1687
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/marvell/fmradio/MainActivity;->cV:J

    return-wide p1
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/DialPane;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    const/16 v11, 0x3a

    const-wide/16 v9, 0xa

    const/16 v8, 0x30

    .line 1821
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1822
    div-long v2, v0, v4

    .line 1823
    rem-long/2addr v0, v4

    .line 1824
    div-long v4, v0, v6

    .line 1825
    rem-long/2addr v0, v6

    .line 1826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1827
    cmp-long v7, v2, v9

    if-gez v7, :cond_0

    .line 1828
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1829
    :cond_0
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1832
    cmp-long v2, v4, v9

    if-gez v2, :cond_1

    .line 1833
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1835
    :cond_1
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1837
    cmp-long v2, v0, v9

    if-gez v2, :cond_2

    .line 1838
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1840
    :cond_2
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/marvell/fmradio/MainActivity;->q(I)V

    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/marvell/fmradio/MainActivity;->n(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mToast:Landroid/widget/Toast;

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1009
    const-string v0, "FMRadioMainUI"

    const-string v1, "<showToast> mToast != null"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1013
    :cond_1
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<showToast> toast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1778
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setWorkFreq>name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setWorkFreq>freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setWorkFreq>mPowerOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setWorkFreq>FMService.isPowerOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/marvell/fmradio/FMService;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    if-eqz v0, :cond_2

    .line 1784
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/marvell/fmradio/c/b;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cX:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cY:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/marvell/fmradio/c/b;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1790
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->S()V

    .line 1791
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1792
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1810
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->Q()V

    .line 1812
    return-void

    .line 1787
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1796
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cY:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1798
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    if-eqz v0, :cond_3

    .line 1799
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1801
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    const v1, 0x7f050033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1804
    :cond_3
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1806
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 995
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/marvell/fmradio/FMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 996
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    const-string v1, "com.marvell.fmradio.SPEAKER"

    if-ne p1, v1, :cond_0

    .line 998
    const-string v1, "speaker"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 999
    :cond_0
    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1000
    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    return p1
.end method

.method private aa()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1692
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1694
    const v1, 0x7f050049

    invoke-virtual {p0, v1}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05004b

    invoke-virtual {p0, v2}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050066

    new-instance v3, Lcom/marvell/fmradio/be;

    invoke-direct {v3, p0}, Lcom/marvell/fmradio/be;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1703
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1704
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private ab()V
    .locals 5

    .prologue
    .line 1708
    const v0, 0x7f050050

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f05004f

    invoke-virtual {p0, v2}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v2, v2, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v2}, Lcom/marvell/fmradio/c/b;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<createSearchialog>titleStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 1713
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    .line 1715
    :cond_0
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1716
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1717
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1718
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1719
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1720
    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter

    .prologue
    .line 77
    sput p0, Lcom/marvell/fmradio/MainActivity;->dn:I

    return p0
.end method

.method private ad()V
    .locals 3

    .prologue
    .line 1871
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPowerOff>mPowerOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPowerOff>mPowering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    if-eqz v0, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cU:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1878
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1883
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1884
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1885
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    const v1, 0x7f050033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1888
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    .line 1890
    const-string v0, "com.marvell.fmradio.WAIT_FOR"

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->n(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ae()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1898
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPowerOff>mPowerOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPowerOff>mPowering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPowerOff>mIsScanning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cL:Z

    if-nez v0, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1906
    :cond_0
    sget-boolean v0, Lcom/marvell/fmradio/MainActivity;->de:Z

    if-eqz v0, :cond_1

    .line 1907
    const-string v0, "com.marvell.fmradio.RECORD"

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->n(Ljava/lang/String;)V

    .line 1908
    sput-boolean v3, Lcom/marvell/fmradio/MainActivity;->de:Z

    .line 1909
    invoke-direct {p0, v3}, Lcom/marvell/fmradio/MainActivity;->g(Z)V

    .line 1912
    :cond_1
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cL:Z

    if-eqz v0, :cond_2

    .line 1913
    const-string v0, "com.marvell.fmradio.STOPSCAN"

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->n(Ljava/lang/String;)V

    .line 1915
    :cond_2
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    .line 1916
    iput-boolean v3, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    .line 1917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cJ:Z

    .line 1918
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1920
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1923
    :cond_3
    const-string v0, "com.marvell.fmradio.DISABLE"

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->n(Ljava/lang/String;)V

    .line 1924
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/marvell/fmradio/FMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1925
    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method static synthetic af()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/marvell/fmradio/MainActivity;->de:Z

    return v0
.end method

.method static synthetic b(Lcom/marvell/fmradio/MainActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/marvell/fmradio/MainActivity;->cW:I

    return p1
.end method

.method static synthetic b(Lcom/marvell/fmradio/MainActivity;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/marvell/fmradio/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/marvell/fmradio/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    return p1
.end method

.method static synthetic b(Lcom/marvell/fmradio/MainActivity;)[Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    return-object v0
.end method

.method static synthetic c(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/marvell/fmradio/MainActivity;->do:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/marvell/fmradio/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/marvell/fmradio/MainActivity;->cL:Z

    return p1
.end method

.method static synthetic d(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->V()V

    return-void
.end method

.method static synthetic d(Lcom/marvell/fmradio/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/marvell/fmradio/MainActivity;->cM:Z

    return p1
.end method

.method static synthetic e(Lcom/marvell/fmradio/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/marvell/fmradio/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/marvell/fmradio/MainActivity;->cO:Z

    return p1
.end method

.method static synthetic f(Lcom/marvell/fmradio/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->do:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/marvell/fmradio/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/marvell/fmradio/MainActivity;->cK:Z

    return p1
.end method

.method static synthetic g(Lcom/marvell/fmradio/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private g(Z)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 1850
    if-eqz p1, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1852
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1853
    new-instance v1, Lcom/marvell/fmradio/ba;

    invoke-direct {v1, p0}, Lcom/marvell/fmradio/ba;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1857
    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dg:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    return-void

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dg:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/marvell/fmradio/MainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/marvell/fmradio/MainActivity;->cJ:Z

    return p1
.end method

.method static synthetic h(Lcom/marvell/fmradio/MainActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cU:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic h(Lcom/marvell/fmradio/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/marvell/fmradio/MainActivity;->g(Z)V

    return-void
.end method

.method static synthetic h(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 77
    sput-boolean p0, Lcom/marvell/fmradio/MainActivity;->de:Z

    return p0
.end method

.method static synthetic i(Lcom/marvell/fmradio/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    return v0
.end method

.method static synthetic j(Lcom/marvell/fmradio/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    return v0
.end method

.method static synthetic k(Lcom/marvell/fmradio/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cM:Z

    return v0
.end method

.method static synthetic l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->ae()V

    return-void
.end method

.method static synthetic n(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->ad()V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 986
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/marvell/fmradio/FMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 987
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v1, "com.marvell.fmradio.SPEAKER"

    if-ne p1, v1, :cond_0

    .line 989
    const-string v1, "speaker"

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cO:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 990
    :cond_0
    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 991
    return-void
.end method

.method static synthetic o(Lcom/marvell/fmradio/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cO:Z

    return v0
.end method

.method static synthetic p(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dd:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/a/s;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->da:Lcom/marvell/fmradio/a/s;

    return-object v0
.end method

.method private q(I)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x7f04

    .line 669
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onTunedFrequencyChanged> freq =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/16 v0, 0x43d

    if-gt p1, v0, :cond_0

    const/16 v0, 0x36b

    if-ge p1, v0, :cond_1

    .line 672
    :cond_0
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onTunedFrequencyChanged> return"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :goto_0
    return-void

    .line 677
    :cond_1
    int-to-float v0, p1

    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->R()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4015555714b9cb68L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    neg-int v0, v0

    .line 679
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onTunedFrequencyChanged> xLocation=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v2}, Lcom/marvell/fmradio/DialPane;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v3}, Lcom/marvell/fmradio/DialPane;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v4}, Lcom/marvell/fmradio/DialPane;->getTop()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/marvell/fmradio/DialPane;->a(IIII)V

    .line 684
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v0}, Lcom/marvell/fmradio/DialPane;->invalidate()V

    .line 687
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 688
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1}, Lcom/marvell/fmradio/c/e;->K()I

    move-result v1

    if-nez v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 687
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->k(Ljava/lang/String;)Lcom/marvell/fmradio/c/c;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->k(Ljava/lang/String;)Lcom/marvell/fmradio/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 694
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 697
    :cond_3
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 701
    :cond_4
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onTunedFrequencyChanged> end"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic r(Lcom/marvell/fmradio/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cK:Z

    return v0
.end method

.method static synthetic s(Lcom/marvell/fmradio/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dD:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lcom/marvell/fmradio/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cE:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic u(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->Q()V

    return-void
.end method

.method static synthetic v(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->W()V

    return-void
.end method

.method static synthetic w(Lcom/marvell/fmradio/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/marvell/fmradio/MainActivity;->cW:I

    return v0
.end method

.method static synthetic x(Lcom/marvell/fmradio/MainActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/marvell/fmradio/MainActivity;->cW:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/marvell/fmradio/MainActivity;->cW:I

    return v0
.end method

.method static synthetic y(Lcom/marvell/fmradio/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cJ:Z

    return v0
.end method

.method static synthetic z(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public S()V
    .locals 6

    .prologue
    const v5, 0x7f020001

    .line 810
    const-string v0, "FMRadioMainUI"

    const-string v1, "<setupPresetLayout> IN"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->K()I

    move-result v0

    .line 813
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<setupPresetLayout>\uff1a numStation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 818
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 821
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<setupPresetLayout>stationIdex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->k(Ljava/lang/String;)Lcom/marvell/fmradio/c/c;

    move-result-object v1

    .line 825
    if-eqz v1, :cond_2

    .line 826
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<setupPresetLayout>stationFreg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<setupPresetLayout>station="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<setupPresetLayout>posIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v2, v1, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 835
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 817
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 838
    :cond_1
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 840
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 844
    :cond_2
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 846
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dl:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 852
    :cond_3
    return-void
.end method

.method public ac()V
    .locals 2

    .prologue
    .line 1726
    const-string v0, "FMRadioMainUI"

    const-string v1, "cancelSearch"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v0, "com.marvell.fmradio.STOPSCAN"

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->n(Ljava/lang/String;)V

    .line 1728
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1552
    const-string v0, "FMRadioMainUI"

    const-string v1, "<showRenameFavoriteDialog>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cZ:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->do:Ljava/lang/String;

    invoke-static {v1}, Lcom/marvell/fmradio/a/o;->f(Ljava/lang/String;)Lcom/marvell/fmradio/a/o;

    move-result-object v1

    .line 1558
    const-string v2, "RenameFavorite"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1559
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1560
    return-void
.end method

.method public h()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1623
    const-string v0, "FMRadioMainUI"

    const-string v1, "<renameFavorite>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RenameFavorite"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/a/o;

    .line 1626
    if-nez v0, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    invoke-virtual {v0}, Lcom/marvell/fmradio/a/o;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1631
    if-eqz v0, :cond_0

    .line 1634
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/view/edittext/EditTextEx;

    .line 1637
    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {v0}, Lcom/yulong/android/view/edittext/EditTextEx;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1642
    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1646
    :cond_2
    invoke-virtual {v0}, Lcom/yulong/android/view/edittext/EditTextEx;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 1647
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameFavorite selectFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 1652
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameFavorite index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    if-eq v1, v5, :cond_3

    .line 1654
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v3, Lcom/marvell/fmradio/c/c;

    iget-object v4, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/marvell/fmradio/c/e;->a(ILcom/marvell/fmradio/c/c;)I

    .line 1657
    :cond_3
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->l(Ljava/lang/String;)I

    move-result v1

    .line 1658
    const-string v2, "FMRadioMainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameFavorite fIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    if-eq v1, v5, :cond_4

    .line 1660
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v3, Lcom/marvell/fmradio/c/c;

    iget-object v4, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    sget v5, Lcom/marvell/fmradio/MainActivity;->dn:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/marvell/fmradio/c/e;->b(ILcom/marvell/fmradio/c/c;)I

    .line 1665
    :cond_4
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1666
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v2, v2, Lcom/marvell/fmradio/c/e;->ci:I

    if-ne v2, v1, :cond_5

    .line 1667
    invoke-direct {p0, v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1669
    :cond_5
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1670
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->S()V

    goto/16 :goto_0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 1676
    const-string v0, "FMRadioMainUI"

    const-string v1, "<renameFavoriteCancel>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1678
    return-void
.end method

.method public l()V
    .locals 5

    .prologue
    .line 1567
    const-string v0, "FMRadioMainUI"

    const-string v1, "<replaceFavorite>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<replaceFavorite>mCurrentStation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v2, v2, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/c/e;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    const v0, 0x7f05006c

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1573
    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/CharSequence;)V

    .line 1592
    :goto_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1593
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/c/e;->l(Ljava/lang/String;)I

    move-result v0

    .line 1578
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1579
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->m(I)V

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->N()Ljava/lang/String;

    move-result-object v0

    .line 1582
    if-nez v0, :cond_2

    .line 1583
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v0, v0, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v0}, Lcom/marvell/fmradio/c/b;->l(I)Ljava/lang/String;

    move-result-object v0

    .line 1585
    :cond_2
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v2, Lcom/marvell/fmradio/c/c;

    iget-object v3, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v3, v3, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->a(Lcom/marvell/fmradio/c/c;)I

    .line 1587
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v2, Lcom/marvell/fmradio/c/c;

    iget-object v3, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v3, v3, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/marvell/fmradio/MainActivity;->dn:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/marvell/fmradio/c/e;->b(Lcom/marvell/fmradio/c/c;)I

    .line 1590
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->S()V

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 1600
    const-string v0, "FMRadioMainUI"

    const-string v1, "<renameFavoriteDialog>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->e()V

    .line 1602
    return-void
.end method

.method public n()V
    .locals 4

    .prologue
    .line 1609
    const-string v0, "FMRadioMainUI"

    const-string v1, "<cleanFavorite>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/c/e;->l(Ljava/lang/String;)I

    move-result v0

    .line 1611
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<cleanFavorite>index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->m(I)V

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->S()V

    .line 1616
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1543
    invoke-static {p1}, Lcom/marvell/fmradio/a/m;->e(Ljava/lang/String;)Lcom/marvell/fmradio/a/m;

    move-result-object v0

    .line 1545
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PresetFavorite"

    invoke-virtual {v0, v1, v2}, Lcom/marvell/fmradio/a/m;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1546
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-super {p0, p1}, Lcom/yulong/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onCreate> IN"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mContext:Landroid/content/Context;

    .line 238
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->setVolumeControlStream(I)V

    .line 240
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cU:Landroid/media/AudioManager;

    .line 243
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->U()V

    .line 246
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "FMRadioMainUI"

    const-string v1, "onCreate: isAirPlaneMode"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const v0, 0x7f050057

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->finish()V

    .line 296
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dC:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->setBackOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cZ:Landroid/app/FragmentManager;

    .line 259
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->setContentView(I)V

    .line 262
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->O()V

    .line 265
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->P()V

    .line 267
    invoke-static {}, Lcom/marvell/fmradio/c/e;->I()Lcom/marvell/fmradio/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    .line 269
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->Y()V

    .line 271
    invoke-static {}, Lcom/marvell/fmradio/az;->H()Lcom/marvell/fmradio/az;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->Q:Lcom/marvell/fmradio/az;

    .line 272
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->Q:Lcom/marvell/fmradio/az;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/marvell/fmradio/az;->a(Landroid/os/Handler;)V

    .line 273
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->a(Landroid/os/Handler;)V

    .line 274
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/marvell/fmradio/FMService;->setContext(Landroid/content/Context;)V

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v1, "yulong.alert.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "yulong.alert.finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->setActionBarBackgroundDrawableResource(I)V

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 289
    const-string v0, "record_time"

    invoke-virtual {p0, v0, v3}, Lcom/marvell/fmradio/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->aI:Landroid/content/SharedPreferences;

    .line 291
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 292
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->dE:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 295
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onCreate> OUT"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 1474
    packed-switch p1, :pswitch_data_0

    .line 1482
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1476
    :pswitch_1
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->aa()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1479
    :pswitch_2
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->Z()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1474
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 412
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onCreateMenu>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 414
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 416
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 417
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 390
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onDestroy> "

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dA:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dA:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dA:Landroid/content/BroadcastReceiver;

    .line 397
    :cond_0
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onDestroy> mPowerOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onDestroy> mPowering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cI:Z

    if-nez v0, :cond_1

    .line 400
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 402
    :cond_1
    invoke-super {p0}, Lcom/yulong/android/base/BaseActivity;->onDestroy()V

    .line 403
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 430
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onMenuItemSelected> IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 434
    :pswitch_1
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cL:Z

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/marvell/fmradio/MainActivity;->cW:I

    .line 436
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->ab()V

    .line 437
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 438
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 437
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 440
    :cond_1
    iput-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cL:Z

    .line 441
    const-string v0, "com.marvell.fmradio.SCANALL"

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :pswitch_2
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 448
    const v0, 0x7f050055

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 450
    :cond_2
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->Q()V

    .line 452
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->T()V

    goto :goto_0

    .line 461
    :pswitch_3
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->J()V

    .line 462
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->S()V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 364
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onPause> "

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/marvell/fmradio/MainActivity;->removeDialog(I)V

    .line 367
    invoke-super {p0}, Lcom/yulong/android/base/BaseActivity;->onPause()V

    .line 368
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 602
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    if-nez v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v0, v5}, Lcom/marvell/fmradio/DialPane;->setEnabled(Z)V

    .line 606
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onProgressChanged> progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    if-eqz p1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v0, v5}, Lcom/marvell/fmradio/DialPane;->setEnabled(Z)V

    .line 611
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v0}, Lcom/marvell/fmradio/DialPane;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 614
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->R()F

    move-result v1

    int-to-float v0, v0

    const v2, 0x40638e4c

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 615
    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    .line 617
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onProgressChanged> tem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    float-to-double v1, v0

    const-wide v3, 0x4055e00000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    .line 620
    const/high16 v0, 0x42af

    .line 625
    :cond_2
    :goto_1
    const-string v1, "%1.1f"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 627
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onProgressChanged> str:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    if-eqz v0, :cond_0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 634
    if-eqz v0, :cond_0

    .line 638
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<onProgressChanged> frequency:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onProgressChanged> mIsTune:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/marvell/fmradio/MainActivity;->cM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->du:Lcom/marvell/fmradio/DialPane;

    invoke-virtual {v0, v5}, Lcom/marvell/fmradio/DialPane;->setEnabled(Z)V

    goto/16 :goto_0

    .line 621
    :cond_4
    float-to-double v1, v0

    const-wide v3, 0x405b200000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 622
    const/high16 v0, 0x42d9

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, 0x3e8

    .line 306
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onResume> "

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cU:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1d

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :cond_0
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onResume>FMService.isPowerOn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/marvell/fmradio/FMService;->o()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onResume>mPowerOn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/marvell/fmradio/FMService;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    .line 324
    iget-boolean v0, p0, Lcom/marvell/fmradio/MainActivity;->cH:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->df:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    :cond_1
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onResume>FMService.isRecording="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/marvell/fmradio/FMService;->T:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<onResume>mRecord="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/marvell/fmradio/MainActivity;->de:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-boolean v0, Lcom/marvell/fmradio/FMService;->T:Z

    sput-boolean v0, Lcom/marvell/fmradio/MainActivity;->de:Z

    .line 334
    sget-boolean v0, Lcom/marvell/fmradio/MainActivity;->de:Z

    if-eqz v0, :cond_3

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 337
    iget-object v4, p0, Lcom/marvell/fmradio/MainActivity;->aI:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_2

    .line 338
    iget-object v4, p0, Lcom/marvell/fmradio/MainActivity;->aI:Landroid/content/SharedPreferences;

    const-string v5, "fm_record_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 339
    iget-wide v6, p0, Lcom/marvell/fmradio/MainActivity;->cV:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 340
    iput-wide v4, p0, Lcom/marvell/fmradio/MainActivity;->cV:J

    .line 343
    :cond_2
    iget-wide v4, p0, Lcom/marvell/fmradio/MainActivity;->cV:J

    sub-long v4, v0, v4

    .line 344
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dg:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->dg:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/marvell/fmradio/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 347
    new-instance v1, Lcom/marvell/fmradio/ba;

    invoke-direct {v1, p0}, Lcom/marvell/fmradio/ba;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 348
    new-instance v1, Lcom/marvell/fmradio/ba;

    invoke-direct {v1, p0}, Lcom/marvell/fmradio/ba;-><init>(Lcom/marvell/fmradio/MainActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 352
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->N()Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    invoke-super {p0}, Lcom/yulong/android/base/BaseActivity;->onResume()V

    .line 360
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onStart> "

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-super {p0}, Lcom/yulong/android/base/BaseActivity;->onStart()V

    .line 302
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "FMRadioMainUI"

    const-string v1, "<onStop> "

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-super {p0}, Lcom/yulong/android/base/BaseActivity;->onStop()V

    .line 375
    return-void
.end method

.method public r(I)V
    .locals 4
    .parameter

    .prologue
    .line 1507
    const-string v0, "FMRadioMainUI"

    const-string v1, "<showAddSearchChannelsDialog>"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    if-gtz p1, :cond_0

    .line 1509
    const-string v0, "FMRadioMainUI"

    const-string v1, "<showAddSearchChannelsDialog>searchedNum is 0"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-direct {p0, v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/String;I)V

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f05004e

    invoke-virtual {p0, v1}, Lcom/marvell/fmradio/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/CharSequence;)V

    .line 1537
    :goto_0
    return-void

    .line 1519
    :cond_0
    new-instance v0, Lcom/marvell/fmradio/r;

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v2}, Lcom/marvell/fmradio/c/e;->L()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/marvell/fmradio/r;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cq:Lcom/marvell/fmradio/r;

    .line 1524
    :try_start_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->cZ:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1526
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->cq:Lcom/marvell/fmradio/r;

    invoke-static {v1, p1}, Lcom/marvell/fmradio/a/s;->a(Lcom/marvell/fmradio/r;I)Lcom/marvell/fmradio/a/s;

    move-result-object v1

    .line 1528
    const-string v2, "AddSearchChannels"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1529
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1531
    iput-object v1, p0, Lcom/marvell/fmradio/MainActivity;->da:Lcom/marvell/fmradio/a/s;

    .line 1532
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    const-string v1, "FMRadioMainUI"

    const-string v2, "<showAddSearchChannelsDialog>IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public x()V
    .locals 5

    .prologue
    .line 1734
    const-string v0, "FMRadioMainUI"

    const-string v1, " addChannelsContinue.onClick ok to continue"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->K()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1736
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->p(I)Lcom/marvell/fmradio/c/c;

    move-result-object v1

    .line 1737
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v3, Lcom/marvell/fmradio/c/c;

    iget-object v4, v1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    iget-object v1, v1, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/marvell/fmradio/c/e;->a(Lcom/marvell/fmradio/c/c;)I

    .line 1735
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1744
    :cond_0
    invoke-direct {p0}, Lcom/marvell/fmradio/MainActivity;->Q()V

    .line 1747
    invoke-virtual {p0}, Lcom/marvell/fmradio/MainActivity;->S()V

    .line 1748
    return-void
.end method

.method public y()V
    .locals 5

    .prologue
    .line 1754
    const-string v0, "FMRadioMainUI"

    const-string v1, " addChannelsCancel"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1757
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->delete(I)V

    .line 1756
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->K()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1760
    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v1, v0}, Lcom/marvell/fmradio/c/e;->p(I)Lcom/marvell/fmradio/c/c;

    move-result-object v1

    .line 1761
    iget-object v2, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    new-instance v3, Lcom/marvell/fmradio/c/c;

    iget-object v4, v1, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    iget-object v1, v1, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/marvell/fmradio/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/marvell/fmradio/c/e;->a(Lcom/marvell/fmradio/c/c;)I

    .line 1759
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1763
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/marvell/fmradio/MainActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-direct {p0, v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Ljava/lang/String;I)V

    .line 1769
    return-void
.end method
