.class Lcom/android/camera/PhotoModule$16;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 6990
    iput-object p1, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6993
    iget-object v0, p0, Lcom/android/camera/PhotoModule$16;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->restorePreferences()V
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$11500(Lcom/android/camera/PhotoModule;)V

    .line 6995
    return-void
.end method
