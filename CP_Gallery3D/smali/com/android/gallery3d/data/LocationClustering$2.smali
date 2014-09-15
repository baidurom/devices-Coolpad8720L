.class Lcom/android/gallery3d/data/LocationClustering$2;
.super Ljava/lang/Thread;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/LocationClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/LocationClustering;

.field final synthetic val$cluster:Ljava/util/ArrayList;

.field final synthetic val$geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocationClustering;Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering$2;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    iput-object p2, p0, Lcom/android/gallery3d/data/LocationClustering$2;->val$cluster:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/gallery3d/data/LocationClustering$2;->val$geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering$2;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering$2;->val$cluster:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocationClustering$2;->val$geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;

    #calls: Lcom/android/gallery3d/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/data/LocationClustering;->mName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/data/LocationClustering;->access$102(Lcom/android/gallery3d/data/LocationClustering;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    return-void
.end method
