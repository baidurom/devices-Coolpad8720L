.class Lcom/android/gallery3d/app/PhotoDisplayMap$1;
.super Ljava/lang/Object;
.source "PhotoDisplayMap.java"

# interfaces
.implements Lcom/baidu/mapapi/MKMapViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoDisplayMap;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoDisplayMap;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap$1;->this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapMoveFinish()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap$1;->this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;

    #getter for: Lcom/android/gallery3d/app/PhotoDisplayMap;->iZoom:I
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDisplayMap;->access$000(Lcom/android/gallery3d/app/PhotoDisplayMap;)I

    move-result v1

    sget-object v2, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap$1;->this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;

    sget-object v2, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v2

    #setter for: Lcom/android/gallery3d/app/PhotoDisplayMap;->iZoom:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/PhotoDisplayMap;->access$002(Lcom/android/gallery3d/app/PhotoDisplayMap;I)I

    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap$1;->this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;

    #getter for: Lcom/android/gallery3d/app/PhotoDisplayMap;->overitem:Lcom/android/gallery3d/app/OverItemT;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDisplayMap;->access$100(Lcom/android/gallery3d/app/PhotoDisplayMap;)Lcom/android/gallery3d/app/OverItemT;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap$1;->this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;

    #getter for: Lcom/android/gallery3d/app/PhotoDisplayMap;->overitem:Lcom/android/gallery3d/app/OverItemT;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDisplayMap;->access$100(Lcom/android/gallery3d/app/PhotoDisplayMap;)Lcom/android/gallery3d/app/OverItemT;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/app/OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap$1;->this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    .local v0, marker:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    sget-object v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/OverItemT;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDisplayMap$1;->this$0:Lcom/android/gallery3d/app/PhotoDisplayMap;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/gallery3d/app/OverItemT;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v0           #marker:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method
