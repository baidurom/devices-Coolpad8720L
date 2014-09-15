.class public Lcom/android/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static sRoot:Lcom/android/gallery3d/data/Path;


# instance fields
.field private mChildren:Lcom/android/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/android/gallery3d/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "segment"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    .line 36
    iput-object p2, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "s"

    .prologue
    .line 101
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, segments:[Ljava/lang/String;
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 104
    .local v0, current:Lcom/android/gallery3d/data/Path;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 105
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    monitor-exit v4

    return-object v0

    .line 108
    .end local v0           #current:Lcom/android/gallery3d/data/Path;
    .end local v1           #i:I
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 128
    .local v4, n:I
    if-nez v4, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    .line 151
    :goto_0
    return-object v5

    .line 129
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 130
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 134
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 138
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 139
    .local v1, c:C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 137
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 140
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 141
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 143
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 144
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 146
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v2, v3, 0x1

    .line 148
    goto :goto_1

    .line 149
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 150
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 158
    .local v4, n:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 159
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 161
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 163
    .local v2, i:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 167
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    .local v1, c:C
    if-ne v1, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    :cond_3
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 170
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 172
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 173
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v2, v3, 0x1

    .line 177
    goto :goto_0

    .line 178
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 179
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 180
    return-object v5
.end method


# virtual methods
.method public getChild(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 65
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 4
    .parameter "segment"

    .prologue
    .line 40
    const-class v3, Lcom/android/gallery3d/data/Path;

    monitor-enter v3

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v2, :cond_1

    .line 42
    new-instance v2, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v2}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 48
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 49
    .local v0, p:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v3

    move-object v1, v0

    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .local v1, p:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 44
    .end local v1           #p:Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 45
    .restart local v0       #p:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    monitor-exit v3

    move-object v1, v0

    .restart local v1       #p:Ljava/lang/Object;
    goto :goto_0

    .line 51
    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .end local v1           #p:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getObject()Lcom/android/gallery3d/data/MediaObject;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaObject;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/android/gallery3d/data/Path;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefixPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    .line 189
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 190
    move-object v0, p0

    .line 191
    .local v0, current:Lcom/android/gallery3d/data/Path;
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 194
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v1, v3, :cond_1

    .line 195
    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 197
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 69
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 112
    const-class v6, Lcom/android/gallery3d/data/Path;

    monitor-enter v6

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, n:I
    move-object v3, p0

    .local v3, p:Lcom/android/gallery3d/data/Path;
    :goto_0
    :try_start_0
    sget-object v5, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_0

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 114
    iget-object v3, v3, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 117
    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    .line 118
    .local v4, segments:[Ljava/lang/String;
    add-int/lit8 v0, v2, -0x1

    .line 119
    .local v0, i:I
    move-object v3, p0

    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_1

    .line 120
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, v3, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 119
    iget-object v3, v3, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 122
    :cond_1
    monitor-exit v6

    return-object v4

    .line 123
    .end local v1           #i:I
    .end local v4           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 85
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, segments:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 88
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 92
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
