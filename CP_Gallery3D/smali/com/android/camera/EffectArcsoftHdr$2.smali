.class Lcom/android/camera/EffectArcsoftHdr$2;
.super Ljava/lang/Object;
.source "EffectArcsoftHdr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectArcsoftHdr;->onDataPostView([IIILandroid/media/ImageEffectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectArcsoftHdr;

.field final synthetic val$colors:[I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectArcsoftHdr;[III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/EffectArcsoftHdr$2;->this$0:Lcom/android/camera/EffectArcsoftHdr;

    iput-object p2, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$colors:[I

    iput p3, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$width:I

    iput p4, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    const-string v0, "EffectArcsoftHdr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$colors:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/camera/EffectArcsoftHdr$2;->this$0:Lcom/android/camera/EffectArcsoftHdr;

    iget-object v0, v0, Lcom/android/camera/EffectArcsoftHdr;->mAmbilightView:Lcom/android/camera/ui/AmbilightView;

    iget-object v1, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$colors:[I

    iget v2, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$width:I

    iget v3, p0, Lcom/android/camera/EffectArcsoftHdr$2;->val$height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/AmbilightView;->postAmbilightImage([III)V

    .line 146
    return-void
.end method
