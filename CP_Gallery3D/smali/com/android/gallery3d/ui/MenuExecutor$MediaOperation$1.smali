.class Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation$1;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation$1;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation$1;->this$1:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->loginSecureBox()V

    .line 1069
    return-void
.end method
