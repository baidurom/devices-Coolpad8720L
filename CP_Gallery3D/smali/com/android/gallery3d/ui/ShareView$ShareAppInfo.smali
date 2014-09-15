.class public Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;
.super Ljava/lang/Object;
.source "ShareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/ShareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareAppInfo"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/String;

.field mClickCount:I

.field packageName:Ljava/lang/String;

.field targetActivity:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/ShareView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/ShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/gallery3d/ui/ShareView$ShareAppInfo;->this$0:Lcom/android/gallery3d/ui/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
