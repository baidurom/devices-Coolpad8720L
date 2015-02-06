.class Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/webkit/WebViewClassic$InvokeListBox$Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V
    .locals 3
    .parameter

    .prologue
    .line 8557
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    .line 8558
    iget-object v0, p1, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    #getter for: Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z
    invoke-static {p1}, Landroid/webkit/WebViewClassic$InvokeListBox;->access$7800(Landroid/webkit/WebViewClassic$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1090013

    :goto_0
    #getter for: Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    invoke-static {p1}, Landroid/webkit/WebViewClassic$InvokeListBox;->access$7900(Landroid/webkit/WebViewClassic$InvokeListBox;)[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 8562
    return-void

    .line 8558
    :cond_0
    const v0, 0x10900da

    goto :goto_0
.end method

.method private item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    .locals 1
    .parameter "position"

    .prologue
    .line 8631
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 8632
    :cond_0
    const/4 v0, 0x0

    .line 8634
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 8648
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 8639
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 8640
    .local v0, item:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    if-nez v0, :cond_0

    .line 8641
    const-wide/16 v1, -0x1

    .line 8643
    :goto_0
    return-wide v1

    :cond_0
    iget v1, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mId:I

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x1080012

    const/4 v7, 0x1

    .line 8576
    :try_start_0
    const-string v5, "WebViewClassic"

    const-string v6, "convertView start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8577
    const/4 v5, 0x0

    invoke-super {p0, p1, v5, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 8578
    const-string v5, "WebViewClassic"

    const-string v6, "convertView end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8584
    :goto_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 8585
    .local v0, c:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    if-eqz v0, :cond_4

    iget v5, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-eq v7, v5, :cond_4

    .line 8588
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8589
    .local v4, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8590
    if-lez p1, :cond_0

    .line 8591
    new-instance v2, Landroid/view/View;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8592
    .local v2, dividerTop:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8594
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8597
    .end local v2           #dividerTop:Landroid/view/View;
    :cond_0
    const/4 v5, -0x1

    iget v6, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-ne v5, v6, :cond_3

    .line 8600
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    #getter for: Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z
    invoke-static {v5}, Landroid/webkit/WebViewClassic$InvokeListBox;->access$7800(Landroid/webkit/WebViewClassic$InvokeListBox;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8601
    instance-of v5, p2, Landroid/widget/CheckedTextView;

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v5, p2

    .line 8602
    check-cast v5, Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8610
    :cond_1
    :goto_1
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8611
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_2

    .line 8612
    new-instance v1, Landroid/view/View;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8613
    .local v1, dividerBottom:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8615
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8619
    .end local v1           #dividerBottom:Landroid/view/View;
    .end local v4           #layout:Landroid/widget/LinearLayout;
    :cond_2
    :goto_2
    return-object v4

    .line 8580
    .end local v0           #c:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    :catch_0
    move-exception v3

    .line 8581
    .local v3, ise:Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 8607
    .end local v3           #ise:Ljava/lang/IllegalStateException;
    .restart local v0       #c:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    .restart local v4       #layout:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .end local v4           #layout:Landroid/widget/LinearLayout;
    :cond_4
    move-object v4, p2

    .line 8619
    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 8627
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8653
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 8654
    .local v0, item:Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    if-nez v0, :cond_0

    .line 8657
    :goto_0
    return v2

    :cond_0
    iget v3, v0, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-ne v1, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
