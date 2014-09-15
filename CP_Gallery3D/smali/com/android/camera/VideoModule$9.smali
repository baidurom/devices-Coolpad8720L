.class Lcom/android/camera/VideoModule$9;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3652
    iput-object p1, p0, Lcom/android/camera/VideoModule$9;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3655
    iget-object v0, p0, Lcom/android/camera/VideoModule$9;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->restorePreferences()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$3800(Lcom/android/camera/VideoModule;)V

    .line 3656
    return-void
.end method
