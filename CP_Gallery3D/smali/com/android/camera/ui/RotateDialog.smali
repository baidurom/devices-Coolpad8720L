.class public Lcom/android/camera/ui/RotateDialog;
.super Landroid/app/Dialog;
.source "RotateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/Window$Callback;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field activity:Landroid/app/Activity;

.field entries:[Ljava/lang/CharSequence;

.field private index:I

.field inflater:Landroid/view/LayoutInflater;

.field protected mCancelable:Z

.field private mCanceled:Z

.field mCheckedBox:Landroid/widget/CheckBox;

.field private mPref:Lcom/android/camera/IconListPreference;

.field private mShowing:Z

.field messageTextView:Landroid/widget/TextView;

.field private noMoreDisplay:Z

.field okButton:Landroid/widget/Button;

.field title:Landroid/widget/TextView;

.field private v:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateDialog;->mCancelable:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateDialog;->mShowing:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateDialog;->mCanceled:Z

    .line 82
    return-void
.end method

.method private setChecked(Lcom/android/camera/IconListPreference;IZ)V
    .locals 1
    .parameter "mPref"
    .parameter "index"
    .parameter "isChecked"

    .prologue
    .line 294
    iput-boolean p3, p0, Lcom/android/camera/ui/RotateDialog;->noMoreDisplay:Z

    .line 295
    if-eqz p3, :cond_0

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ListPreference;->enableIntroduction(IZ)V

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ListPreference;->enableIntroduction(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public createMessage(IIZ)V
    .locals 7
    .parameter "index"
    .parameter "orientation"
    .parameter "mbLandscape"

    .prologue
    const v6, 0x7f04002e

    const/16 v5, 0x10e

    const/16 v4, 0xb4

    const/16 v2, 0x5a

    const/4 v3, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 105
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p3, :cond_5

    .line 106
    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_3

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04002f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    .line 142
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    const v2, 0x7f10001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->title:Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    const v2, 0x7f10001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->messageTextView:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    const v2, 0x7f10009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->mCheckedBox:Landroid/widget/CheckBox;

    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    const v2, 0x7f10009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->okButton:Landroid/widget/Button;

    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->mCheckedBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->okButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->entries:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->entries:[Ljava/lang/CharSequence;

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/RotateDialog;->entries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iput p1, p0, Lcom/android/camera/ui/RotateDialog;->index:I

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/RotateDialog;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2, p1}, Lcom/android/camera/IconListPreference;->getHelpBody(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 166
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 167
    return-void

    .line 114
    :cond_3
    if-eq p2, v2, :cond_4

    if-ne p2, v5, :cond_1

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    goto/16 :goto_0

    .line 124
    :cond_5
    if-eqz p2, :cond_6

    if-ne p2, v4, :cond_7

    .line 125
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    goto/16 :goto_0

    .line 132
    :cond_7
    if-eq p2, v2, :cond_8

    if-ne p2, v5, :cond_1

    .line 134
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/RotateDialog;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04002f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/ui/RotateDialog;->v:Lcom/android/camera/ui/RotateLayout;

    goto/16 :goto_0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 284
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 278
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 318
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 319
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/RotateDialog;->mPref:Lcom/android/camera/IconListPreference;

    iget v1, p0, Lcom/android/camera/ui/RotateDialog;->index:I

    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/ui/RotateDialog;->setChecked(Lcom/android/camera/IconListPreference;IZ)V

    .line 310
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Lcom/android/camera/IconListPreference;)V
    .locals 1
    .parameter "activity"
    .parameter "pref"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/ui/RotateDialog;->activity:Landroid/app/Activity;

    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/RotateDialog;->inflater:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Lcom/android/camera/ui/RotateDialog;->mPref:Lcom/android/camera/IconListPreference;

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/RotateDialog;->mPref:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/RotateDialog;->mPref:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/RotateDialog;->entries:[Ljava/lang/CharSequence;

    .line 100
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 260
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 326
    if-eqz p1, :cond_0

    .line 328
    const/4 p1, 0x0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter "attrs"

    .prologue
    .line 248
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method
