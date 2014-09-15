.class public Lcom/android/gallery3d/util/SwitchFaceDataHolder;
.super Ljava/lang/Object;
.source "SwitchFaceDataHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;,
        Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;
    }
.end annotation


# static fields
.field private static instance:Lcom/android/gallery3d/util/SwitchFaceDataHolder;


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/android/gallery3d/util/SwitchFaceDataHolder;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->instance:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    if-nez v0, :cond_0

    .line 26
    const-class v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    monitor-enter v1

    .line 27
    :try_start_0
    new-instance v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    invoke-direct {v0}, Lcom/android/gallery3d/util/SwitchFaceDataHolder;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->instance:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    sget-object v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->instance:Lcom/android/gallery3d/util/SwitchFaceDataHolder;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDataHolder(I[III)V
    .locals 2
    .parameter "index"
    .parameter "colors"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 57
    new-instance v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;

    invoke-direct {v0}, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;-><init>()V

    .line 58
    .local v0, holder:Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;
    iput p1, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->faceIndex:I

    .line 59
    iput-object p2, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->colors:[I

    .line 60
    iput p3, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->width:I

    .line 61
    iput p4, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->height:I

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public addFaceInfo(IIII[Landroid/graphics/Rect;)V
    .locals 2
    .parameter "index"
    .parameter "orientation"
    .parameter "selected"
    .parameter "number"
    .parameter "rects"

    .prologue
    .line 80
    new-instance v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;

    invoke-direct {v0}, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;-><init>()V

    .line 81
    .local v0, fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    iput p1, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceIndex:I

    .line 82
    iput p2, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->rotateOrientation:I

    .line 83
    iput p3, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->selected:I

    .line 84
    iput p4, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceNum:I

    .line 85
    iput-object p5, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceRects:[Landroid/graphics/Rect;

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    :cond_1
    return-void
.end method

.method public getDataHolderList(I)Ljava/util/ArrayList;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, holderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;>;"
    iget-object v3, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;

    .line 98
    .local v0, holder:Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;
    iget v3, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->faceIndex:I

    if-ne v3, p1, :cond_0

    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0           #holder:Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method public getFaceRects()[Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, faceRects:[Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 149
    iget-object v6, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 150
    .local v5, size:I
    new-array v0, v5, [Landroid/graphics/Rect;

    .line 151
    const/4 v4, 0x0

    .line 152
    .local v4, selected:I
    const/4 v2, 0x0

    .line 153
    .local v2, i:I
    iget-object v6, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;

    .line 154
    .local v1, fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    iget v4, v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->selected:I

    .line 155
    iget-object v6, v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    aput-object v6, v0, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1           #fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #selected:I
    .end local v5           #size:I
    :cond_0
    return-object v0
.end method

.method public getSelectedIndex(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, selectIndex:I
    iget-object v2, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;

    .line 191
    .local v0, fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    iget v1, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->selected:I

    .line 193
    .end local v0           #fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    :cond_0
    return v1
.end method

.method public getThumbNum(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, num:I
    iget-object v2, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;

    .line 123
    .local v0, fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    iget v1, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceNum:I

    .line 125
    .end local v0           #fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    :cond_0
    return v1
.end method

.method public setSelectedIndex(II)V
    .locals 2
    .parameter "index"
    .parameter "selectedIndex"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;

    .line 200
    .local v0, fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    iput p2, v0, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->selected:I

    .line 202
    .end local v0           #fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 217
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v7, sb:Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 220
    const-string v8, "face info:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-object v8, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mFaceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;

    .line 222
    .local v1, fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->rotateOrientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->selected:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v0, v1, Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;->faceRects:[Landroid/graphics/Rect;

    .local v0, arr$:[Landroid/graphics/Rect;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 228
    .local v6, rect:Landroid/graphics/Rect;
    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 233
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_0
    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 236
    .end local v0           #arr$:[Landroid/graphics/Rect;
    .end local v1           #fi:Lcom/android/gallery3d/util/SwitchFaceDataHolder$FaceInfo;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 237
    const-string v8, "data info:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    iget-object v8, p0, Lcom/android/gallery3d/util/SwitchFaceDataHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;

    .line 239
    .local v2, holder:Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;
    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->faceIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->colors:[I

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    iget v8, v2, Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 244
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 247
    .end local v2           #holder:Lcom/android/gallery3d/util/SwitchFaceDataHolder$DataHolder;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
