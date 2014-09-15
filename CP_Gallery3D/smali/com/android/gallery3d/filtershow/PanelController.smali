.class public Lcom/android/gallery3d/filtershow/PanelController;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/PanelController$ViewType;,
        Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;,
        Lcom/android/gallery3d/filtershow/PanelController$Panel;
    }
.end annotation


# static fields
.field private static COMPONENT:I

.field private static HORIZONTAL_MOVE:I

.field private static PANEL:I

.field private static VERTICAL_MOVE:I


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mCurrentPanel:Landroid/view/View;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private final mPanels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$Panel;",
            ">;"
        }
    .end annotation
.end field

.field private mRowPanel:Landroid/view/View;

.field private mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$ViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    .line 55
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    .line 56
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    .line 57
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    .line 290
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    .line 291
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    .line 292
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 293
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 294
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 295
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 296
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    return-object v0
.end method

.method private showCropPopupMenu(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 4
    .parameter "anchor"

    .prologue
    .line 538
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 539
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120005

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 540
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/PanelController$2;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 547
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 548
    return-void
.end method

.method private showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 4
    .parameter "curves"
    .parameter "anchor"

    .prologue
    .line 524
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 525
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120006

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 526
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/filtershow/PanelController$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 534
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 535
    return-void
.end method


# virtual methods
.method public addComponent(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "aPanel"
    .parameter "component"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 315
    .local v0, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->addView(Landroid/view/View;)V

    .line 319
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v2, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v3, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v2, p0, p2, v3}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addImageView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 325
    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 326
    .local v0, imageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V

    .line 327
    return-void
.end method

.method public addPanel(Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "container"
    .parameter "position"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/PanelController$Panel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 303
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public ensureFilter(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    .line 457
    .local v2, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 458
    .local v1, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v1, :cond_0

    .line 461
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 462
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 463
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 464
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 467
    .end local v0           #copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0027

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 471
    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 475
    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0028

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 477
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 483
    :cond_3
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0020

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 485
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 487
    :cond_4
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 489
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 491
    :cond_5
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 493
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 495
    :cond_6
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0025

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 497
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 499
    :cond_7
    if-nez v1, :cond_8

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e001e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 501
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 503
    :cond_8
    if-nez v1, :cond_9

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 505
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 507
    :cond_9
    if-nez v1, :cond_a

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0026

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 510
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 512
    :cond_a
    if-nez v1, :cond_b

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0029

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 514
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 516
    :cond_b
    if-nez v1, :cond_c

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 518
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 520
    :cond_c
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 521
    return-void
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 338
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    :cond_0
    const/4 v2, 0x1

    .line 346
    :goto_0
    return v2

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 342
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 343
    .local v1, position:I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 344
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 345
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 346
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    .line 378
    .local v0, type:Lcom/android/gallery3d/filtershow/PanelController$ViewType;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    if-ne v1, v2, :cond_1

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    if-ne v1, v2, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNewValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->onNewValue(I)V

    .line 351
    return-void
.end method

.method public resetParameters()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 335
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 300
    return-void
.end method

.method public setCurrentPanel(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .parameter "filter"
    .parameter "name"

    .prologue
    .line 447
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 448
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 449
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 450
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 452
    return-object p1
.end method

.method public setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0
    .parameter "imageShow"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 373
    return-void
.end method

.method public setRowPanel(Landroid/view/View;)V
    .locals 0
    .parameter "rowPanel"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 363
    return-void
.end method

.method public setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter "context"
    .parameter "utilityPanel"
    .parameter "textView"
    .parameter "aspectButton"
    .parameter "curvesButton"

    .prologue
    .line 367
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 369
    return-void
.end method

.method public showComponent(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const v10, 0x7f100064

    const/4 v9, 0x0

    const v8, 0x7f10005f

    const/4 v7, 0x1

    .line 551
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 552
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 553
    .local v2, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    const/4 v5, -0x1

    sget v6, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v2, v5, v6}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 554
    .local v0, anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 555
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    .line 556
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->select()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 557
    .local v1, anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 561
    .end local v0           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v1           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v2           #current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f10006e

    if-ne v5, v6, :cond_1

    .line 562
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 563
    .local v3, curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    check-cast p1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    .end local p1
    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    .line 721
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    :goto_0
    return-void

    .line 567
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f10006d

    if-ne v5, v6, :cond_2

    .line 568
    check-cast p1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCropPopupMenu(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    goto :goto_0

    .line 572
    .restart local p1
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v5, :cond_3

    .line 573
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->unselect()V

    .line 575
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 576
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideCurvesButtons()V

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 720
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    goto :goto_0

    .line 579
    :pswitch_1
    const v5, 0x7f100067

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 580
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e001d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto :goto_1

    .line 586
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f100060

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 587
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e002a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 588
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    goto :goto_1

    .line 592
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_3
    const v5, 0x7f100061

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 593
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e002b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 594
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 595
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 596
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iget-boolean v5, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    if-eqz v5, :cond_4

    .line 597
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyOriginal()V

    .line 598
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iput-boolean v9, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 600
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 604
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_4
    const v5, 0x7f100062

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 605
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e002c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 606
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_5
    const v5, 0x7f100063

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 611
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e002d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 612
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 613
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    goto/16 :goto_1

    .line 617
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 618
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0028

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 619
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 624
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 625
    .restart local v3       #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0027

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 626
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 627
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 628
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showCurvesButtons()V

    .line 629
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 630
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 641
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 642
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0020

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 643
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 648
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 649
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0022

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 650
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 655
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 656
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0023

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 657
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 663
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0024

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 664
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 665
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 666
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 670
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 671
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0025

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 672
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 677
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 678
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e001e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 679
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 684
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 685
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0021

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 686
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 691
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 692
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0026

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 693
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 698
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 699
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0029

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 700
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 705
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_11
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 709
    :pswitch_12
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v5

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    if-eqz v5, :cond_5

    .line 710
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto/16 :goto_1

    .line 712
    :cond_5
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_6

    .line 713
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 715
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    goto/16 :goto_1

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x7f10006d
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_d
        :pswitch_6
        :pswitch_8
        :pswitch_f
        :pswitch_e
        :pswitch_7
        :pswitch_c
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public showDefaultImageView()V
    .locals 2

    .prologue
    .line 399
    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 400
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 401
    return-void
.end method

.method public showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 4
    .parameter "id"

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, image:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 388
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 389
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    .line 390
    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    goto :goto_0

    .line 392
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 395
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method public showPanel(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, -0x1

    .line 404
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 405
    const/4 v6, 0x0

    .line 406
    .local v6, removedUtilityPanel:Z
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 407
    .local v3, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 408
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->unselect()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 409
    .local v1, anim1:Landroid/view/ViewPropertyAnimator;
    const/4 v6, 0x1

    .line 410
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 411
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_0

    .line 412
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v3, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 413
    .local v2, anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 414
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 418
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_1

    .line 440
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 423
    .local v5, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v6, :cond_4

    .line 424
    const/4 v4, -0x1

    .line 425
    .local v4, currentPos:I
    if-eqz v3, :cond_2

    .line 426
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v4

    .line 428
    :cond_2
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v5, v4, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 429
    .restart local v1       #anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 430
    if-eqz v3, :cond_3

    .line 431
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v7

    sget v8, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v3, v7, v8}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 432
    .restart local v2       #anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 438
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v4           #currentPos:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 439
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    goto :goto_0

    .line 435
    :cond_4
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v5, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 436
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method
