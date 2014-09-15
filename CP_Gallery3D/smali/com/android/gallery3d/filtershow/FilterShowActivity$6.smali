.class Lcom/android/gallery3d/filtershow/FilterShowActivity$6;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #calls: Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 924
    return-void
.end method
