.class Landroid/widget/Editor$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 2929
    iput-object p1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2929
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;
    .locals 10
    .parameter "item"

    .prologue
    const v9, 0x105003a

    const/4 v8, 0x1

    .line 2933
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2934
    .local v2, outValue1:Landroid/util/TypedValue;
    const v4, 0x108037b

    .line 2935
    .local v4, resid:I
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101030e

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 2937
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2940
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2941
    .local v3, outValue2:Landroid/util/TypedValue;
    const/high16 v0, -0x100

    .line 2942
    .local v0, color:I
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010361

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_1

    .line 2945
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 2948
    :cond_1
    new-instance v5, Landroid/widget/TextImage;

    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;)V

    .line 2949
    .local v5, textImg:Landroid/widget/TextImage;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2950
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 2951
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v1, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2954
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2955
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2956
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2958
    const v6, 0x105007c

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setTextSizeResource(I)V

    .line 2959
    invoke-virtual {v5, v0}, Landroid/widget/TextImage;->setTextColor(I)V

    .line 2960
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setGravity(I)V

    .line 2961
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 2962
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setText(Ljava/lang/CharSequence;)V

    .line 2963
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 2964
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 2965
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2966
    new-instance v6, Landroid/widget/Editor$SelectionActionModeCallback$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback$1;-><init>(Landroid/widget/Editor$SelectionActionModeCallback;Landroid/view/MenuItem;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2973
    return-object v5
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 3135
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3137
    const/4 v0, 0x1

    .line 3139
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 23
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 2982
    .local v16, styledAttributes:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1110040

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2985
    .local v5, allowText:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x10403e6

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 2987
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2988
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 2990
    const/4 v15, 0x0

    .line 2991
    .local v15, selectAllIconId:I
    if-nez v5, :cond_0

    .line 2993
    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 3008
    :cond_0
    const/16 v18, 0x0

    .line 3009
    .local v18, ylActionModeCustomViewEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string/jumbo v20, "ylActionModeCustomViewEnabled"

    const-string v21, "attr"

    const-string v22, "android"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3011
    .local v6, configId:I
    if-lez v6, :cond_1

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v6, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 3014
    .local v17, ta:Landroid/content/res/TypedArray;
    if-eqz v17, :cond_1

    .line 3015
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 3022
    .end local v17           #ta:Landroid/content/res/TypedArray;
    :cond_1
    if-eqz v18, :cond_5

    .line 3023
    const/16 v19, 0x0

    const v20, 0x102001f

    const/16 v21, 0x0

    const v22, 0x104000d

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    .line 3024
    .local v14, mSelectAllItem:Landroid/view/MenuItem;
    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x61

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3030
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v13

    .line 3031
    .local v13, mSelectAllActionView:Landroid/widget/TextImage;
    invoke-interface {v14, v13}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3040
    .end local v13           #mSelectAllActionView:Landroid/widget/TextImage;
    .end local v14           #mSelectAllItem:Landroid/view/MenuItem;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->canCut()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 3042
    if-eqz v18, :cond_6

    .line 3043
    const/16 v19, 0x0

    const v20, 0x1020020

    const/16 v21, 0x0

    const v22, 0x1040003

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    .line 3044
    .local v10, mCutItem:Landroid/view/MenuItem;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x78

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3050
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v9

    .line 3051
    .local v9, mCutActionView:Landroid/widget/TextImage;
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3062
    .end local v9           #mCutActionView:Landroid/widget/TextImage;
    .end local v10           #mCutItem:Landroid/view/MenuItem;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->canCopy()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 3064
    if-eqz v18, :cond_7

    .line 3065
    const/16 v19, 0x0

    const v20, 0x1020021

    const/16 v21, 0x0

    const v22, 0x1040001

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 3066
    .local v8, mCopyItem:Landroid/view/MenuItem;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x63

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3072
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v7

    .line 3073
    .local v7, mCopyActionView:Landroid/widget/TextImage;
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3084
    .end local v7           #mCopyActionView:Landroid/widget/TextImage;
    .end local v8           #mCopyItem:Landroid/view/MenuItem;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->canPaste()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 3086
    if-eqz v18, :cond_8

    .line 3087
    const/16 v19, 0x0

    const v20, 0x1020022

    const/16 v21, 0x0

    const v22, 0x104000b

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v12

    .line 3088
    .local v12, mPasteItem:Landroid/view/MenuItem;
    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x76

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3094
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v11

    .line 3095
    .local v11, mPasteActionView:Landroid/widget/TextImage;
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3107
    .end local v11           #mPasteActionView:Landroid/widget/TextImage;
    .end local v12           #mPasteItem:Landroid/view/MenuItem;
    :cond_4
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 3110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 3112
    const/16 v19, 0x0

    .line 3121
    :goto_4
    return v19

    .line 3033
    :cond_5
    const/16 v19, 0x0

    const v20, 0x102001f

    const/16 v21, 0x0

    const v22, 0x104000d

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x61

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 3053
    :cond_6
    const/16 v19, 0x0

    const v20, 0x1020020

    const/16 v21, 0x0

    const v22, 0x1040003

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x78

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 3075
    :cond_7
    const/16 v19, 0x0

    const v20, 0x1020021

    const/16 v21, 0x0

    const v22, 0x1040001

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x63

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    .line 3097
    :cond_8
    const/16 v19, 0x0

    const v20, 0x1020022

    const/16 v21, 0x0

    const v22, 0x104000b

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x76

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v19

    const/16 v20, 0x6

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    .line 3116
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v19

    if-nez v19, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 3117
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 3118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setHasTransientState(Z)V

    .line 3119
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 3121
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3144
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3145
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3153
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_1

    .line 3154
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3156
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 3159
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    .line 3160
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3163
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 3164
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 3127
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 3130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
