.class public final Lcom/android/gallery3d/util/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field static mDisplayMetric:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/Environment;->mDisplayMetric:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/gallery3d/util/Environment;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 44
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/util/Environment;->mDisplayMetric:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    sget-object v1, Lcom/android/gallery3d/util/Environment;->mDisplayMetric:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
