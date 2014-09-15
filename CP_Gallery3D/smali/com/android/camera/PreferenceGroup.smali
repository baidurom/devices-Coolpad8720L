.class public Lcom/android/camera/PreferenceGroup;
.super Lcom/android/camera/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupType:Ljava/lang/String;

.field private mInvibibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v2, p0, Lcom/android/camera/PreferenceGroup;->mInvibibleCount:I

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PreferenceGroup;->mGroupType:Ljava/lang/String;

    .line 39
    sget-object v1, Lcom/android/gallery3d/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PreferenceGroup;->mGroupType:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/camera/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-boolean v0, p1, Lcom/android/camera/CameraPreference;->bVisible:Z

    if-nez v0, :cond_0

    .line 47
    iget v0, p0, Lcom/android/camera/PreferenceGroup;->mInvibibleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/PreferenceGroup;->mInvibibleCount:I

    .line 48
    :cond_0
    return-void
.end method

.method public findIndexOfPreference(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraPreference;

    .line 104
    .local v2, pref:Lcom/android/camera/CameraPreference;
    instance-of v3, v2, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 105
    check-cast v1, Lcom/android/camera/ListPreference;

    .line 106
    .local v1, listPref:Lcom/android/camera/ListPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    .end local v0           #i:I
    .end local v1           #listPref:Lcom/android/camera/ListPreference;
    .end local v2           #pref:Lcom/android/camera/CameraPreference;
    :cond_0
    :goto_1
    return v0

    .line 102
    .restart local v0       #i:I
    .restart local v2       #pref:Lcom/android/camera/CameraPreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v2           #pref:Lcom/android/camera/CameraPreference;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 110
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraPreference;

    .line 86
    .local v2, pref:Lcom/android/camera/CameraPreference;
    instance-of v3, v2, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 87
    check-cast v1, Lcom/android/camera/ListPreference;

    .line 88
    .local v1, listPref:Lcom/android/camera/ListPreference;
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    .end local v1           #listPref:Lcom/android/camera/ListPreference;
    .end local v2           #pref:Lcom/android/camera/CameraPreference;
    :goto_0
    return-object v1

    .line 89
    .restart local v2       #pref:Lcom/android/camera/CameraPreference;
    :cond_1
    instance-of v3, v2, Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 90
    check-cast v2, Lcom/android/camera/PreferenceGroup;

    .end local v2           #pref:Lcom/android/camera/CameraPreference;
    invoke-virtual {v2, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 92
    .restart local v1       #listPref:Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 95
    .end local v1           #listPref:Lcom/android/camera/ListPreference;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/android/camera/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 58
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraPreference;

    goto :goto_0
.end method

.method public getInvisibleCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/PreferenceGroup;->mInvibibleCount:I

    return v0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraPreference;

    .line 73
    .local v1, pref:Lcom/android/camera/CameraPreference;
    invoke-virtual {v1}, Lcom/android/camera/CameraPreference;->reloadValue()V

    goto :goto_0

    .line 75
    .end local v1           #pref:Lcom/android/camera/CameraPreference;
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraPreference;

    .line 52
    .local v0, pre:Lcom/android/camera/CameraPreference;
    iget-boolean v1, v0, Lcom/android/camera/CameraPreference;->bVisible:Z

    if-nez v1, :cond_0

    .line 53
    iget v1, p0, Lcom/android/camera/PreferenceGroup;->mInvibibleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/PreferenceGroup;->mInvibibleCount:I

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
