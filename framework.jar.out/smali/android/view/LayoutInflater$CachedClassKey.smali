.class Landroid/view/LayoutInflater$CachedClassKey;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedClassKey"
.end annotation


# instance fields
.field private mLoader:Ljava/lang/ClassLoader;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "name"
    .parameter "loader"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/view/LayoutInflater$CachedClassKey;->mName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Landroid/view/LayoutInflater$CachedClassKey;->mLoader:Ljava/lang/ClassLoader;

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, isLoaderMatch:Z
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/view/LayoutInflater$CachedClassKey;

    if-nez v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 100
    check-cast v0, Landroid/view/LayoutInflater$CachedClassKey;

    .line 102
    .local v0, classKey:Landroid/view/LayoutInflater$CachedClassKey;
    iget-object v3, p0, Landroid/view/LayoutInflater$CachedClassKey;->mName:Ljava/lang/String;

    iget-object v4, v0, Landroid/view/LayoutInflater$CachedClassKey;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/LayoutInflater$CachedClassKey;->mLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/LayoutInflater$CachedClassKey;->mLoader:Ljava/lang/ClassLoader;

    iget-object v4, v0, Landroid/view/LayoutInflater$CachedClassKey;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/LayoutInflater$CachedClassKey;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/LayoutInflater$CachedClassKey;->mLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
