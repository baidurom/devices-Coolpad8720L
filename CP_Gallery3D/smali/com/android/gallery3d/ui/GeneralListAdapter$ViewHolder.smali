.class public Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GeneralListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GeneralListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/gallery3d/ui/GeneralListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GeneralListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/ui/GeneralListAdapter$ViewHolder;->this$0:Lcom/android/gallery3d/ui/GeneralListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
