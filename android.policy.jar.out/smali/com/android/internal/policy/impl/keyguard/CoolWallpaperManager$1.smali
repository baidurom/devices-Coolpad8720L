.class final Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$1;
.super Ljava/lang/Object;
.source "CoolWallpaperManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager;->sortAsTime([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 9
    .parameter "object1"
    .parameter "object2"

    .prologue
    const-wide/16 v7, 0x0

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 136
    .local v2, modifyTime1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 137
    .local v4, modifyTime2:J
    sub-long v0, v2, v4

    .line 138
    .local v0, diff:J
    cmp-long v6, v0, v7

    if-lez v6, :cond_0

    .line 139
    const/4 v6, -0x1

    .line 143
    :goto_0
    return v6

    .line 140
    :cond_0
    cmp-long v6, v0, v7

    if-gez v6, :cond_1

    .line 141
    const/4 v6, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/CoolWallpaperManager$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
