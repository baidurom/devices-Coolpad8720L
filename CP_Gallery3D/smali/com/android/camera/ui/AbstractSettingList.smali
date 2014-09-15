.class public abstract Lcom/android/camera/ui/AbstractSettingList;
.super Lcom/android/camera/ui/RotateListLayout;
.source "AbstractSettingList.java"


# instance fields
.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/camera/ui/RotateListLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f100015

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingList;->mTitle:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f100016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingList;->mSettingList:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method
