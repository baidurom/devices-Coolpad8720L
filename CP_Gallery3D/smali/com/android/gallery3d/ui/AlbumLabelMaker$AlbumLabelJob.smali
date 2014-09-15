.class Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCameraCover:Z

.field private final mCount:Ljava/lang/String;

.field private final mSlotIndex:I

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "slotIndex"
    .parameter "title"
    .parameter "count"
    .parameter "sourceType"
    .parameter "cameraCover"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSlotIndex:I

    .line 148
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 149
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 150
    iput p5, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    .line 151
    iput-boolean p6, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCameraCover:Z

    .line 152
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "jc"

    .prologue
    .line 156
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v14

    .line 158
    .local v14, s:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 159
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, count:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    #calls: Lcom/android/gallery3d/ui/AlbumLabelMaker;->getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$200(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 164
    .local v12, icon:Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$300(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I

    move-result v13

    .line 166
    .local v13, labelWidth:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;
    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 167
    .local v10, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCameraCover:Z

    if-eqz v4, :cond_3

    .line 169
    mul-int/lit8 v13, v13, 0x3

    .line 173
    :goto_1
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v4, v13, :cond_1

    .line 174
    :cond_0
    const/4 v11, 0x0

    .line 175
    .local v11, borders:I
    add-int v4, v13, v11

    iget v5, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v5, v11

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 179
    .end local v11           #borders:I
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 183
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v4

    iget v4, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v10, 0x0

    .line 212
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    :goto_2
    return-object v10

    .line 159
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v7           #count:Ljava/lang/String;
    .end local v12           #icon:Landroid/graphics/Bitmap;
    .end local v13           #labelWidth:I
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    goto :goto_0

    .line 167
    .restart local v7       #count:Ljava/lang/String;
    .restart local v12       #icon:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 171
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v13       #labelWidth:I
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$300(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I

    move-result v13

    goto :goto_1

    .line 188
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :cond_4
    iget v4, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    iget v5, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    add-int v1, v4, v5

    .line 191
    .local v1, x:I
    iget v4, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    iget v5, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 192
    .local v2, y:I
    iget v4, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int v4, v13, v4

    sub-int/2addr v4, v1

    iget v5, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 196
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v10, 0x0

    goto :goto_2

    .line 197
    :cond_5
    iget v4, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    sub-int v1, v13, v4

    .line 198
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCameraCover:Z

    if-eqz v4, :cond_6

    iget v4, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->firstAlbumTitleRightMargin:I

    sub-int v1, v13, v4

    .line 199
    :cond_6
    iget v4, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    iget v5, v14, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 200
    sub-int v8, v13, v1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$600(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v9

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v9}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
