.class Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "BasicSettingGridView.java"

# interfaces
.implements Lcom/android/camera/ListPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BasicSettingGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicGridViewAdapter"
.end annotation


# instance fields
.field displayIndex:[I

.field entries:[Ljava/lang/CharSequence;

.field private listener:Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;

.field private mContext:Landroid/content/Context;

.field mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

.field private volatile mPref:Lcom/android/camera/IconListPreference;

.field resIds:[I

.field final synthetic this$0:Lcom/android/camera/ui/BasicSettingGridView;

.field private totalitemsCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/BasicSettingGridView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mContext:Landroid/content/Context;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    .line 343
    new-instance v0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter$1;-><init>(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;)V

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->listener:Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;

    .line 227
    iput-object p2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->cleanFocusedState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;)Lcom/android/camera/IconListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    return-object v0
.end method

.method private cleanFocusedState()V
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    if-eqz v1, :cond_1

    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    if-ge v0, v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceEffectImageView;->getFocusedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FaceEffectImageView;->setFocused(Z)V

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private createEffectViews()V
    .locals 4

    .prologue
    .line 284
    iget v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    new-array v1, v1, [Lcom/android/camera/ui/FaceEffectImageView;

    iput-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    .line 285
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    new-instance v2, Lcom/android/camera/ui/FaceEffectImageView;

    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/camera/ui/FaceEffectImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->initItemSelected()V

    .line 290
    return-void
.end method

.method private updateEffectViews()V
    .locals 6

    .prologue
    .line 293
    iget v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 294
    iget v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    new-array v3, v3, [Lcom/android/camera/ui/FaceEffectImageView;

    iput-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    .line 297
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    if-ge v1, v3, :cond_4

    .line 299
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    array-length v3, v3

    if-gt v1, v3, :cond_3

    .line 300
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    new-instance v4, Lcom/android/camera/ui/FaceEffectImageView;

    iget-object v5, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/camera/ui/FaceEffectImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 304
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 305
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v2

    .line 306
    .local v2, resIds:[I
    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    aget v3, v2, v1

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v3, v3, v1

    aget v4, v2, v1

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/FaceEffectImageView;->setResource(ILjava/lang/String;)V

    .line 309
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->listener:Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceEffectImageView;->setOnFaceEffectListener(Lcom/android/camera/ui/FaceEffectImageView$OnFaceEffectListener;)V

    .line 297
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v2           #resIds:[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v4}, Lcom/android/camera/ui/BasicSettingGridView;->access$100(Lcom/android/camera/ui/BasicSettingGridView;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceEffectImageView;->setFocused(Z)V

    .line 315
    return-void
.end method


# virtual methods
.method public getAllChild()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    return-object v0
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 246
    const-string v2, "BasicSettingGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapter pref at getCount():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, i:I
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, v0}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->displayIndex:[I

    aput v0, v2, v1

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 269
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->displayIndex:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public initItemSelected()V
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, initposition:I
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;
    invoke-static {v1}, Lcom/android/camera/ui/BasicSettingGridView;->access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;
    invoke-static {v1}, Lcom/android/camera/ui/BasicSettingGridView;->access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 335
    :cond_0
    if-ltz v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #setter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v1, v0}, Lcom/android/camera/ui/BasicSettingGridView;->access$102(Lcom/android/camera/ui/BasicSettingGridView;I)I

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v1, v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$102(Lcom/android/camera/ui/BasicSettingGridView;I)I

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;
    invoke-static {v0}, Lcom/android/camera/ui/BasicSettingGridView;->access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ListPreference;->isEntryItemEnabled(I)Z

    move-result v0

    return v0
.end method

.method public onOverrided(Ljava/lang/String;Z)V
    .locals 3
    .parameter "overrideValue"
    .parameter "bEnable"

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, index:I
    if-eqz p1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 402
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$100(Lcom/android/camera/ui/BasicSettingGridView;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FaceEffectImageView;->setFocused(Z)V

    .line 409
    if-gez v0, :cond_2

    .line 421
    .end local v0           #index:I
    :cond_0
    :goto_1
    return-void

    .line 395
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FaceEffectImageView;->setFocused(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #setter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v1, v0}, Lcom/android/camera/ui/BasicSettingGridView;->access$102(Lcom/android/camera/ui/BasicSettingGridView;I)I

    .line 416
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;
    invoke-static {v1}, Lcom/android/camera/ui/BasicSettingGridView;->access$800(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;
    invoke-static {v1}, Lcom/android/camera/ui/BasicSettingGridView;->access$800(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/MyTextPreferenceButton;->onOverrided(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onReloaded(Ljava/lang/String;)V
    .locals 3
    .parameter "newValue"

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, index:I
    if-eqz p1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$100(Lcom/android/camera/ui/BasicSettingGridView;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FaceEffectImageView;->setFocused(Z)V

    .line 437
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FaceEffectImageView;->setFocused(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #setter for: Lcom/android/camera/ui/BasicSettingGridView;->overridePosition:I
    invoke-static {v1, v0}, Lcom/android/camera/ui/BasicSettingGridView;->access$102(Lcom/android/camera/ui/BasicSettingGridView;I)I

    .line 439
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;
    invoke-static {v1}, Lcom/android/camera/ui/BasicSettingGridView;->access$800(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mOwnedBtn:Lcom/android/camera/ui/MyTextPreferenceButton;
    invoke-static {v1}, Lcom/android/camera/ui/BasicSettingGridView;->access$800(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/MyTextPreferenceButton;->onReloaded(Ljava/lang/String;)V

    .line 443
    .end local v0           #index:I
    :cond_0
    return-void

    .line 433
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->this$0:Lcom/android/camera/ui/BasicSettingGridView;

    #getter for: Lcom/android/camera/ui/BasicSettingGridView;->mPreference:Lcom/android/camera/IconListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/BasicSettingGridView;->access$000(Lcom/android/camera/ui/BasicSettingGridView;)Lcom/android/camera/IconListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onValueChange(Ljava/lang/String;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 449
    return-void
.end method

.method public refreshPreference(Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p0}, Lcom/android/camera/ListPreference;->setOverrideListener(Lcom/android/camera/ListPreference$Listener;)V

    .line 209
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->entries:[Ljava/lang/CharSequence;

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->resIds:[I

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    .line 216
    iget v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->totalitemsCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->displayIndex:[I

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->mEffectViews:[Lcom/android/camera/ui/FaceEffectImageView;

    if-nez v0, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->createEffectViews()V

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/BasicSettingGridView$BasicGridViewAdapter;->updateEffectViews()V

    .line 224
    return-void
.end method
