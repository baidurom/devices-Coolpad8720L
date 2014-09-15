.class public Lcom/android/camera/ListPreference;
.super Lcom/android/camera/CameraPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ListPreference$Listener;
    }
.end annotation


# instance fields
.field private final disableItemIndex1:I

.field private helpFlagKey:Ljava/lang/String;

.field private final mDefaultValues:[Ljava/lang/CharSequence;

.field protected mEntries:[Ljava/lang/CharSequence;

.field protected mEntriesStatue:[Z

.field protected mEntryValues:[Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field mListener:Lcom/android/camera/ListPreference$Listener;

.field private mLoaded:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mbEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v7, p0, Lcom/android/camera/ListPreference;->mbEnabled:Z

    .line 47
    iput-boolean v6, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 50
    const-string v4, "pref_camera_capturemode_help_entries"

    iput-object v4, p0, Lcom/android/camera/ListPreference;->helpFlagKey:Ljava/lang/String;

    .line 319
    iput v6, p0, Lcom/android/camera/ListPreference;->disableItemIndex1:I

    .line 62
    sget-object v4, Lcom/android/gallery3d/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    .line 73
    const/4 v1, 0x2

    .line 74
    .local v1, attrDefaultValue:I
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 75
    .local v3, tv:Landroid/util/TypedValue;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/util/TypedValue;->type:I

    if-ne v4, v7, :cond_1

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 82
    :goto_0
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 83
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/camera/ListPreference;->helpFlagKey:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v6, v6}, Lcom/android/camera/ListPreference;->setHelpFlagValue(IZ)V

    .line 90
    const-string v4, "panorama"

    invoke-virtual {p0, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, disableIndex:I
    invoke-virtual {p0, v2, v6}, Lcom/android/camera/ListPreference;->setHelpFlagValue(IZ)V

    .line 93
    .end local v2           #disableIndex:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-void

    .line 78
    :cond_1
    new-array v4, v7, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 79
    iget-object v4, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    goto :goto_0
.end method

.method private findSupportedDefaultValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 205
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .end local v1           #j:I
    :goto_2
    return-object v2

    .line 205
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v1           #j:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public enableEntryItem(IZ)V
    .locals 3
    .parameter "index"
    .parameter "bEnabled"

    .prologue
    .line 120
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    if-nez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    aput-boolean p2, v1, p1

    goto :goto_0
.end method

.method public enableIntroduction(IZ)V
    .locals 1
    .parameter "index"
    .parameter "bEnabled"

    .prologue
    .line 148
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ListPreference;->setHelpFlagValue(IZ)V

    goto :goto_0
.end method

.method public filterDuplicated()V
    .locals 6

    .prologue
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 290
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 291
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 296
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 297
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 298
    return-void
.end method

.method public filterUnsupported(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 275
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 276
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 282
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 283
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 284
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    .end local v0           #i:I
    :goto_1
    return v0

    .line 240
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItemsHelpFlagValue(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/ListPreference;->helpFlagKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, itemKey:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 328
    :cond_1
    const-string v3, "panorama"

    invoke-virtual {p0, v3}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, disableIndex:I
    if-eq p1, v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/camera/CameraPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 163
    iget-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_capturemode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_secure_box_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    .line 174
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 180
    :goto_1
    return-object v0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/camera/ListPreference;->mbEnabled:Z

    return v0
.end method

.method public isEntryItemEnabled(I)Z
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 133
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method public isIntroductionEnabled(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->getItemsHelpFlagValue(I)Z

    move-result v0

    return v0
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/camera/CameraPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    return-void
.end method

.method public print()V
    .locals 4

    .prologue
    .line 301
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preference key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 303
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entryValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method public reloadValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 263
    iput-object v1, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    .line 264
    iput-object v1, p0, Lcom/android/camera/ListPreference;->mEntriesStatue:[Z

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ListPreference;->mbEnabled:Z

    .line 266
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mListener:Lcom/android/camera/ListPreference$Listener;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mListener:Lcom/android/camera/ListPreference$Listener;

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/ListPreference$Listener;->onReloaded(Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 113
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 116
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public setHelpFlagValue(IZ)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/ListPreference;->helpFlagKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, itemKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/CameraPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/camera/ListPreference;->helpFlagKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 314
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    return-void
.end method

.method public setOverrideListener(Lcom/android/camera/ListPreference$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mListener:Lcom/android/camera/ListPreference$Listener;

    .line 201
    return-void
.end method

.method public setOverrideValue(Ljava/lang/String;Z)V
    .locals 1
    .parameter "overrideValue"
    .parameter "bEnabled"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    .line 193
    iput-boolean p2, p0, Lcom/android/camera/ListPreference;->mbEnabled:Z

    .line 194
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mListener:Lcom/android/camera/ListPreference$Listener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mListener:Lcom/android/camera/ListPreference$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ListPreference$Listener;->onOverrided(Ljava/lang/String;Z)V

    .line 197
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 223
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mListener:Lcom/android/camera/ListPreference$Listener;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mListener:Lcom/android/camera/ListPreference$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ListPreference$Listener;->onValueChange(Ljava/lang/String;)V

    .line 232
    :cond_1
    return-void

    .line 226
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->persistStringValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 236
    return-void
.end method
