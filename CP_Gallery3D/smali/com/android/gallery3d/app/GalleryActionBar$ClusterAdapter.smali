.class Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryActionBar;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/GalleryActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 138
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f04

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 152
    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, view:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    .line 154
    .local v0, ClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->isVideo:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->access$300(Lcom/android/gallery3d/app/GalleryActionBar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$400()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    .line 157
    :cond_1
    aget-object v2, v0, p1

    iget v2, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->spinnerTitle:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 158
    return-object p2
.end method
