.class public Lcom/marvell/fmradio/MultipleListTestActivity;
.super Lcom/yulong/android/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "MultipleListTestActivity"

.field static final bu:I = 0x3

.field static final bv:F = 100.0f

.field static final h:I = 0x6


# instance fields
.field private bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

.field private bx:Lcom/yulong/android/view/list/MultipleChoiceListView$MultiListItemProcessor;

.field private e:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private r:[Ljava/lang/String;

.field private s:[Z

.field private v:Lcom/marvell/fmradio/c/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 45
    invoke-direct {p0}, Lcom/yulong/android/base/BaseActivity;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->mContext:Landroid/content/Context;

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->r:[Ljava/lang/String;

    .line 73
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->s:[Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->e:Ljava/util/List;

    .line 82
    iput-object v2, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    .line 88
    new-instance v0, Lcom/marvell/fmradio/u;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/u;-><init>(Lcom/marvell/fmradio/MultipleListTestActivity;)V

    iput-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bx:Lcom/yulong/android/view/list/MultipleChoiceListView$MultiListItemProcessor;

    .line 344
    return-void
.end method

.method static synthetic a(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/yulong/android/view/list/MultipleChoiceListView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->K()I

    move-result v2

    move v0, v1

    .line 284
    :goto_0
    if-ge v0, v10, :cond_2

    .line 285
    if-nez v2, :cond_0

    .line 286
    iget-object v3, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->s:[Z

    aput-boolean v9, v3, v0

    .line 287
    iget-object v3, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->r:[Ljava/lang/String;

    aput-object v6, v3, v0

    .line 297
    :goto_1
    const-string v3, "MultipleListTestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setData buttonAddeStation ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")==  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->r:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    if-ge v0, v2, :cond_1

    .line 290
    iget-object v3, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->r:[Ljava/lang/String;

    iget-object v4, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v4, v0}, Lcom/marvell/fmradio/c/e;->p(I)Lcom/marvell/fmradio/c/c;

    move-result-object v4

    iget-object v4, v4, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 291
    iget-object v3, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->s:[Z

    aput-boolean v1, v3, v0

    goto :goto_1

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->r:[Ljava/lang/String;

    aput-object v6, v3, v0

    .line 294
    iget-object v3, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->s:[Z

    aput-boolean v9, v3, v0

    goto :goto_1

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0}, Lcom/marvell/fmradio/c/e;->getCount()I

    move-result v3

    .line 303
    const-string v0, "MultipleListTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setData stationCount==  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 305
    :goto_2
    if-ge v2, v3, :cond_6

    .line 306
    new-instance v4, Lcom/marvell/fmradio/ae;

    invoke-direct {v4, p0}, Lcom/marvell/fmradio/ae;-><init>(Lcom/marvell/fmradio/MultipleListTestActivity;)V

    .line 309
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    invoke-virtual {v0, v2}, Lcom/marvell/fmradio/c/e;->o(I)Lcom/marvell/fmradio/c/c;

    move-result-object v0

    .line 310
    iget-object v5, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 311
    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 312
    const-string v6, "MultipleListTestActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setData:frequency=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v6, "MultipleListTestActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setData:name=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v4, v10}, Lcom/marvell/fmradio/ae;->d(I)V

    .line 317
    invoke-virtual {v4, v5}, Lcom/marvell/fmradio/ae;->c(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v4, v0}, Lcom/marvell/fmradio/ae;->d(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    iget v0, v0, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    invoke-virtual {v4, v9}, Lcom/marvell/fmradio/ae;->f(Z)V

    :goto_3
    move v0, v1

    .line 328
    :goto_4
    if-ge v0, v10, :cond_5

    .line 330
    iget-object v6, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->r:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 331
    invoke-virtual {v4, v0}, Lcom/marvell/fmradio/ae;->c(I)V

    .line 332
    invoke-virtual {v4, v9}, Lcom/marvell/fmradio/ae;->e(Z)V

    .line 333
    iget-object v6, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->s:[Z

    aput-boolean v9, v6, v0

    .line 328
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 324
    :cond_4
    invoke-virtual {v4, v1}, Lcom/marvell/fmradio/ae;->f(Z)V

    goto :goto_3

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 339
    :cond_6
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    iget-object v1, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/BaseListView;->setCount(I)V

    .line 340
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/marvell/fmradio/MultipleListTestActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/marvell/fmradio/MultipleListTestActivity;)Lcom/marvell/fmradio/c/e;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    return-object v0
.end method

.method static synthetic e(Lcom/marvell/fmradio/MultipleListTestActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 149
    invoke-super {p0, p1}, Lcom/yulong/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/yulong/android/base/BaseActivity;->setActionBarDisplayHomeAsUpEnabled(Z)V

    .line 151
    iput-object p0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->mContext:Landroid/content/Context;

    .line 153
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/AbsActivity;->setBodyLayout(I)Landroid/view/View;

    .line 155
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/AbsActivity;->setBodyLayoutBackgroundByArgb(I)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/yulong/android/base/BaseActivity;->setWindowBackground(Z)V

    .line 157
    iget-object v0, p0, Lcom/yulong/android/base/AbsActivity;->mBodyView:Landroid/view/View;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/view/list/MultipleChoiceListView;

    iput-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    .line 159
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    invoke-virtual {v0, v3}, Lcom/yulong/android/view/list/BaseListView;->setRound(Z)V

    .line 160
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/MultipleChoiceListView;->setListItemViewResid(I)V

    .line 162
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    invoke-virtual {v0, v2}, Lcom/yulong/android/view/list/BaseListView;->setDoubleClick(Z)V

    .line 166
    invoke-static {}, Lcom/marvell/fmradio/c/e;->I()Lcom/marvell/fmradio/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->v:Lcom/marvell/fmradio/c/e;

    .line 168
    invoke-direct {p0}, Lcom/marvell/fmradio/MultipleListTestActivity;->a()Ljava/util/List;

    .line 170
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    iget-object v1, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/BaseListView;->setCount(I)V

    .line 171
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    invoke-virtual {v0, v2}, Lcom/yulong/android/view/list/BaseListView;->setClickSetBackground(Z)V

    .line 172
    invoke-virtual {p0, v3}, Lcom/yulong/android/base/BaseActivity;->setMenuButtonVisible(Z)V

    .line 173
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    iget-object v1, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bx:Lcom/yulong/android/view/list/MultipleChoiceListView$MultiListItemProcessor;

    invoke-virtual {v0, v1}, Lcom/yulong/android/view/list/MultipleChoiceListView;->setMultiListItemProcessor(Lcom/yulong/android/view/list/MultipleChoiceListView$MultiListItemProcessor;)V

    .line 175
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/BaseActivity;->setButtonCount(I)V

    .line 176
    iget-object v0, p0, Lcom/marvell/fmradio/MultipleListTestActivity;->bw:Lcom/yulong/android/view/list/MultipleChoiceListView;

    invoke-virtual {v0}, Lcom/yulong/android/view/list/MultipleChoiceListView;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/BaseActivity;->setHintBubbleText(I)V

    .line 177
    new-instance v0, Lcom/marvell/fmradio/o;

    invoke-direct {v0, p0}, Lcom/marvell/fmradio/o;-><init>(Lcom/marvell/fmradio/MultipleListTestActivity;)V

    invoke-virtual {p0, v0}, Lcom/yulong/android/base/BaseActivity;->setButtonGroupProcessor(Lcom/yulong/android/controller/ButtonGroupProcessor;)V

    .line 271
    return-void
.end method
