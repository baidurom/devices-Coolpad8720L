.class public Lcom/android/gallery3d/ui/ShareView;
.super Ljava/lang/Object;
.source "ShareView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    }
.end annotation


# static fields
.field private static isShowing:Z


# instance fields
.field private final SHARE_FILE_NAME:Ljava/lang/String;

.field mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mIconSize:I

.field private mPopView:Landroid/view/View;

.field private mPopWindow:Landroid/widget/PopupWindow;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mScreenMinValue:I

.field private mShareAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShareIntent:Landroid/content/Intent;

.field private mShareListView:Lcom/android/gallery3d/ui/GeneralListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/ui/ShareView;->isShowing:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/gallery3d/ui/ShareView;->mIconSize:I

    .line 60
    const-string v0, "share_click_history"

    iput-object v0, p0, Lcom/android/gallery3d/ui/ShareView;->SHARE_FILE_NAME:Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/ShareView;->init(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;)V

    .line 70
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->initShareAppInfoList()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/ShareView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/ShareView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ShareView;->writePreference(Ljava/lang/String;)V

    return-void
.end method

.method private convertList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 335
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    .line 336
    .local v0, each:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 337
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "MENU_ICON"

    iget-object v5, v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v4, "MENU_TEXT"

    iget-object v5, v0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v0           #each:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    :cond_0
    return-object v2
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "drawable"

    .prologue
    const/4 v7, 0x0

    .line 318
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 319
    .local v4, w:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 322
    .local v3, h:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 324
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 325
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    return-object v0

    .line 322
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getListMinWidth()I
    .locals 2

    .prologue
    .line 273
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 274
    .local v0, metric:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method private getShareAppInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private init(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;)V
    .locals 5
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 75
    iput-object p2, p0, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    .line 76
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 77
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mPopView:Landroid/view/View;

    .line 78
    iget-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mPopView:Landroid/view/View;

    const v3, 0x7f1000aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/GeneralListView;

    iput-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mShareListView:Lcom/android/gallery3d/ui/GeneralListView;

    .line 79
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareView;->mPopView:Landroid/view/View;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    .line 80
    iget-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "share_click_history"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mPrefs:Landroid/content/SharedPreferences;

    .line 82
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    .local v1, metric:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/gallery3d/ui/ShareView;->mIconSize:I

    .line 85
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/ShareView;->mScreenMinValue:I

    .line 86
    sput-boolean v4, Lcom/android/gallery3d/ui/ShareView;->isShowing:Z

    .line 87
    return-void
.end method

.method private initShareAppInfoList()V
    .locals 10

    .prologue
    .line 129
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->queryIntentShareApp()Ljava/util/List;

    move-result-object v6

    .line 132
    .local v6, shareApp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 133
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 134
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    .line 137
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 139
    .local v5, pManager:Landroid/content/pm/PackageManager;
    const-string v7, "ShareView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v0, each:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 142
    .local v4, isRepeat:Z
    new-instance v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;-><init>(Lcom/android/gallery3d/ui/ShareView;)V

    .line 143
    .local v3, info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->label:Ljava/lang/String;

    .line 145
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->packageName:Ljava/lang/String;

    .line 146
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->targetActivity:Ljava/lang/String;

    .line 147
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v8, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->targetActivity:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    .line 148
    const-string v7, "ShareView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 150
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 151
    iget-object v8, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->targetActivity:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget-object v7, v7, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 152
    const-string v7, "ShareView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "has repeated element "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v4, 0x1

    .line 158
    .end local v1           #i:I
    :cond_3
    if-nez v4, :cond_2

    .line 159
    iget-object v7, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/gallery3d/ui/ShareView;->mIconSize:I

    iget v9, p0, Lcom/android/gallery3d/ui/ShareView;->mIconSize:I

    invoke-direct {p0, v7, v8, v9}, Lcom/android/gallery3d/ui/ShareView;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 136
    .end local v0           #each:Landroid/content/pm/ResolveInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    .end local v4           #isRepeat:Z
    .end local v5           #pManager:Landroid/content/pm/PackageManager;
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 150
    .restart local v0       #each:Landroid/content/pm/ResolveInfo;
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    .restart local v4       #isRepeat:Z
    .restart local v5       #pManager:Landroid/content/pm/PackageManager;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 165
    .end local v0           #each:Landroid/content/pm/ResolveInfo;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    .end local v4           #isRepeat:Z
    .end local v5           #pManager:Landroid/content/pm/PackageManager;
    :cond_6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lcom/android/gallery3d/ui/ShareView;->isShowing:Z

    return v0
.end method

.method private queryIntentShareApp()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 110
    .local v4, mLaunchedFromUid:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v6, shareApp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 112
    .local v5, pManager:Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    const v8, 0x10040

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 113
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 114
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 115
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 116
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v9, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-static {v7, v4, v8, v9}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    .line 118
    .local v2, granted:I
    if-eqz v2, :cond_0

    .line 120
    const-string v7, "ShareView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove element "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 105
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #granted:I
    .end local v3           #i:I
    .end local v4           #mLaunchedFromUid:I
    .end local v5           #pManager:Landroid/content/pm/PackageManager;
    .end local v6           #shareApp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Landroid/os/RemoteException;
    const/4 v4, -0x1

    .line 107
    .restart local v4       #mLaunchedFromUid:I
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    const/4 v6, 0x0

    .line 125
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    return-object v6
.end method

.method private sortShareAppList()V
    .locals 8

    .prologue
    .line 175
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget v5, v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    .line 179
    .local v5, max:I
    const/4 v3, 0x0

    .line 180
    .local v3, info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    const-string v0, ""

    .line 181
    .local v0, countSort:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_5

    .line 182
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget v5, v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    .line 183
    move v1, v2

    .line 184
    .local v1, currentMaxPosition:I
    add-int/lit8 v4, v2, 0x1

    .local v4, j:I
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 185
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget v6, v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    if-ge v5, v6, :cond_2

    .line 186
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget v5, v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    .line 187
    move v1, v4

    .line 184
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 190
    :cond_3
    if-eq v1, v2, :cond_4

    .line 191
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    check-cast v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    .line 192
    .restart local v3       #info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 194
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    check-cast v3, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    .line 195
    .restart local v3       #info:Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 198
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareView;->mShareAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;

    iget v6, v6, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->mClickCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 201
    .end local v1           #currentMaxPosition:I
    .end local v4           #j:I
    :cond_5
    const-string v6, "ShareView"

    invoke-static {v6, v0}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private declared-synchronized writePreference(Ljava/lang/String;)V
    .locals 5
    .parameter "targetActivity"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, clickedTimes:I
    add-int/lit8 v0, v0, 0x1

    .line 294
    const-string v2, "ShareView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has clicked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/android/gallery3d/ui/ShareView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 296
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 292
    .end local v0           #clickedTimes:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "drawable"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 302
    const-string v2, "ShareView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "icon size: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 304
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 305
    .local v4, height:I
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ShareView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .local v0, oldbmp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 308
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, p2

    int-to-float v6, v3

    div-float v8, v2, v6

    .line 309
    .local v8, sx:F
    int-to-float v2, p3

    int-to-float v6, v4

    div-float v9, v2, v6

    .line 310
    .local v9, sy:F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 311
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 313
    .local v7, newbmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public dismissPopupWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 283
    sput-boolean v1, Lcom/android/gallery3d/ui/ShareView;->isShowing:Z

    .line 285
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, uri:Ljava/lang/String;
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/ui/ShareView;->mShareIntent:Landroid/content/Intent;

    .line 96
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->initShareAppInfoList()V

    goto :goto_0
.end method

.method public show(Landroid/widget/LinearLayout;II)V
    .locals 12
    .parameter "mLayout"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 207
    sget-boolean v7, Lcom/android/gallery3d/ui/ShareView;->isShowing:Z

    if-eqz v7, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ShareView;->dismissPopupWindow()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->getShareAppInfoList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->getShareAppInfoList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->sortShareAppList()V

    .line 213
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->convertList()Ljava/util/List;

    move-result-object v4

    .line 214
    .local v4, shareList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareListView:Lcom/android/gallery3d/ui/GeneralListView;

    invoke-virtual {v7, v4}, Lcom/android/gallery3d/ui/GeneralListView;->initialize(Ljava/util/List;)V

    .line 216
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareListView:Lcom/android/gallery3d/ui/GeneralListView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/GeneralListView;->getListWidthAndHeight()[I

    move-result-object v5

    .line 217
    .local v5, size:[I
    aget v7, v5, v9

    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->getListMinWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/ShareView;->getListMinWidth()I

    move-result v7

    aput v7, v5, v9

    .line 218
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 219
    .local v0, mActionBarHeight:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    .line 220
    .local v1, mBottomMenuHeight:I
    add-int v7, v0, v1

    const/16 v8, 0x9

    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v8

    add-int v6, v7, v8

    .line 221
    .local v6, subHeight:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->getCurrentScreenOrient(Landroid/app/Activity;)I

    move-result v7

    if-nez v7, :cond_3

    .line 222
    iget v7, p0, Lcom/android/gallery3d/ui/ShareView;->mScreenMinValue:I

    sub-int v2, v7, v6

    .line 223
    .local v2, maxHeight:I
    aget v7, v5, v11

    if-le v7, v2, :cond_3

    aput v2, v5, v11

    .line 226
    .end local v2           #maxHeight:I
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isInMultiWndState()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 227
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 228
    .local v3, metric:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 229
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v6

    aput v7, v5, v11

    .line 232
    .end local v3           #metric:Landroid/util/DisplayMetrics;
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez v7, :cond_5

    new-instance v7, Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/gallery3d/ui/ShareView;->mPopView:Landroid/view/View;

    aget v9, v5, v9

    aget v10, v5, v11

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    .line 238
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 239
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 240
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 241
    sput-boolean v11, Lcom/android/gallery3d/ui/ShareView;->isShowing:Z

    .line 243
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/android/gallery3d/ui/ShareView$1;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/ui/ShareView$1;-><init>(Lcom/android/gallery3d/ui/ShareView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareListView:Lcom/android/gallery3d/ui/GeneralListView;

    new-instance v8, Lcom/android/gallery3d/ui/ShareView$2;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/ui/ShareView$2;-><init>(Lcom/android/gallery3d/ui/ShareView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 259
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mShareListView:Lcom/android/gallery3d/ui/GeneralListView;

    new-instance v8, Lcom/android/gallery3d/ui/ShareView$3;

    invoke-direct {v8, p0}, Lcom/android/gallery3d/ui/ShareView$3;-><init>(Lcom/android/gallery3d/ui/ShareView;)V

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    aget v8, v5, v9

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 235
    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareView;->mPopWindow:Landroid/widget/PopupWindow;

    aget v8, v5, v11

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1
.end method
