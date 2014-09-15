.class public Lcom/android/camera/ui/SubSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingList;
.source "SubSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;,
        Lcom/android/camera/ui/SubSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private final DISABLED_COLOR:I

.field private final ENABLED_COLOR:I

.field protected mFadeIn:Landroid/view/animation/Animation;

.field protected mFadeOut:Landroid/view/animation/Animation;

.field private mListener:Lcom/android/camera/ui/SubSettingPopup$Listener;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field mlistAdapter:Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mlistAdapter:Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;

    .line 72
    const v0, 0x7f050014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mFadeIn:Landroid/view/animation/Animation;

    .line 73
    const v0, 0x7f050015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mFadeOut:Landroid/view/animation/Animation;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SubSettingPopup;->DISABLED_COLOR:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SubSettingPopup;->ENABLED_COLOR:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SubSettingPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/ui/SubSettingPopup;->DISABLED_COLOR:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SubSettingPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/ui/SubSettingPopup;->ENABLED_COLOR:I

    return v0
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 241
    return-void
.end method

.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v1, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;-><init>(Lcom/android/camera/ui/SubSettingPopup;Landroid/content/Context;Lcom/android/camera/IconListPreference;)V

    iput-object v1, p0, Lcom/android/camera/ui/SubSettingPopup;->mlistAdapter:Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;

    .line 217
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/camera/ui/SubSettingPopup;->mlistAdapter:Lcom/android/camera/ui/SubSettingPopup$BasicListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/ui/SubSettingPopup;->reloadPreference()V

    .line 220
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mListener:Lcom/android/camera/ui/SubSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mListener:Lcom/android/camera/ui/SubSettingPopup$Listener;

    invoke-interface {v0, p3}, Lcom/android/camera/ui/SubSettingPopup$Listener;->onSubSettingChanged(I)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SubSettingPopup;->dismissPopup()V

    .line 271
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 255
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v0       #index:I
    :cond_1
    const-string v1, "BasicSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/android/camera/ui/SubSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_0
.end method

.method public setArrorPosition(IIZ)V
    .locals 1
    .parameter "xArrow"
    .parameter "yArrow"
    .parameter "bAnimator"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/camera/ui/RotateListLayout;->mbLandscape:Z

    if-eqz v0, :cond_0

    .line 80
    iput p1, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetX:I

    .line 81
    iput p2, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetY:I

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetX:I

    .line 84
    iput p2, p0, Lcom/android/camera/ui/RotateListLayout;->mArrowInScreenOffsetY:I

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SubSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/camera/ui/SubSettingPopup;->mListener:Lcom/android/camera/ui/SubSettingPopup$Listener;

    .line 259
    return-void
.end method

.method public showPopup(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/RotateListLayout;->setOrientation(IZ)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/SubSettingPopup;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 230
    return-void
.end method
