.class final Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;
.super Ljava/lang/Thread;
.source "KeyguardImageAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 139
    const-string v4, "KeyguardImageTransitionView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---------isRunWorkThread-------="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$200()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;

    .line 143
    .local v2, itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    if-nez v2, :cond_1

    .line 144
    const-string v4, "KeyguardImageTransitionView"

    const-string v5, "mWorkThread itemInfo = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v2           #itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    :cond_0
    return-void

    .line 147
    .restart local v2       #itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    :cond_1
    iget-object v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;->path:Ljava/lang/String;

    .line 148
    .local v3, path:Ljava/lang/String;
    iget-object v1, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;->imageView:Landroid/widget/ImageView;

    .line 149
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 150
    const-string v4, "KeyguardImageTransitionView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWorkThread path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$400(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->bitmap:Landroid/graphics/Bitmap;

    .line 156
    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 157
    const-string v4, "KeyguardImageTransitionView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWorkThread bitmap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$500()Landroid/util/LruCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_2
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$2;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #imageView:Landroid/widget/ImageView;
    .restart local v2       #itemInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$ItemInfo;
    .restart local v3       #path:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "KeyguardImageTransitionView"

    const-string v5, "mWorkThread path = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    :cond_3
    const-string v4, "KeyguardImageTransitionView"

    const-string v5, "mWorkThread bitmap = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
